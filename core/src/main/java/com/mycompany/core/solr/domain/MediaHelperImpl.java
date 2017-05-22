package com.mycompany.core.solr.domain;

import org.broadleafcommerce.common.util.UnknownUnwrapTypeException;

public class MediaHelperImpl implements MediaHelper{

	
	/**
	 * 
	 */
	private static final long serialVersionUID = 1L;
	

	protected Long id;

    protected String url;
    
    protected String title;
    
    protected String altText;
    
    protected String tags;
    
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
	public String getUrl() {
		// TODO Auto-generated method stub
		return url;
	}

	@Override
	public void setUrl(String url) {
		// TODO Auto-generated method stub
		this.url=url;
	}

	@Override
	public String getTitle() {
		// TODO Auto-generated method stub
		return title;
	}

	@Override
	public void setTitle(String title) {
		// TODO Auto-generated method stub
		this.title=title;
	}

	@Override
	public String getAltText() {
		// TODO Auto-generated method stub
		return altText;
	}

	@Override
	public void setAltText(String altText) {
		// TODO Auto-generated method stub
		this.altText=altText;
	}

	@Override
	public String getTags() {
		// TODO Auto-generated method stub
		return tags;
	}

	@Override
	public void setTags(String tags) {
		// TODO Auto-generated method stub
		this.tags=tags;
	}

	@Override
	public boolean isUnwrappableAs(Class unwrapType) {
		// TODO Auto-generated method stub
		return false;
	}

	@Override
	public <T> T unwrap(Class<T> unwrapType) {
		// TODO Auto-generated method stub
		throw new UnknownUnwrapTypeException(unwrapType);
	}

}
