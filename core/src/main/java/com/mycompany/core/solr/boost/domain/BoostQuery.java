package com.mycompany.core.solr.boost.domain;

public interface BoostQuery extends SolrBoostFieldValue{

	String getQuery();
	void setQuery(String query);
}
