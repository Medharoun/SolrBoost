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
import org.broadleafcommerce.core.search.domain.Field;
import org.broadleafcommerce.core.search.domain.FieldImpl;
import org.hibernate.annotations.GenericGenerator;
import org.hibernate.annotations.Parameter;

@Entity
@Table(name="SOLR_BOOST")
@AdminPresentationClass(populateToOneFields = PopulateToOneFieldsEnum.TRUE, friendlyName = "solrBoostBase")
public class RdrSolrBoostImpl implements RdrSolrBoost {
	
	private static final long serialVersionUID = 1L; 
	@Id
	@GeneratedValue(generator="id")
	@GenericGenerator(
			name="id",
			strategy="org.broadleafcommerce.common.persistence.IdOverrideTableGenerator",
			parameters = {
					@Parameter(name="segment_value", value="id"),
					@Parameter(name="entity_name", value="com.mycompany.core.solr.boost.domain.RdrSolrBoostImpl")
			}
		)
	
	@Column(name="SOLR_BOOST_ID")
	@AdminPresentation(friendlyName = "RdrSolrBoostImpl_Id", visibility = VisibilityEnum.HIDDEN_ALL)
	protected Long id;
	
	@Column(name = "NAME")
	@AdminPresentation(friendlyName = "RdrSolrBoostImpl_Name", group = GroupName.Description, order = FieldOrder.Name, prominent = true, gridOrder = 1)
	protected String name;
	
	@ManyToOne(targetEntity = FieldImpl.class)
	@JoinColumn(name = "FIELD_ID")
	@AdminPresentation(friendlyName = "RdrSolrBoostImpl_field", prominent = true, gridOrder = 2)
	@AdminPresentationToOneLookup
	protected Field field;
	
	@Column(name = "BOOST_AMOUNT")
	@AdminPresentation(friendlyName = "RdrSolrBoostImpl_amount", group = GroupName.Description, order = FieldOrder.Name, prominent = true, gridOrder = 3)
	protected Double boostAmount;
	
	
	@Column(name = "IS_ACTIVE")
	@AdminPresentation(friendlyName = "RdrSolrBoostImpl_active", group = GroupName.Description, order = FieldOrder.Name, prominent = true, gridOrder = 3)
	protected boolean isActive;
	
//	@OneToMany(targetEntity = SolrBoostValuesImpl.class)
//	@AdminPresentation(friendlyName = "RdrSolrBoostImpl_value", prominent = true, gridOrder = 4)
//	@AdminPresentationToOneLookup
//	protected List<SolrBoostValues> values  = new ArrayList<>();
	
	
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
	public String getName() {
		// TODO Auto-generated method stub
		return name;
	}
	@Override
	public void setName(String name) {
		// TODO Auto-generated method stub
		this.name=name;
		
	}
	@Override
	public Field getField() {
		// TODO Auto-generated method stub
		return field;
	}
	@Override
	public void setField(Field field) {
		// TODO Auto-generated method stub
		this.field=field;
		
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
	public boolean isActive() {
		// TODO Auto-generated method stub
		return isActive;
	}
	@Override
	public void setIsActive(boolean isActive) {
		// TODO Auto-generated method stub
		this.isActive = isActive;
	}
	
//	@Override
//	public List<SolrBoostValues> getValues() {
//		// TODO Auto-generated method stub
//		return null;
//	}
//	@Override
//	public void setValues(List<SolrBoostValues> values) {
//		// TODO Auto-generated method stub
//		
//	}
}
