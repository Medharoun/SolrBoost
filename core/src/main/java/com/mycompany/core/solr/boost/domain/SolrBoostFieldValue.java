package com.mycompany.core.solr.boost.domain;

import java.io.Serializable;
import java.sql.Date;

public interface SolrBoostFieldValue extends Serializable{

	Long getId();
	void setId(Long id);
	String getName();
	void setName(String name);
	Double getAmount();
	void setAmount(Double amount);
	Date getStartDate();
	void setStartDate(Date startDate);
	Date getEndDate();
	void setEndDate(Date endDate);
	boolean isActivated();
	void setActivated(boolean activated);
}
