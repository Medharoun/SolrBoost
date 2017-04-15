package com.mycompany.core.solr.boost.domain;

import javax.persistence.CascadeType;
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
import org.broadleafcommerce.core.catalog.domain.Category;
import org.broadleafcommerce.core.catalog.domain.CategoryImpl;


@Entity
@Table(name="BOOST_CATEGORY")
@Inheritance(strategy = InheritanceType.JOINED)
@AdminPresentationClass(populateToOneFields = PopulateToOneFieldsEnum.TRUE, friendlyName = "Boost Category")
public class BoostCategoryImpl extends SolrBoostFieldValueImpl implements BoostCategory{

	
	@ManyToOne(targetEntity = CategoryImpl.class , cascade = CascadeType.ALL)
	@JoinColumn(name = "CATEGORY_ID")
	@AdminPresentation(friendlyName = "BoostCategoryImpl_category", prominent = true, gridOrder = 1)
	@AdminPresentationToOneLookup
	protected Category category;
	
	
	
	@Override
	public Category getCategory() {
		return category;
	}
	
	@Override
	public void setCategory(Category category) {
		this.category = category;
	}
	
	
	
}
