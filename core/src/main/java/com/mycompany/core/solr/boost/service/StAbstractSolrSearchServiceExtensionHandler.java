package com.mycompany.core.solr.boost.service;

import java.util.List;

import javax.annotation.PostConstruct;
import javax.annotation.Resource;
import org.apache.commons.collections4.CollectionUtils;
import org.apache.solr.common.params.CommonParams;
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

//import net.sf.ehcache.search.expression.Criteria;

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
		String q = query.get(CommonParams.Q);
		q=q.substring(1,q.length()-1);
		String nq =""; 
//		if(!CollectionUtils.isEmpty(boosts)){
//			
//			boosts.stream().filter(boost -> boost.isActive()).forEach(boost -> {
//				if(queryParsed[0] == boost.getField().getAbbreviation()){
//					q+="^"+boost.getBoostAmount();
//				}
//			});
//		}
		if(!CollectionUtils.isEmpty(boosts)){
			for (RdrSolrBoost boost : boosts) {
				if(boost.isActive()){
					nq+=boost.getField().getAbbreviation()+":"+q+"^"+boost.getBoostAmount()+" OR ";
				}
			}
		}
		
		nq=nq.substring(0, nq.length()-4);
		
        return ExtensionResultStatusType.HANDLED;
    }
	
}
