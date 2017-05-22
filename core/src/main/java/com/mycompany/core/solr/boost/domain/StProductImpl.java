package com.mycompany.core.solr.boost.domain;

import java.util.ArrayList;
import java.util.List;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.Inheritance;
import javax.persistence.InheritanceType;
import javax.persistence.Transient;

import org.broadleafcommerce.common.media.domain.Media;
import org.broadleafcommerce.core.catalog.domain.ProductImpl;
import org.broadleafcommerce.core.catalog.domain.SkuMediaXref;

@Entity(name = "ST_PRODUCT")
@Inheritance(strategy = InheritanceType.JOINED)
public class StProductImpl extends ProductImpl implements StProduct {

	private static final long serialVersionUID = 1L;

	@Column
	boolean boosted;

//	@Transient
//	Media media;
//
//	List<String> allProductMedias;

	@Override
	public boolean isBoosted() {
		return boosted;
	}

	@Override
	public void setBoosted(boolean boosted) {
		this.boosted = boosted;

	}

	// @Override
	// public Map<String, Media> getMedia() {
	// Map<String, SkuMediaXref> medias = getDefaultSku().getSkuMediaXref();
	// SkuMediaXref smx = null;
	// for ( Map.Entry media : medias.entrySet()){
	// if ( media.getKey()=="primary"){
	// smx = (SkuMediaXref)media.getValue();
	// }
	// }
	// return null;
	//
	// }
	//
	// @Override
	// public void setMedia(Media media) {
	//
	// }

//	@Override
//	public List<String> getAllProductMedia() {
//		// TODO Auto-generated method stub
//		if (allProductMedias == null) {
//			allProductMedias = new ArrayList<String>();
//			final SkuMediaXref skuMediaXref = getDefaultSku().getSkuMediaXref().get("primary");
//			if (skuMediaXref != null) {
//				final Media media = skuMediaXref.getMedia();
//				if (media instanceof Media) {
//					final Media Media = (Media) media;
//					allProductMedias.add(media.getUrl());
//				}
//			}
//		}
//		return allProductMedias;
//	}

}
