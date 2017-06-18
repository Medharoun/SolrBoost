package com.mycompany.core.solr.boost.service;

import javax.annotation.Resource;

import org.apache.solr.client.solrj.SolrQuery;
import org.broadleafcommerce.core.search.service.solr.SolrSearchServiceExtensionManager;
import org.springframework.stereotype.Service;

import com.mycompany.core.solr.boost.domain.BoostProduct;

@Service("StBoostProductService")
public class StBoostProductService {

	@Resource(name = "blSolrSearchServiceExtensionManager")
    protected SolrSearchServiceExtensionManager extensionManager;
	
	 public SolrQuery SolrBoostSearchforProduct (SolrQuery solrQuery, BoostProduct boostProduct , String boosted ){
		 
		 
		 solrQuery.add("bq","productId:"+boostProduct.getProduct().getId()+"^"+boostProduct.getAmount());
		 
//		 result.add(boostProduct.getProduct().getId());
//		 boosted+=boostProduct.getProduct().getId()+" OR ";
//		 return boosted;
		 return solrQuery;
	}
}
