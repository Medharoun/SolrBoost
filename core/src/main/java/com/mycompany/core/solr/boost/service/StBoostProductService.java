package com.mycompany.core.solr.boost.service;

import java.util.ArrayList;
import java.util.List;

import javax.annotation.Resource;

import org.apache.solr.client.solrj.SolrQuery;
import org.broadleafcommerce.core.search.service.solr.SolrSearchServiceExtensionManager;
import org.springframework.stereotype.Service;

import com.mycompany.core.solr.boost.domain.BoostProduct;
import com.mycompany.core.solr.boost.domain.SolrBoostFieldValue;

@Service("StBoostProductService")
public class StBoostProductService {

	@Resource(name = "blSolrSearchServiceExtensionManager")
    protected SolrSearchServiceExtensionManager extensionManager;
	
	 public void SolrBoostSearchforProduct (List<Long> result, SolrQuery query, List<SolrBoostFieldValue> products){
		 String boosted = "";
		 
		 for (SolrBoostFieldValue product : products){
			 if(product instanceof BoostProduct){
				 BoostProduct boostProduct = (BoostProduct) product;
				 result.add(boostProduct.getId());
				 boosted+=boostProduct.getId()+" OR ";
			 }
		 
	 	}
		 
		 
		 int rows = 15-result.size();
		 boosted=boosted.substring(0, boosted.length()-4);
		 query.setQuery("q=*:*&fq=-productId:("+boosted+"&start=0&rows="+rows);
	}
}
