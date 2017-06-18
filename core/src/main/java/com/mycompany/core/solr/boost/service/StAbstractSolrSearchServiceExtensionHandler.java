package com.mycompany.core.solr.boost.service;

import java.util.ArrayList;
import java.util.List;
import java.util.stream.Collectors;

import javax.annotation.PostConstruct;
import javax.annotation.Resource;

import org.apache.commons.lang.ArrayUtils;
import org.apache.commons.lang.StringUtils;
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
		 query.setFields("*,score");

		 String productBoosted = "";
		 String categoryBoosted = "";

		 List<SolrBoostFieldValue> boosts = generateListBoost(searchCriteria);

		for (SolrBoostFieldValue value : boosts){
			if (value instanceof BoostProduct){
				query = boostProductService.SolrBoostSearchforProduct(query, (BoostProduct)value , productBoosted);	
			} else  if ((value instanceof BoostCategory)){
				categoryBoosted += boostCategoryService.SolrBoostSearchforCategory((BoostCategory)value , query,searchCriteria);
			}
		}
		
		
		if(searchCriteria.getCategory() != null && searchCriteria.getCategory().getId().equals(2001L)){
			query.remove("fq");
		}

		query.remove("sort");
        return ExtensionResultStatusType.HANDLED;
    }
	
	
	
	protected List<SolrBoostFieldValue> generateListBoost(SearchCriteria criteria){
		List<SolrBoostFieldValue> boosts = dao.getAllBoosts();
		
		if(criteria.getCategory() != null){
			if(!criteria.getCategory().getId().equals(2001L)){
				boosts = boosts.stream().filter(boost -> (boost instanceof BoostCategory )).collect(Collectors.toList());
			}
		}
		
		return boosts;
	}

	
}
