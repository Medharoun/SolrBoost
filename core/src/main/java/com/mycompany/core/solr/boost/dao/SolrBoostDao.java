package com.mycompany.core.solr.boost.dao;

import java.util.List;

import com.mycompany.core.solr.boost.domain.BoostCategory;
import com.mycompany.core.solr.boost.domain.BoostProduct;
import com.mycompany.core.solr.boost.domain.RdrSolrBoost;
import com.mycompany.core.solr.boost.domain.SolrBoostFieldValue;
import com.mycompany.core.solr.boost.domain.StProduct;

public interface SolrBoostDao {
	public List<RdrSolrBoost> getAllFieldBoosted();
	
	public List<BoostCategory> getAllCategroryBoosted();
	
	public List<BoostProduct> getAllProductBoosted();
	
//	public List<BoostQuery> getAllQueryBoosted();

	public List<SolrBoostFieldValue> getAllBoosts();
	
	public List<StProduct> getAllStProduct();

}

