package com.mycompany.core.solr.bost.domain;

import org.broadleafcommerce.core.search.domain.Field;;

public interface RdrSolrBoost {
	
	Long getId();
	void setId(Long id);
	
	String getName();
	void setName(String name);
	/*field*/
	Field getField();
	void setField (Field field);
	
	Double getBoostAmount();
	void setBoostAmount(Double boostAmount);
	
	
	
}
