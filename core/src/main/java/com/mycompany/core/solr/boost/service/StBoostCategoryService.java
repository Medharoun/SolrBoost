package com.mycompany.core.solr.boost.service;

import java.util.List;

import javax.annotation.Resource;

import org.apache.solr.client.solrj.SolrQuery;
import org.broadleafcommerce.core.catalog.domain.Category;
import org.broadleafcommerce.core.catalog.domain.Product;
import org.broadleafcommerce.core.catalog.service.CatalogService;
import org.broadleafcommerce.core.search.domain.SearchCriteria;
import org.broadleafcommerce.core.search.service.solr.SolrSearchServiceExtensionManager;
import org.springframework.stereotype.Service;

import com.mycompany.core.solr.boost.domain.BoostCategory;

@Service("StBoostCategoryService")
public class StBoostCategoryService {

	@Resource(name = "blSolrSearchServiceExtensionManager")
    protected SolrSearchServiceExtensionManager extensionManager;
		
	@Resource(name= "blCatalogService")
	private CatalogService catalogService;
	
	
	public String SolrBoostSearchforCategory (BoostCategory boostCategory , SolrQuery query , SearchCriteria searchCriteria){
		String catBoosted = "" ;
		if(isEqualOrSubCategoryEqual(boostCategory, searchCriteria)){
			List<Product> products = catalogService.findProductsForCategory(boostCategory.getCategory());

//			String q = "" ;
//			String p = "" ;
			
			for (Product product : products){
//				 p= (product.getName()+ " "+product.getDescription()+" "+product.getLongDescription()).toLowerCase();
//				 q= query.getQuery().toLowerCase();
//				 q=q.substring(1,q.length()-1);
//					catBoosted += "productId:"+product.getId()+"^"+boostCategory.getAmount();
					query.add("bq","productId:"+product.getId()+"^"+boostCategory.getAmount());
			}
		}

		return catBoosted;
	}
	
	protected boolean isEqualOrSubCategoryEqual(BoostCategory boostCategory  , SearchCriteria searchCriteria){
		boolean isEqual = false;
		
		if(searchCriteria.getCategory() != null && searchCriteria.getCategory().equals(boostCategory.getCategory())){
			isEqual = true;
		}
		
		if(searchCriteria.getCategory() != null){
			List<Category> subCategory = catalogService.findAllSubCategories(searchCriteria.getCategory());
			for (Category categoryXref : subCategory) {
				if(boostCategory.getCategory().equals(categoryXref)){
					isEqual = true;
					break;
				}
			}
		}
		
		
		
		return isEqual;
	}
}
