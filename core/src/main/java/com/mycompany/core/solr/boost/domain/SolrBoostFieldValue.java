package com.mycompany.core.solr.boost.domain;

import java.io.Serializable;

public interface SolrBoostFieldValue extends Serializable{

	Long getId();
	void setId(Long id);
	String getName();
	void setName(String name);
	Double getAmount();
	void setAmount(Double amount);
}
