package com.mycompany.core.solr.domain;

import java.math.BigDecimal;
import java.util.Date;
import java.util.List;
import java.util.Map;
import java.util.Set;

import org.broadleafcommerce.common.copy.CreateResponse;
import org.broadleafcommerce.common.copy.MultiTenantCopyContext;
import org.broadleafcommerce.common.media.domain.Media;
import org.broadleafcommerce.common.money.Money;
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

public class ProductHelperImpl implements ProductHelper{

	@Override
	public Long getId() {
		// TODO Auto-generated method stub
		return null;
	}

	@Override
	public void setId(Long id) {
		// TODO Auto-generated method stub
		
	}

	@Override
	public String getName() {
		// TODO Auto-generated method stub
		return null;
	}

	@Override
	public void setName(String name) {
		// TODO Auto-generated method stub
		
	}

	@Override
	public String getDescription() {
		// TODO Auto-generated method stub
		return null;
	}

	@Override
	public void setDescription(String description) {
		// TODO Auto-generated method stub
		
	}

	@Override
	public String getLongDescription() {
		// TODO Auto-generated method stub
		return null;
	}

	@Override
	public void setLongDescription(String longDescription) {
		// TODO Auto-generated method stub
		
	}

	@Override
	public Date getActiveStartDate() {
		// TODO Auto-generated method stub
		return null;
	}

	@Override
	public void setActiveStartDate(Date activeStartDate) {
		// TODO Auto-generated method stub
		
	}

	@Override
	public Date getActiveEndDate() {
		// TODO Auto-generated method stub
		return null;
	}

	@Override
	public void setActiveEndDate(Date activeEndDate) {
		// TODO Auto-generated method stub
		
	}

	@Override
	public boolean isActive() {
		// TODO Auto-generated method stub
		return false;
	}

	@Override
	public Sku getDefaultSku() {
		// TODO Auto-generated method stub
		return null;
	}

	@Override
	public void setDefaultSku(Sku defaultSku) {
		// TODO Auto-generated method stub
		
	}

	@Override
	public Boolean getCanSellWithoutOptions() {
		// TODO Auto-generated method stub
		return null;
	}

	@Override
	public void setCanSellWithoutOptions(Boolean canSellWithoutOptions) {
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
	public void setAdditionalSkus(List<Sku> skus) {
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
	public void setMedia(Map<String, Media> media) {
		// TODO Auto-generated method stub
		
	}

	@Override
	public Map<String, Media> getAllSkuMedia() {
		// TODO Auto-generated method stub
		return null;
	}

	@Override
	public Category getCategory() {
		// TODO Auto-generated method stub
		return null;
	}

	@Override
	public void setCategory(Category category) {
		// TODO Auto-generated method stub
		
	}

	@Override
	public Category getDefaultCategory() {
		// TODO Auto-generated method stub
		return null;
	}

	@Override
	public void setDefaultCategory(Category defaultCategory) {
		// TODO Auto-generated method stub
		
	}

	@Override
	public String getModel() {
		// TODO Auto-generated method stub
		return null;
	}

	@Override
	public void setModel(String model) {
		// TODO Auto-generated method stub
		
	}

	@Override
	public String getManufacturer() {
		// TODO Auto-generated method stub
		return null;
	}

	@Override
	public void setManufacturer(String manufacturer) {
		// TODO Auto-generated method stub
		
	}

	@Override
	public Dimension getDimension() {
		// TODO Auto-generated method stub
		return null;
	}

	@Override
	public void setDimension(Dimension dimension) {
		// TODO Auto-generated method stub
		
	}

	@Override
	public BigDecimal getWidth() {
		// TODO Auto-generated method stub
		return null;
	}

	@Override
	public void setWidth(BigDecimal width) {
		// TODO Auto-generated method stub
		
	}

	@Override
	public BigDecimal getHeight() {
		// TODO Auto-generated method stub
		return null;
	}

	@Override
	public void setHeight(BigDecimal height) {
		// TODO Auto-generated method stub
		
	}

	@Override
	public BigDecimal getDepth() {
		// TODO Auto-generated method stub
		return null;
	}

	@Override
	public void setDepth(BigDecimal depth) {
		// TODO Auto-generated method stub
		
	}

	@Override
	public BigDecimal getGirth() {
		// TODO Auto-generated method stub
		return null;
	}

	@Override
	public void setGirth(BigDecimal girth) {
		// TODO Auto-generated method stub
		
	}

	@Override
	public ContainerSizeType getSize() {
		// TODO Auto-generated method stub
		return null;
	}

	@Override
	public void setSize(ContainerSizeType size) {
		// TODO Auto-generated method stub
		
	}

	@Override
	public ContainerShapeType getContainer() {
		// TODO Auto-generated method stub
		return null;
	}

	@Override
	public void setContainer(ContainerShapeType container) {
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
	public void setWeight(Weight weight) {
		// TODO Auto-generated method stub
		
	}

	@Override
	public List<RelatedProduct> getCrossSaleProducts() {
		// TODO Auto-generated method stub
		return null;
	}

	@Override
	public void setCrossSaleProducts(List<RelatedProduct> crossSaleProducts) {
		// TODO Auto-generated method stub
		
	}

	@Override
	public List<RelatedProduct> getUpSaleProducts() {
		// TODO Auto-generated method stub
		return null;
	}

	@Override
	public void setUpSaleProducts(List<RelatedProduct> upSaleProducts) {
		// TODO Auto-generated method stub
		
	}

	@Override
	public boolean isFeaturedProduct() {
		// TODO Auto-generated method stub
		return false;
	}

	@Override
	public void setFeaturedProduct(boolean isFeaturedProduct) {
		// TODO Auto-generated method stub
		
	}

	@Override
	public Map<String, ProductAttribute> getProductAttributes() {
		// TODO Auto-generated method stub
		return null;
	}

	@Override
	public Map<String, ProductAttribute> getMultiValueProductAttributes() {
		// TODO Auto-generated method stub
		return null;
	}

	@Override
	public void setProductAttributes(Map<String, ProductAttribute> productAttributes) {
		// TODO Auto-generated method stub
		
	}

	@Override
	public String getPromoMessage() {
		// TODO Auto-generated method stub
		return null;
	}

	@Override
	public void setPromoMessage(String promoMessage) {
		// TODO Auto-generated method stub
		
	}

	@Override
	public List<ProductOption> getProductOptions() {
		// TODO Auto-generated method stub
		return null;
	}

	@Override
	public List<ProductOptionXref> getProductOptionXrefs() {
		// TODO Auto-generated method stub
		return null;
	}

	@Override
	public void setProductOptions(List<ProductOption> productOptions) {
		// TODO Auto-generated method stub
		
	}

	@Override
	public void setProductOptionXrefs(List<ProductOptionXref> productOptions) {
		// TODO Auto-generated method stub
		
	}

	@Override
	public Map<String, Set<String>> getProductOptionValuesMap() {
		// TODO Auto-generated method stub
		return null;
	}

	@Override
	public String getUrl() {
		// TODO Auto-generated method stub
		return null;
	}

	@Override
	public void setUrl(String url) {
		// TODO Auto-generated method stub
		
	}

	@Override
	public Boolean getOverrideGeneratedUrl() {
		// TODO Auto-generated method stub
		return null;
	}

	@Override
	public void setOverrideGeneratedUrl(Boolean overrideGeneratedUrl) {
		// TODO Auto-generated method stub
		
	}

	@Override
	public String getUrlKey() {
		// TODO Auto-generated method stub
		return null;
	}

	@Override
	public void setUrlKey(String url) {
		// TODO Auto-generated method stub
		
	}

	@Override
	public String getDisplayTemplate() {
		// TODO Auto-generated method stub
		return null;
	}

	@Override
	public void setDisplayTemplate(String displayTemplate) {
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
	public void setAllParentCategoryXrefs(List<CategoryProductXref> allParentCategories) {
		// TODO Auto-generated method stub
		
	}

	@Override
	public List<Category> getAllParentCategories() {
		// TODO Auto-generated method stub
		return null;
	}

	@Override
	public void setAllParentCategories(List<Category> allParentCategories) {
		// TODO Auto-generated method stub
		
	}

	@Override
	public String getTaxCode() {
		// TODO Auto-generated method stub
		return null;
	}

	@Override
	public void setTaxCode(String taxCode) {
		// TODO Auto-generated method stub
		
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
	public <G extends Product> CreateResponse<G> createOrRetrieveCopyInstance(MultiTenantCopyContext context)
			throws CloneNotSupportedException {
		// TODO Auto-generated method stub
		return null;
	}

	@Override
	public FieldEntity getFieldEntityType() {
		// TODO Auto-generated method stub
		return null;
	}

}
