package com.mycompany.core.solr.boost.service;

import java.util.ArrayList;
import java.util.List;

import javax.annotation.Resource;

import org.apache.solr.common.SolrDocument;
import org.broadleafcommerce.core.catalog.domain.Product;
import org.broadleafcommerce.core.search.service.solr.SolrSearchServiceImpl;

import com.mycompany.core.solr.boost.dao.SolrBoostDao;
import com.mycompany.core.solr.boost.domain.BoostProduct;
import com.mycompany.core.solr.boost.domain.SolrBoostFieldValue;
import com.mycompany.core.solr.boost.domain.StProduct;

public class StSolrSearchServiceImpl extends SolrSearchServiceImpl implements StSolrSearchService{
	
	@Resource(name = "solrBoostDao")
	private SolrBoostDao dao;
	
	
	@Override
	protected List<Product> getProducts(List<SolrDocument> responseDocuments) {
		
		List<SolrBoostFieldValue> boosts = dao.getAllBoosts();
		List<Product> products = new ArrayList<Product>();
		
		for (SolrBoostFieldValue value : boosts){
			if (value instanceof BoostProduct){
				StProduct product = (StProduct) ((BoostProduct)value).getProduct();
				product.setBoosted(true);
				products.add(product);
			}
		}
		
		for (Product p : products){
			
		}
		//products.addAll(super.getProducts(responseDocuments));
		for (Product p : super.getProducts(responseDocuments)){
			if (products.indexOf(p)==-1){
				products.add(p);
			}
		}
		return products;
	}
}
