package com.mycompany.core.solr.boost.domain;

import java.io.Serializable;

import org.broadleafcommerce.core.search.domain.Field;

public interface RdrSolrBoost extends Serializable {
	
	Long getId();
	void setId(Long id);
	
	String getName();
	void setName(String name);
	/*field*/
	Field getField();
	void setField (Field field);
	
	Double getBoostAmount();
	void setBoostAmount(Double boostAmount);
	
    public boolean isActive();
	
	public void setIsActive(boolean isActive);
	
	
	//public List <SolrBoostValues> getValues() ;
	//public void setValues(List <SolrBoostValues> values ) ;
	
//	public List<SolrBoostValues> getValues();
//	
//	public void setValues(List<SolrBoostValues> values);
	
	
		
}
