package com.mycompany.core.solr.boost.service;

import java.util.List;

import javax.annotation.Resource;

import org.apache.solr.client.solrj.SolrQuery;
import org.broadleafcommerce.core.catalog.domain.Product;
import org.broadleafcommerce.core.catalog.service.CatalogService;
import org.broadleafcommerce.core.search.service.solr.SolrSearchServiceExtensionManager;
import org.springframework.stereotype.Service;

import com.mycompany.core.solr.boost.domain.BoostCategory;

@Service("StBoostCategoryService")
public class StBoostCategoryService {

	@Resource(name = "blSolrSearchServiceExtensionManager")
    protected SolrSearchServiceExtensionManager extensionManager;
		
	@Resource(name= "blCatalogService")
	private CatalogService catalogServiceImpl;
	
	
	public String SolrBoostSearchforCategory (BoostCategory value , SolrQuery query ){
		String catBoosted = "" ;
		List<Product> products = catalogServiceImpl.findProductsForCategory(value.getCategory());
//		List<Long> finalProductsId = new ArrayList<>();
		String q = "" ;
		String p = "" ;
		
		for (Product product : products){
			 p= (product.getName()+" "+product.getDescription()+" "+product.getLongDescription()).toLowerCase();
			 q= query.getQuery().toLowerCase();
			 q=q.substring(1,q.length()-1);
			if (p.indexOf(q)!=-1){
				catBoosted += "productId:"+product.getId()+"^"+value.getAmount()+" & ";
			}
		}
		
		
		return catBoosted;
	}
}
