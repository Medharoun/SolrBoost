package com.mycompany.core.solr.boost.service;

import java.util.ArrayList;
import java.util.Date;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

import javax.annotation.Resource;

import org.apache.commons.collections.CollectionUtils;
import org.apache.solr.common.SolrDocument;
import org.broadleafcommerce.common.exception.ServiceException;
import org.broadleafcommerce.common.media.domain.Media;
import org.broadleafcommerce.common.money.Money;
import org.broadleafcommerce.core.catalog.domain.Category;
import org.broadleafcommerce.core.catalog.domain.Product;
import org.broadleafcommerce.core.catalog.service.CatalogService;
import org.broadleafcommerce.core.search.domain.SearchCriteria;
import org.broadleafcommerce.core.search.domain.SearchResult;
import org.broadleafcommerce.core.search.service.solr.SolrSearchServiceImpl;
import org.springframework.stereotype.Service;

import com.mycompany.core.solr.boost.dao.SolrBoostDao;
import com.mycompany.core.solr.boost.domain.BoostProduct;
import com.mycompany.core.solr.boost.domain.SolrBoostFieldValue;
import com.mycompany.core.solr.boost.domain.StProduct;
import com.mycompany.core.solr.domain.MediaHelper;
import com.mycompany.core.solr.domain.MediaHelperImpl;
import com.mycompany.core.solr.domain.ProductHelper;
import com.mycompany.core.solr.domain.ProductHelperImpl;
import com.mycompany.core.solr.domain.SkuHelper;
import com.mycompany.core.solr.domain.SkuHelperImpl;

@Service("StSolrSearchServiceImpl")
public class StSolrSearchServiceImpl extends SolrSearchServiceImpl implements StSolrSearchService {

	@Resource(name = "solrBoostDao")
	private SolrBoostDao dao;

	@Resource(name = "blCatalogService")
	private CatalogService catalogServiceImpl;

	private Category category;
	private String query;

	@Override
	protected List<Product> getProducts(List<SolrDocument> responseDocuments) {
		List<Product> stProducts = new ArrayList<>();
		List<SolrBoostFieldValue> boosts = dao.getAllBoosts();
		List<Product> products = new ArrayList<>();
		List<Long> productsId = new ArrayList<>();
		List<String> categories = new ArrayList<>();
		Date d = new Date();
		
		boolean test = false;
		for (SolrBoostFieldValue value : boosts) {
			if (value instanceof BoostProduct) {
				StProduct product = (StProduct) ((BoostProduct) value).getProduct();
				String cat = product.getCategory().getDescription();
				if (product.getAllParentCategories().size() > 1) {
					for (Category category : product.getAllParentCategories()) {
						categories.add(category.getDescription());
					}
				}

				String p = (product.getName() + " " + product.getLongDescription()).toLowerCase();
				
				if (d.before(value.getEndDate())&&(d.after(value.getStartDate())&&value.isActivated()==true)){
				if (query != null) {
					if (p.indexOf(query.toLowerCase()) != -1) {
						product.setBoosted(true);
						stProducts.add(product);
					}
				} else {
					if ((product.getCategory().equals(category))
							|| ((categories.indexOf(product.getCategory().getDescription()) != -1)
									&& categories.indexOf(category.getDescription()) != -1)
							|| (category.getId() == 2001)) {
						product.setBoosted(true);
						stProducts.add(product);
					}
				}
			}
			}
		}

		 List<Product> helpers = new ArrayList<>();
		 for (SolrDocument doc : responseDocuments) {
		 ProductHelper ph = new ProductHelperImpl();
		 SkuHelper sh = new SkuHelperImpl();
		
		 double salePriceDouble = (double) doc.getFieldValue("salePrice_p");
		 double retailPriceDouble = (double) doc.getFieldValue("price_p");
		 sh.setSalePrice(new Money(salePriceDouble));
		 sh.setRetailPrice(new Money(retailPriceDouble));
		 
		 
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

		List<Product> pProducts = super.getProducts(responseDocuments);

		if (CollectionUtils.isNotEmpty(pProducts)) {
			for (Product p : pProducts) {
				if (products.indexOf(p) == -1) {
					stProducts.add(p);
				}
			}
		}

		return stProducts;
	}

	@Override
	public SearchResult findSearchResults(SearchCriteria searchCriteria) throws ServiceException {
		category = searchCriteria.getCategory();
		query = searchCriteria.getQuery();
		return super.findSearchResults(searchCriteria);
	}

}
