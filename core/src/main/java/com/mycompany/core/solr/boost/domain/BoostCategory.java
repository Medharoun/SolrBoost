package com.mycompany.core.solr.boost.domain;

import org.broadleafcommerce.core.catalog.domain.Category;

public interface BoostCategory extends SolrBoostFieldValue{
	Category getCategory();
	
	void setCategory(Category category);
	
}
