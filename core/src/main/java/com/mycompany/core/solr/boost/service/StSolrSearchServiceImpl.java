package com.mycompany.core.solr.boost.service;

import java.util.ArrayList;
import java.util.Date;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

import javax.annotation.Resource;

import org.apache.commons.collections.CollectionUtils;
import org.apache.solr.common.SolrDocument;
import org.broadleafcommerce.common.media.domain.Media;
import org.broadleafcommerce.common.money.Money;
import org.broadleafcommerce.core.catalog.domain.Category;
import org.broadleafcommerce.core.catalog.domain.Product;
import org.broadleafcommerce.core.catalog.service.CatalogService;
import org.broadleafcommerce.core.search.service.solr.SolrSearchServiceImpl;

import com.mycompany.core.solr.boost.dao.SolrBoostDao;
import com.mycompany.core.solr.boost.domain.SolrBoostFieldValue;
import com.mycompany.core.solr.domain.MediaHelper;
import com.mycompany.core.solr.domain.MediaHelperImpl;
import com.mycompany.core.solr.domain.ProductHelper;
import com.mycompany.core.solr.domain.ProductHelperImpl;
import com.mycompany.core.solr.domain.SkuHelper;
import com.mycompany.core.solr.domain.SkuHelperImpl;


public class StSolrSearchServiceImpl extends SolrSearchServiceImpl implements StSolrSearchService {

	@Resource(name = "solrBoostDao")
	private SolrBoostDao dao;

	@Resource(name = "blCatalogService")
	private CatalogService catalogServiceImpl;

	
	float maxScore = 0;
	float minScore = 0;

	@Override
	protected List<Product> getProducts(List<SolrDocument> responseDocuments) {
		List<Product> stProducts = new ArrayList<>();
		List<SolrBoostFieldValue> boosts = dao.getAllBoosts();
		List<Product> products = new ArrayList<>();



		 List<Product> helpers = new ArrayList<>();
		 for (SolrDocument doc : responseDocuments) {
				 ProductHelper ph = new ProductHelperImpl();
				 SkuHelper sh = new SkuHelperImpl();
				
				 double salePriceDouble = (double) doc.getFieldValue("salePrice_p");
				 double retailPriceDouble = (double) doc.getFieldValue("price_p");
				 sh.setSalePrice(new Money(salePriceDouble));
				 sh.setRetailPrice(new Money(retailPriceDouble));
				 
				 float score = (float) doc.getFieldValue("score");
				 
				 if(score > maxScore)
					 maxScore = score;

				 if(score > 0.1)
					 ph.setBoosted(true);
				 
				 ph.setDefaultSku(sh);
				 String mediaFeldValue = (String) doc.getFieldValue("image_t");
				 MediaHelper mediaHelper = new MediaHelperImpl();
				 mediaHelper.setUrl(mediaFeldValue);
				 Map<String , Media> mediaMap = new HashMap<>();
				 mediaMap.put("primary", mediaHelper);
				 ph.setMedia(mediaMap);
				 ph.setId((Long) doc.getFieldValue(shs.getIndexableIdFieldName()));
				 ph.setName((String) doc.getFieldValue("en_name_t"));
				 ph.setLongDescription((String) doc.getFieldValue("fr_ldesc_t"));
				 ph.setUrl((String) doc.getFieldValue("url_t"));
				 helpers.add(ph);
		 }

		List<Product> pProducts = helpers;

		if (CollectionUtils.isNotEmpty(pProducts)) {
			for (Product p : pProducts) {
				if (products.indexOf(p) == -1) {
					stProducts.add(p);
				}
			}
		}

		return stProducts;
	}

}
