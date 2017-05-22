package com.mycompany.core.solr.domain;

import org.broadleafcommerce.core.catalog.domain.Product;

public interface ProductHelper extends Product {
	
	Boolean getBoosted();
	void setBoosted(Boolean boosted);
	
	String getUrlImage();
	void setUrlImage(String urlImage);
}
