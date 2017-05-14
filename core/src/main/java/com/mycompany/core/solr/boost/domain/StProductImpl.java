package com.mycompany.core.solr.boost.domain;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.Inheritance;
import javax.persistence.InheritanceType;
import javax.persistence.Transient;

import org.broadleafcommerce.core.catalog.domain.ProductImpl;

@Entity(name="ST_PRODUCT")
@Inheritance(strategy = InheritanceType.JOINED)
public class StProductImpl extends ProductImpl implements StProduct{


	private static final long serialVersionUID = 1L;
	
	@Column
	boolean boosted;

	@Override
	public boolean isBoosted() {
		return boosted;
	}

	@Override
	public void setBoosted(boolean boosted) {
		this.boosted = boosted;
		
	}
	
}
