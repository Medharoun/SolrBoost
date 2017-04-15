package com.mycompany.core.solr.boost.domain;

import org.broadleafcommerce.core.catalog.domain.Product;

public interface BoostProduct extends SolrBoostFieldValue{

	Product getProduct();
	void setProduct(Product product);
}
