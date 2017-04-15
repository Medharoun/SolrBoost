package com.mycompany.core.solr.boost.domain;

import javax.persistence.Entity;
import javax.persistence.Inheritance;
import javax.persistence.InheritanceType;
import javax.persistence.JoinColumn;
import javax.persistence.ManyToOne;
import javax.persistence.Table;

import org.broadleafcommerce.common.presentation.AdminPresentation;
import org.broadleafcommerce.common.presentation.AdminPresentationClass;
import org.broadleafcommerce.common.presentation.AdminPresentationToOneLookup;
import org.broadleafcommerce.common.presentation.PopulateToOneFieldsEnum;
import org.broadleafcommerce.core.catalog.domain.Product;
import org.broadleafcommerce.core.catalog.domain.ProductImpl;


@Entity
@Table(name="BOOST_PRODUCT")
@Inheritance(strategy = InheritanceType.JOINED)
@AdminPresentationClass(populateToOneFields = PopulateToOneFieldsEnum.TRUE, friendlyName = "Boost Product")
public class BoostProductImpl extends SolrBoostFieldValueImpl implements BoostProduct{
	
	

	@ManyToOne(targetEntity = ProductImpl.class)
	@JoinColumn(name = "PRODUCT_ID")
	@AdminPresentation(friendlyName = "BoostProductImpl_product", prominent = true, gridOrder = 1)
	@AdminPresentationToOneLookup
	protected Product product;

	
	@Override
	public Product getProduct() {
		return product;
	}
	
	@Override
	public void setProduct(Product product) {
		this.product = product;
	}
	

}
