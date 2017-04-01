package com.mycompany.core.solr.boost.dao;

import java.util.List;

import com.mycompany.core.solr.boost.domain.RdrSolrBoost;

public interface SolrBoostDao {
	public List<RdrSolrBoost> getAllBoosts();
}
