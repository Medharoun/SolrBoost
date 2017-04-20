package com.mycompany.core.solr.boost.service;

import java.util.ArrayList;
import java.util.List;

import javax.annotation.PostConstruct;
import javax.annotation.Resource;

import org.apache.hadoop.classification.InterfaceAudience.Private;
import org.apache.lucene.queries.function.BoostedQuery;
import org.apache.solr.client.solrj.SolrQuery;
import org.apache.solr.common.params.CommonParams;
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
import com.mycompany.core.solr.boost.domain.BoostQuery;
import com.mycompany.core.solr.boost.domain.BoostQueryImpl;
import com.mycompany.core.solr.boost.domain.SolrBoostFieldValue;


@Service("stAbstractSolrSearchServiceExtensionHandler")
public class StAbstractSolrSearchServiceExtensionHandler extends AbstractSolrSearchServiceExtensionHandler implements SolrSearchServiceExtensionHandler{
	
	@Resource(name = "solrBoostDao")
	private SolrBoostDao dao;
	
    @Resource(name = "blSolrSearchServiceExtensionManager")
    protected SolrSearchServiceExtensionManager extensionManager;
    
    @Resource(name = "StBoostProductService")
    protected StBoostProductService boostProductService;

    @PostConstruct
    public void init() {
        extensionManager.registerHandler(this);
    }
	/**
	 * query time boost
	 */
	@Override
    public ExtensionResultStatusType modifySolrQuery(SolrQuery query, String qualifiedSolrQuery,List<SearchFacetDTO> facets, SearchCriteria searchCriteria, String defaultSort) {


		
		 List<Long> result = new ArrayList<>();
		 String boosted = "";
		 int rows = 0 ;
		 List<SolrBoostFieldValue> boosts = dao.getAllBoosts();
	    
		for (SolrBoostFieldValue value : boosts){
			if (value instanceof BoostProduct){
				boosted = boostProductService.SolrBoostSearchforProduct(result, (BoostProduct)value , boosted ,rows);
			}else if (value instanceof BoostCategory){
				
			}else {
				
			}
		};
		
		boosted=boosted.substring(0, boosted.length()-4);
		String queryT = query.getQuery()+"&fq=-productId:("+boosted+")&start=0&rows="+rows;
		query.setQuery(query.getQuery()+"&fq=-productId:("+boosted+")&start=0&rows="+rows);


        return ExtensionResultStatusType.HANDLED;
    }
	
	

	
}
