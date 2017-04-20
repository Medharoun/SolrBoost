package com.mycompany.core.solr.boost.service;

import java.util.List;

import javax.annotation.Resource;

import org.apache.solr.client.solrj.SolrQuery;
import org.broadleafcommerce.core.search.service.solr.SolrSearchServiceExtensionManager;
import org.springframework.stereotype.Service;

import com.mycompany.core.solr.boost.domain.BoostProduct;

@Service("StBoostProductService")
public class StBoostProductService {

	@Resource(name = "blSolrSearchServiceExtensionManager")
    protected SolrSearchServiceExtensionManager extensionManager;
	
	 public String SolrBoostSearchforProduct (List<Long> result, BoostProduct boostProduct , String boosted , int rows){
		 
		 result.add(boostProduct.getProduct().getId());
		 boosted+=boostProduct.getProduct().getId()+" OR ";
		 rows = 15-result.size();
		 return boosted;
	}
}
