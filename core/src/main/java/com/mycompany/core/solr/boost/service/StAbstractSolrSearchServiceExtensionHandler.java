package com.mycompany.core.solr.boost.service;

import java.util.List;

import javax.annotation.PostConstruct;
import javax.annotation.Resource;

import org.apache.solr.client.solrj.SolrQuery;
import org.broadleafcommerce.common.extension.ExtensionResultStatusType;
import org.broadleafcommerce.core.search.domain.SearchCriteria;
import org.broadleafcommerce.core.search.domain.SearchFacetDTO;
import org.broadleafcommerce.core.search.service.solr.AbstractSolrSearchServiceExtensionHandler;
import org.broadleafcommerce.core.search.service.solr.SolrSearchServiceExtensionHandler;
import org.broadleafcommerce.core.search.service.solr.SolrSearchServiceExtensionManager;
import org.springframework.stereotype.Service;

import com.mycompany.core.solr.boost.dao.SolrBoostDao;
import com.mycompany.core.solr.boost.domain.RdrSolrBoost;

@Service("stAbstractSolrSearchServiceExtensionHandler")
public class StAbstractSolrSearchServiceExtensionHandler extends AbstractSolrSearchServiceExtensionHandler implements SolrSearchServiceExtensionHandler{
	
	@Resource(name = "solrBoostDao")
	private SolrBoostDao dao;
	
    @Resource(name = "blSolrSearchServiceExtensionManager")
    protected SolrSearchServiceExtensionManager extensionManager;

    @PostConstruct
    public void init() {
        extensionManager.registerHandler(this);
    }
	
	@Override
    public ExtensionResultStatusType modifySolrQuery(SolrQuery query, String qualifiedSolrQuery,List<SearchFacetDTO> facets, SearchCriteria searchCriteria, String defaultSort) {

		List<RdrSolrBoost> boosts = dao.getAllBoosts();
		
		boosts.forEach(boost -> {
			
		}); 
		
//		List<RdrSolrBoost> boosts = dao.getAllBoosts();
//			String defaultQuery = query.getQuery();
//			String newQuery =null;
//		for (RdrSolrBoost rsb : boosts){
//			
//			query.setFilterQueries("bf");
//			query.addField("\""+rsb.getField().getAbbreviation()+"\""+"^"+rsb.getBoostAmount());
//		}
//			query.setQuery(defaultQuery+newQuery);
        return ExtensionResultStatusType.HANDLED;
    }
	
	
}
