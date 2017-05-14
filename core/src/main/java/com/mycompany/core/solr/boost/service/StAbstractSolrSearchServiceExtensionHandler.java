package com.mycompany.core.solr.boost.service;

import java.util.ArrayList;
import java.util.List;

import javax.annotation.PostConstruct;
import javax.annotation.Resource;

import org.apache.commons.lang.ArrayUtils;
import org.apache.solr.client.solrj.SolrQuery;
import org.broadleafcommerce.common.extension.ExtensionResultStatusType;
import org.broadleafcommerce.core.search.domain.SearchCriteria;
import org.broadleafcommerce.core.search.domain.SearchFacetDTO;
import org.broadleafcommerce.core.search.service.solr.AbstractSolrSearchServiceExtensionHandler;
import org.broadleafcommerce.core.search.service.solr.SolrSearchServiceExtensionHandler;
import org.broadleafcommerce.core.search.service.solr.SolrSearchServiceExtensionManager;
import org.springframework.stereotype.Service;

import com.mycompany.core.solr.boost.dao.SolrBoostDao;
import com.mycompany.core.solr.boost.domain.BoostCategory;
import com.mycompany.core.solr.boost.domain.BoostProduct;
import com.mycompany.core.solr.boost.domain.SolrBoostFieldValue;


@Service("stAbstractSolrSearchServiceExtensionHandler")
public class StAbstractSolrSearchServiceExtensionHandler extends AbstractSolrSearchServiceExtensionHandler implements SolrSearchServiceExtensionHandler{
	
	@Resource(name = "solrBoostDao")
	private SolrBoostDao dao;
	
    @Resource(name = "blSolrSearchServiceExtensionManager")
    protected SolrSearchServiceExtensionManager extensionManager;
    
    @Resource(name = "StBoostProductService")
    protected StBoostProductService boostProductService;

    @Resource(name = "StBoostCategoryService")
    protected StBoostCategoryService boostCategoryService;
    
    @PostConstruct
    public void init() {
        extensionManager.registerHandler(this);
    }
	/**
	 * query time boost
	 */
	@Override
    public ExtensionResultStatusType modifySolrQuery(SolrQuery query, String qualifiedSolrQuery,List<SearchFacetDTO> facets, SearchCriteria searchCriteria, String defaultSort) {
		 query.setFields("*");
		 List<Long> result = new ArrayList<>();
		 String boosted = "";
		 String catBoosted = "";
		 int rows = 0 ;
		 List<SolrBoostFieldValue> boosts = dao.getAllBoosts();
		 
		 
		 
	    
		for (SolrBoostFieldValue value : boosts){
			if (value instanceof BoostProduct){
				boosted = boostProductService.SolrBoostSearchforProduct(result, (BoostProduct)value , boosted );	
			}else  if ((value instanceof BoostCategory)){
				catBoosted += boostCategoryService.SolrBoostSearchforCategory((BoostCategory)value , query);
			}
		};
		
		boosted= boosted.substring(0, boosted.length()-4);
		
		if(catBoosted.length()>0)
		catBoosted=catBoosted.substring(0, catBoosted.length()-3);
		
		
		String[] fq = query.getFilterQueries();
		
		String bqBoost = catBoosted;
		
		String fqBoost = "-productId:("+boosted+")";
		
		
		fq = (String[]) ArrayUtils.add(fq, fqBoost);
		
//		fq = (String[]) ArrayUtils.add(fq, bqBoost);
		
		query.add("bq", bqBoost);
		query.setFilterQueries(fq);
		
		
        return ExtensionResultStatusType.HANDLED;
    }
	
	
	
	

	
}
