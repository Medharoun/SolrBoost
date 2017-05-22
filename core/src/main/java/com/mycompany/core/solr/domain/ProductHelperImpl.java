package com.mycompany.core.solr.domain;

import javax.persistence.Transient;
import java.math.BigDecimal;
import java.util.ArrayList;
import java.util.Collections;
import java.util.Date;
import java.util.HashMap;
import java.util.List;
import java.util.Map;
import java.util.Set;

import org.broadleafcommerce.common.copy.CreateResponse;
import org.broadleafcommerce.common.copy.MultiTenantCopyContext;
import org.broadleafcommerce.common.media.domain.Media;
import org.broadleafcommerce.common.money.Money;
import org.broadleafcommerce.common.persistence.ArchiveStatus;
import org.broadleafcommerce.common.vendor.service.type.ContainerShapeType;
import org.broadleafcommerce.common.vendor.service.type.ContainerSizeType;
import org.broadleafcommerce.core.catalog.domain.Category;
import org.broadleafcommerce.core.catalog.domain.CategoryProductXref;
import org.broadleafcommerce.core.catalog.domain.Dimension;
import org.broadleafcommerce.core.catalog.domain.Product;
import org.broadleafcommerce.core.catalog.domain.ProductAttribute;
import org.broadleafcommerce.core.catalog.domain.ProductOption;
import org.broadleafcommerce.core.catalog.domain.ProductOptionXref;
import org.broadleafcommerce.core.catalog.domain.RelatedProduct;
import org.broadleafcommerce.core.catalog.domain.Sku;
import org.broadleafcommerce.core.catalog.domain.Weight;
import org.broadleafcommerce.core.search.domain.FieldEntity;

public class ProductHelperImpl implements ProductHelper {

	/**
	 * 
	 */
	private static final long serialVersionUID = 1L;

	protected Long id;

	protected String url;

	protected Boolean overrideGeneratedUrl = false;

	protected String urlKey;

	protected String displayTemplate;

	protected String model;

	protected String manufacturer;

	protected Boolean isFeaturedProduct = false;

	protected Sku defaultSku;

	protected Boolean canSellWithoutOptions = false;

	protected List<Sku> skus = new ArrayList<Sku>();

	protected String promoMessage;

	protected List<RelatedProduct> crossSaleProducts = new ArrayList<RelatedProduct>();

	protected List<RelatedProduct> upSaleProducts = new ArrayList<RelatedProduct>();

	protected List<Sku> additionalSkus = new ArrayList<Sku>();

	protected Category defaultCategory;

	protected List<CategoryProductXref> allParentCategoryXrefs = new ArrayList<CategoryProductXref>();

	protected Map<String, ProductAttribute> productAttributes = new HashMap<String, ProductAttribute>();

	protected List<ProductOptionXref> productOptions = new ArrayList<ProductOptionXref>();

	protected Map<String, Set<String>> productOptionMap;

	protected ArchiveStatus archiveStatus = new ArchiveStatus();

	protected Boolean boosted;

	@Transient
	protected String imageUrl;

	// protected RdrShop shop;
	//
	// protected Boolean isProductTendance;
	//
	// protected List<RdrProductGiftXref> productGiftXref = new
	// ArrayList<RdrProductGiftXref>();
	//
	// protected String productType;
	//
	// protected List<RdrProductMaterialXref> materials = new
	// ArrayList<RdrProductMaterialXref>();
	//
	// protected List<RdrProductTag> tags = new ArrayList<RdrProductTag>();
	//
	// protected List<RdrProductShippingProfile> productShippingProfileXref =
	// new ArrayList<RdrProductShippingProfile>();
	//
	// protected List<RdrProductEventXref> productEventXrefs = new
	// ArrayList<RdrProductEventXref>();
	//
	// protected Long nbrCoeurs;
	//
	// protected Double ratingValue;
	//
	// @Transient
	// protected Map<String, SkuMediaXref> skuMedia;
	//
	// @Transient
	// protected String percentDiscount;
	//
	// @Transient
	// private String defaulSkuImg;
	//
	// @Transient
	// protected Money retailPrice;
	//
	// @Transient
	// protected Money salePrice;
	//
	// @Transient
	// protected boolean isNew;
	//
	// @Transient
	// protected boolean priceOverridedStatus = true;
	//
	// @Transient
	// protected Money priceOverride;

	@Override
	public Long getId() {
		return id;
	}

	@Override
	public void setId(final Long id) {
		this.id = id;
	}

	@Override
	public String getName() {
		return getDefaultSku().getName();
	}

	@Override
	public void setName(final String name) {
		getDefaultSku().setName(name);
	}

	@Override
	public String getDescription() {
		return getDefaultSku().getDescription();
	}

	@Override
	public void setDescription(final String description) {
		getDefaultSku().setDescription(description);
	}

	@Override
	public String getLongDescription() {
		return getDefaultSku().getLongDescription();
	}

	@Override
	public void setLongDescription(final String longDescription) {
		getDefaultSku().setLongDescription(longDescription);
	}

	@Override
	public Date getActiveStartDate() {
		// TODO Auto-generated method stub
		return null;
	}

	@Override
	public void setActiveStartDate(final Date activeStartDate) {
		// TODO Auto-generated method stub

	}

	@Override
	public Date getActiveEndDate() {
		// TODO Auto-generated method stub
		return null;
	}

	@Override
	public void setActiveEndDate(final Date activeEndDate) {
		// TODO Auto-generated method stub

	}

	@Override
	public boolean isActive() {
		// TODO Auto-generated method stub
		return false;
	}

	@Override
	public Sku getDefaultSku() {
		return defaultSku;
	}

	@Override
	public void setDefaultSku(final Sku defaultSku) {
		if (defaultSku != null) {
			defaultSku.setDefaultProduct(this);

		}
		this.defaultSku = defaultSku;
	}

	@Override
	public Boolean getCanSellWithoutOptions() {
		// TODO Auto-generated method stub
		return null;
	}

	@Override
	public void setCanSellWithoutOptions(final Boolean canSellWithoutOptions) {
		// TODO Auto-generated method stub

	}

	@Override
	public List<Sku> getSkus() {
		// TODO Auto-generated method stub
		return null;
	}

	@Override
	public List<Sku> getAdditionalSkus() {
		// TODO Auto-generated method stub
		return null;
	}

	@Override
	public void setAdditionalSkus(final List<Sku> skus) {
		// TODO Auto-generated method stub

	}

	@Override
	public List<Sku> getAllSkus() {
		// TODO Auto-generated method stub
		return null;
	}

	@Override
	public Map<String, Media> getMedia() {
		// TODO Auto-generated method stub
		return null;
	}

	@Override
	public void setMedia(final Map<String, Media> media) {
		// TODO Auto-generated method stub

	}

	@Override
	public Category getCategory() {
		// TODO Auto-generated method stub
		return null;
	}

	@Override
	public void setCategory(final Category category) {
		// TODO Auto-generated method stub

	}

	@Override
	public Category getDefaultCategory() {
		// TODO Auto-generated method stub
		return null;
	}

	@Override
	public void setDefaultCategory(final Category defaultCategory) {
		// TODO Auto-generated method stub

	}

	@Override
	public String getModel() {
		// TODO Auto-generated method stub
		return null;
	}

	@Override
	public void setModel(final String model) {
		// TODO Auto-generated method stub

	}

	@Override
	public String getManufacturer() {
		// TODO Auto-generated method stub
		return null;
	}

	@Override
	public void setManufacturer(final String manufacturer) {
		// TODO Auto-generated method stub

	}

	@Override
	public Dimension getDimension() {
		// TODO Auto-generated method stub
		return null;
	}

	@Override
	public void setDimension(final Dimension dimension) {
		// TODO Auto-generated method stub

	}

	@Override
	public BigDecimal getWidth() {
		// TODO Auto-generated method stub
		return null;
	}

	@Override
	public void setWidth(final BigDecimal width) {
		// TODO Auto-generated method stub

	}

	@Override
	public BigDecimal getHeight() {
		// TODO Auto-generated method stub
		return null;
	}

	@Override
	public void setHeight(final BigDecimal height) {
		// TODO Auto-generated method stub

	}

	@Override
	public BigDecimal getDepth() {
		// TODO Auto-generated method stub
		return null;
	}

	@Override
	public void setDepth(final BigDecimal depth) {
		// TODO Auto-generated method stub

	}

	@Override
	public BigDecimal getGirth() {
		// TODO Auto-generated method stub
		return null;
	}

	@Override
	public void setGirth(final BigDecimal girth) {
		// TODO Auto-generated method stub

	}

	@Override
	public ContainerSizeType getSize() {
		// TODO Auto-generated method stub
		return null;
	}

	@Override
	public void setSize(final ContainerSizeType size) {
		// TODO Auto-generated method stub

	}

	@Override
	public ContainerShapeType getContainer() {
		// TODO Auto-generated method stub
		return null;
	}

	@Override
	public void setContainer(final ContainerShapeType container) {
		// TODO Auto-generated method stub

	}

	@Override
	public String getDimensionString() {
		// TODO Auto-generated method stub
		return null;
	}

	@Override
	public Weight getWeight() {
		// TODO Auto-generated method stub
		return null;
	}

	@Override
	public void setWeight(final Weight weight) {
		// TODO Auto-generated method stub

	}

	@Override
	public List<RelatedProduct> getCrossSaleProducts() {
		// TODO Auto-generated method stub
		return null;
	}

	@Override
	public void setCrossSaleProducts(final List<RelatedProduct> crossSaleProducts) {
		// TODO Auto-generated method stub

	}

	@Override
	public List<RelatedProduct> getUpSaleProducts() {
		// TODO Auto-generated method stub
		return null;
	}

	@Override
	public void setUpSaleProducts(final List<RelatedProduct> upSaleProducts) {
		// TODO Auto-generated method stub

	}

	@Override
	public boolean isFeaturedProduct() {
		// TODO Auto-generated method stub
		return false;
	}

	@Override
	public void setFeaturedProduct(final boolean isFeaturedProduct) {
		// TODO Auto-generated method stub

	}

	@Override
	public Map<String, ProductAttribute> getProductAttributes() {
		// TODO Auto-generated method stub
		return null;
	}

	@Override
	public void setProductAttributes(final Map<String, ProductAttribute> productAttributes) {
		// TODO Auto-generated method stub

	}

	@Override
	public String getPromoMessage() {
		// TODO Auto-generated method stub
		return null;
	}

	@Override
	public void setPromoMessage(final String promoMessage) {
		// TODO Auto-generated method stub

	}

	@Override
	public List<ProductOptionXref> getProductOptionXrefs() {

		return null;
	}

	@Override
	public void setProductOptionXrefs(final List<ProductOptionXref> productOptions) {
		this.productOptions = productOptions;
	}

	@Override
	public List<ProductOption> getProductOptions() {
		final List<ProductOption> response = new ArrayList<ProductOption>();
		for (final ProductOptionXref xref : getProductOptionXrefs()) {
			response.add(xref.getProductOption());
		}
		return Collections.unmodifiableList(response);
	}

	@Override
	public void setProductOptions(final List<ProductOption> productOptions) {
		throw new UnsupportedOperationException("Use setProductOptionXrefs(..) instead");
	}

	@Override
	public Map<String, Set<String>> getProductOptionValuesMap() {
		// TODO Auto-generated method stub
		return null;
	}

	@Override
	public String getUrl() {
		return url;
	}

	@Override
	public void setUrl(final String url) {
		this.url = url;
	}

	@Override
	public Boolean getOverrideGeneratedUrl() {
		// TODO Auto-generated method stub
		return null;
	}

	@Override
	public void setOverrideGeneratedUrl(final Boolean overrideGeneratedUrl) {
		// TODO Auto-generated method stub

	}

	@Override
	public String getUrlKey() {
		// TODO Auto-generated method stub
		return null;
	}

	@Override
	public void setUrlKey(final String url) {
		// TODO Auto-generated method stub

	}

	@Override
	public String getDisplayTemplate() {
		// TODO Auto-generated method stub
		return null;
	}

	@Override
	public void setDisplayTemplate(final String displayTemplate) {
		// TODO Auto-generated method stub

	}

	@Override
	public String getGeneratedUrl() {
		// TODO Auto-generated method stub
		return null;
	}

	@Override
	public List<RelatedProduct> getCumulativeCrossSaleProducts() {
		// TODO Auto-generated method stub
		return null;
	}

	@Override
	public List<RelatedProduct> getCumulativeUpSaleProducts() {
		// TODO Auto-generated method stub
		return null;
	}

	@Override
	public void clearDynamicPrices() {
		// TODO Auto-generated method stub

	}

	@Override
	public List<CategoryProductXref> getAllParentCategoryXrefs() {
		// TODO Auto-generated method stub
		return null;
	}

	@Override
	public void setAllParentCategoryXrefs(final List<CategoryProductXref> allParentCategories) {
		// TODO Auto-generated method stub

	}

	@Override
	public List<Category> getAllParentCategories() {
		// TODO Auto-generated method stub
		return null;
	}

	@Override
	public void setAllParentCategories(final List<Category> allParentCategories) {
		// TODO Auto-generated method stub

	}

	@Override
	public String getTaxCode() {
		// TODO Auto-generated method stub
		return null;
	}

	@Override
	public void setTaxCode(final String taxCode) {
		// TODO Auto-generated method stub

	}

	@Override
	public <G extends Product> CreateResponse<G> createOrRetrieveCopyInstance(final MultiTenantCopyContext context)
			throws CloneNotSupportedException {
		// TODO Auto-generated method stub
		return null;
	}

	@Override
	public Map<String, Media> getAllSkuMedia() {
		// TODO Auto-generated method stub
		return null;
	}

	@Override
	public Map<String, ProductAttribute> getMultiValueProductAttributes() {
		// TODO Auto-generated method stub
		return null;
	}

	@Override
	public boolean hasRetailPrice() {
		// TODO Auto-generated method stub
		return false;
	}

	@Override
	public Money getRetailPrice() {
		// TODO Auto-generated method stub
		return null;
	}

	@Override
	public Money getSalePrice() {
		// TODO Auto-generated method stub
		return null;
	}

	@Override
	public Money getMargin() {
		// TODO Auto-generated method stub
		return null;
	}

	@Override
	public FieldEntity getFieldEntityType() {
		// TODO Auto-generated method stub
		return null;
	}

	@Override
	public Boolean getBoosted() {
		return boosted;
	}

	@Override
	public void setBoosted(Boolean boosted) {
		this.boosted = boosted;
	}
	
	@Override
	public String getUrlImage() {
		return getDefaultSku().getUrlKey();
	}

	@Override
	public void setUrlImage(String urlImage) {
		this.boosted = boosted;
	}

}
