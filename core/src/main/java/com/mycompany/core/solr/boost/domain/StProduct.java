package com.mycompany.core.solr.boost.domain;

import org.broadleafcommerce.core.catalog.domain.Product;

public interface StProduct extends Product{

	
	 boolean isBoosted() ;

	 void setBoosted(boolean boosted);
}
