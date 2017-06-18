package com.mycompany.core.solr.boost.domain;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.Inheritance;
import javax.persistence.InheritanceType;
import javax.persistence.Transient;

import org.broadleafcommerce.common.media.domain.Media;
import org.broadleafcommerce.common.presentation.AdminPresentationClass;
import org.broadleafcommerce.core.catalog.domain.ProductImpl;

@Entity(name = "ST_PRODUCT")
@AdminPresentationClass(friendlyName="ProductBoost")
@Inheritance(strategy = InheritanceType.JOINED)
	
public class StProductImpl extends ProductImpl implements StProduct {

	private static final long serialVersionUID = 1L;

	@Column
	boolean boosted;

	@Transient
	String image;

	@Override
	public boolean isBoosted() {
		return boosted;
	}

	@Override
	public void setBoosted(boolean boosted) {
		this.boosted = boosted;

	}

	@Override
	public String getImage() {
		Media lMedia = getMedia().get("primary");
		if (lMedia != null) {
			return lMedia.getUrl();
		}
		return null;

	}

}
