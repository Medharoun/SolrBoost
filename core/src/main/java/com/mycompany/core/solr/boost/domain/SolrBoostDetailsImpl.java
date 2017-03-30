package com.mycompany.core.solr.boost.domain;

import java.util.Date;

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
@Table(name="SOLR_BOOST_DETAILS")
@AdminPresentationClass(populateToOneFields = PopulateToOneFieldsEnum.TRUE, friendlyName = "solrBoostDetails")

public class SolrBoostDetailsImpl implements SolrBoostDetails{

	
	private static final long serialVersionUID = 1L; 


    @Id
	@GeneratedValue(generator="id")
	@GenericGenerator(
			name="id",
			strategy="org.broadleafcommerce.common.persistence.IdOverrideTableGenerator",
			parameters = {
					@Parameter(name="segment_value", value="id"),
					@Parameter(name="entity_name", value="com.mycompany.core.solr.boost.domain.SolrBoostDetailsImpl")
			}
		)
	
	
	@Column(name="SOLR_BOOST_DETAILS_ID")
	@AdminPresentation(friendlyName = "SolrBoostDetailsImpl_Id", visibility = VisibilityEnum.HIDDEN_ALL)
    protected Long id;
    
	
	
	@Column(name="START_DATE")
	@AdminPresentation(friendlyName = "SolrBoostDetailsImpl_start", group = GroupName.Description, order = FieldOrder.Name, prominent = true, gridOrder = 1)
    protected Date startDate ;
	
	
	
	@Column(name="END_DATE")
	@AdminPresentation(friendlyName = "SolrBoostDetailsImpl_End", group = GroupName.Description, order = FieldOrder.Name, prominent = true, gridOrder = 1)
    protected Date endDate;
	
	
	@ManyToOne(targetEntity = SolrBoostValuesImpl.class)
	@JoinColumn(name = "SOLR_BOOST_VALUE_ID")
	@AdminPresentation(friendlyName = "SolrBoostValuesImpl_values", prominent = true, gridOrder = 2)
    @AdminPresentationToOneLookup
	
	protected SolrBoostValues values ;

	public Long getId() {
		return id;
	}
	
	public void setId(Long id) {
		this.id=id;
		
	}

	public Date getStartDate() {
		return startDate;
	}




	public void setStartDate(Date startDate) {
		this.startDate = startDate;
	}




	public Date getEndDate() {
		return endDate;
	}




	public void setEndDate(Date endDate) {
		this.endDate = endDate;
	}




	public SolrBoostValues getValues() {
		return values;
	}

	
	public void setValues(SolrBoostValues values) {
		this.values = values;
	}
	
	
	
	
	
}
