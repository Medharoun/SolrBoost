package com.mycompany.core.solr.boost.domain;

import java.io.Serializable;
import java.util.Date;

public interface SolrBoostDetails extends Serializable   {

	Long getId() ;
	void setId(Long id) ;

	Date getStartDate() ;
	void setStartDate(Date startDate);
	
	Date getEndDate();
	void setEndDate(Date endDate);

	SolrBoostValues getValues() ;
    void setValues(SolrBoostValues values) ;
	

}