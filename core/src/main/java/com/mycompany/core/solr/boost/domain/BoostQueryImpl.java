package com.mycompany.core.solr.boost.domain;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.Inheritance;
import javax.persistence.InheritanceType;
import javax.persistence.Table;

import org.broadleafcommerce.common.presentation.AdminPresentation;
import org.broadleafcommerce.common.presentation.AdminPresentationClass;
import org.broadleafcommerce.common.presentation.PopulateToOneFieldsEnum;
import org.broadleafcommerce.core.offer.domain.OfferAdminPresentation.FieldOrder;
import org.broadleafcommerce.core.offer.domain.OfferAdminPresentation.GroupName;


@Entity
@Table(name="BOOST_QUERY")
@Inheritance(strategy = InheritanceType.JOINED)
@AdminPresentationClass(populateToOneFields = PopulateToOneFieldsEnum.TRUE, friendlyName = "Boost Query")
public class BoostQueryImpl extends SolrBoostFieldValueImpl implements BoostQuery {
	
	

	@Column(name = "QUERY")
	@AdminPresentation(friendlyName = "BoostQueryImpl_query", group = GroupName.Description, order = FieldOrder.Name, prominent = true, gridOrder = 1)
	protected String query;
	
	@Override
	public String getQuery() {
		return query;
	}
	
	@Override
	public void setQuery(String query) {
		this.query = query;
	}

}
