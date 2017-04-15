package com.mycompany.core.solr.boost.domain;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.Id;
import javax.persistence.Inheritance;
import javax.persistence.InheritanceType;
import javax.persistence.Table;

import org.broadleafcommerce.common.presentation.AdminPresentation;
import org.broadleafcommerce.common.presentation.AdminPresentationClass;
import org.broadleafcommerce.common.presentation.PopulateToOneFieldsEnum;
import org.broadleafcommerce.common.presentation.client.VisibilityEnum;
import org.broadleafcommerce.core.offer.domain.OfferAdminPresentation.FieldOrder;
import org.broadleafcommerce.core.offer.domain.OfferAdminPresentation.GroupName;
import org.hibernate.annotations.GenericGenerator;
import org.hibernate.annotations.Parameter;

@Entity
@Table(name="SOLR_BOOST_FIELD_VALUE")
@Inheritance(strategy = InheritanceType.JOINED)
@AdminPresentationClass(populateToOneFields = PopulateToOneFieldsEnum.TRUE, friendlyName = "Solr boost field value")
public class SolrBoostFieldValueImpl implements SolrBoostFieldValue {
	
	private static final long serialVersionUID = 1L; 
	@Id
	@GeneratedValue(generator="id")
	@GenericGenerator(
			name="id",
			strategy="org.broadleafcommerce.common.persistence.IdOverrideTableGenerator",
			parameters = {
					@Parameter(name="segment_value", value="id"),
					@Parameter(name="entity_name", value="com.mycompany.core.solr.boost.domain.SolrBoostFieldValue")
			}
		)
	
	@Column(name="SOLR_BOOST_FIELD_VALUE_ID")
	@AdminPresentation(friendlyName = "SolrBoostFieldValueImpl_Id", visibility = VisibilityEnum.HIDDEN_ALL)
	protected Long id;
	
	

	@Column(name = "NAME")
	@AdminPresentation(friendlyName = "SolrBoostFieldValueImpl_Name", group = GroupName.Description, order = FieldOrder.Name, prominent = true, gridOrder = 1)
	protected String name;
		
	
	@Column(name = "AMOUNT")
	@AdminPresentation(friendlyName = "SolrBoostFieldValueImpl_amount", group = GroupName.Description, order = FieldOrder.Name, prominent = true, gridOrder = 3)
	protected Double amount;
	
	
	@Override
	public Long getId() {
		return id;
	}
	@Override
	public void setId(Long id) {
		this.id = id;
	}
	@Override
	public String getName() {
		return name;
	}
	@Override
	public void setName(String name) {
		this.name = name;
	}
	
	
	@Override
	public Double getAmount() {
		return amount;
	}
	
	@Override
	public void setAmount(Double amount) {
		this.amount = amount;
	}
	
}
