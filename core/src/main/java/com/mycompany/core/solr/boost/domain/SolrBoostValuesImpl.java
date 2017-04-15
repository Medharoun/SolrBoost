package com.mycompany.core.solr.boost.domain;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.Id;
import javax.persistence.JoinColumn;
import javax.persistence.ManyToOne;
import javax.persistence.Table;

import org.broadleafcommerce.common.presentation.AdminPresentation;
import org.broadleafcommerce.common.presentation.AdminPresentationClass;
import org.broadleafcommerce.common.presentation.AdminPresentationToOneLookup;
import org.broadleafcommerce.common.presentation.PopulateToOneFieldsEnum;
import org.broadleafcommerce.common.presentation.client.VisibilityEnum;
import org.broadleafcommerce.core.offer.domain.OfferAdminPresentation.FieldOrder;
import org.broadleafcommerce.core.offer.domain.OfferAdminPresentation.GroupName;
import org.hibernate.annotations.GenericGenerator;
import org.hibernate.annotations.Parameter;

@Entity
@Table(name="SOLR_BOOST_VALUES")
@AdminPresentationClass(populateToOneFields = PopulateToOneFieldsEnum.TRUE, friendlyName = "solr Boost values")
public class SolrBoostValuesImpl implements SolrBoostValues{
	
	
	private static final long serialVersionUID = 1L;
	
	@Id
	@GeneratedValue(generator="id")
	@GenericGenerator(
			name="id",
			strategy="org.broadleafcommerce.common.persistence.IdOverrideTableGenerator",
			parameters = {
					@Parameter(name="segment_value", value="id"),
					@Parameter(name="entity_name", value="com.mycompany.core.solr.boost.domain.SolrBoostValuesImpl")
			}
		)
	
	@Column(name="SOLR_BOOST_VALUE_ID")
	@AdminPresentation(friendlyName = "SolrBoostValuesImpl_Id", visibility = VisibilityEnum.HIDDEN_ALL)
	protected Long id;
	
	
	@Column(name = "VALUE")
	@AdminPresentation(friendlyName = "SolrBoostValuesImpl_Value", group = GroupName.Description, order = FieldOrder.Name, prominent = true, gridOrder = 1)
	protected String value;
	
	
	
	@ManyToOne(targetEntity = RdrSolrBoostImpl.class)
	@JoinColumn(name = "SOLR_BOOST_ID")
	@AdminPresentation(friendlyName = "SolrBoostValuesImpl_Type", prominent = true, gridOrder = 2)
	@AdminPresentationToOneLookup
	protected RdrSolrBoost rdrSolrBoost;
	
	
	
	@Column(name = "BOOST_AMOUNT")
	@AdminPresentation(friendlyName = "OfferImpl_amount", group = GroupName.Description, order = FieldOrder.Name, prominent = true, gridOrder = 3)
	protected Double boostAmount;
	
	
	
	
	@Override
	public Long getId() {
		// TODO Auto-generated method stub
		return id;
	}

	@Override
	public void setId(Long id) {
		// TODO Auto-generated method stub
		this.id=id;
		
	}

	@Override
	public String getValue() {
		// TODO Auto-generated method stub
		return value;
	}

	@Override
	public void setValue(String value) {
		// TODO Auto-generated method stub
		this.value=value;
	}
	
	@Override
	public Double getBoostAmount() {
		// TODO Auto-generated method stub
		return boostAmount;
	}
	@Override
	public void setBoostAmount(Double boostAmount) {
		// TODO Auto-generated method stub
		this.boostAmount=boostAmount;
		
	}

	@Override
	public RdrSolrBoost getRdrSolrBoost() {
		// TODO Auto-generated method stub
		return rdrSolrBoost;
	}

	@Override
	public void setRdrSolrBoost(RdrSolrBoost rdrSolrBoost) {
		// TODO Auto-generated method stub
		this.rdrSolrBoost=rdrSolrBoost;
	}

}
