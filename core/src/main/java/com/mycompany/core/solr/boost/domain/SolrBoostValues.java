package com.mycompany.core.solr.boost.domain;

import java.io.Serializable;

public interface SolrBoostValues extends Serializable{

	Long getId();
	void setId(Long id);
	
	
	String getValue();
	void setValue(String value);
	
	Double getBoostAmount(); 
	void setBoostAmount(Double boostAmount);
	
	RdrSolrBoost getRdrSolrBoost();
	void setRdrSolrBoost(RdrSolrBoost rdrSolrBoost);
}
