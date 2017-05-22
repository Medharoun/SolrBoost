package com.mycompany.core.solr.domain;

import java.lang.reflect.InvocationHandler;
import java.lang.reflect.Method;
import java.lang.reflect.Proxy;
import java.math.BigDecimal;
import java.util.ArrayList;
import java.util.Collections;
import java.util.Date;
import java.util.HashMap;
import java.util.HashSet;
import java.util.List;
import java.util.Map;
import java.util.Set;

import org.apache.commons.beanutils.MethodUtils;
import org.apache.commons.collections.map.MultiValueMap;
import org.apache.commons.lang.StringUtils;
import org.broadleafcommerce.common.copy.CreateResponse;
import org.broadleafcommerce.common.copy.MultiTenantCopyContext;
import org.broadleafcommerce.common.currency.domain.BroadleafCurrency;
import org.broadleafcommerce.common.currency.util.BroadleafCurrencyUtils;
import org.broadleafcommerce.common.media.domain.Media;
import org.broadleafcommerce.common.money.Money;
import org.broadleafcommerce.common.util.DateUtil;
import org.broadleafcommerce.common.web.BroadleafRequestContext;
import org.broadleafcommerce.core.catalog.domain.Category;
import org.broadleafcommerce.core.catalog.domain.Dimension;
import org.broadleafcommerce.core.catalog.domain.Product;
import org.broadleafcommerce.core.catalog.domain.ProductOptionValue;
import org.broadleafcommerce.core.catalog.domain.Sku;
import org.broadleafcommerce.core.catalog.domain.SkuAttribute;
import org.broadleafcommerce.core.catalog.domain.SkuFee;
import org.broadleafcommerce.core.catalog.domain.SkuMediaXref;
import org.broadleafcommerce.core.catalog.domain.SkuMediaXrefImpl;
import org.broadleafcommerce.core.catalog.domain.SkuProductOptionValueXref;
import org.broadleafcommerce.core.catalog.domain.SkuProductOptionValueXrefImpl;
import org.broadleafcommerce.core.catalog.domain.Weight;
import org.broadleafcommerce.core.catalog.service.dynamic.DefaultDynamicSkuPricingInvocationHandler;
import org.broadleafcommerce.core.catalog.service.dynamic.DynamicSkuPrices;
import org.broadleafcommerce.core.catalog.service.dynamic.SkuActiveDateConsiderationContext;
import org.broadleafcommerce.core.catalog.service.dynamic.SkuPricingConsiderationContext;
import org.broadleafcommerce.core.inventory.service.type.InventoryType;
import org.broadleafcommerce.core.order.domain.FulfillmentOption;
import org.broadleafcommerce.core.order.service.type.FulfillmentType;
import org.broadleafcommerce.core.search.domain.FieldEntity;
import org.springframework.util.ClassUtils;

public class SkuHelperImpl implements SkuHelper {

	/**
	 * 
	 */
	private static final long serialVersionUID = 1L;
	
	
	
		protected Long id;
		
		protected String externalId;

	    protected String urlKey;

	    protected String displayTemplate;

	    protected String upc;

	    protected BigDecimal salePrice;

	    protected BigDecimal retailPrice;

	    protected BigDecimal cost;

	    protected String name;

	    protected String description;

	    protected String longDescription;

	    protected String taxCode;

	    protected Character taxable;

	    protected Character discountable;

	    protected Character available;
	    
	    protected Date activeStartDate;

	    protected Date activeEndDate;

	    protected Dimension dimension = new Dimension();

	    protected Weight weight = new Weight();

	    protected DynamicSkuPrices dynamicPrices = null;

	    protected Boolean isMachineSortable;

	    protected Map<String, SkuMediaXref> skuMedia = new HashMap<String, SkuMediaXref>();

	    protected Map<String, Media> legacySkuMedia = new HashMap<String, Media>();

	    protected Product defaultProduct;

	    protected Product product;

	    protected List<SkuAttribute> skuAttributes = new ArrayList<SkuAttribute>();

	    protected Set<SkuProductOptionValueXref> productOptionValueXrefs = new HashSet<SkuProductOptionValueXref>();

	    protected Set<ProductOptionValue> legacyProductOptionValues = new HashSet<ProductOptionValue>();

	    protected List<SkuFee> fees = new ArrayList<SkuFee>();

	    protected Map<FulfillmentOption, BigDecimal> fulfillmentFlatRates = new HashMap<FulfillmentOption, BigDecimal>();

	    protected List<FulfillmentOption> excludedFulfillmentOptions = new ArrayList<FulfillmentOption>();

	    protected String inventoryType;
	    
	    protected Integer quantityAvailable = 0;

	    protected String fulfillmentType;
	    
	    protected BroadleafCurrency currency;

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
	public String getUrlKey() {
		// TODO Auto-generated method stub
		return urlKey;
	}

	@Override
	public void setUrlKey(String url) {
		// TODO Auto-generated method stub
		this.urlKey=url;
	}

	@Override
	public String getDisplayTemplate() {
		// TODO Auto-generated method stub
		return displayTemplate;
	}

	@Override
	public void setDisplayTemplate(String displayTemplate) {
		// TODO Auto-generated method stub
		this.displayTemplate=displayTemplate;
	}

	@Override
	public Money getProductOptionValueAdjustments() {
		// TODO Auto-generated method stub
		return null;
	}

	@Override
	public Money getSalePrice() {
		// TODO Auto-generated method stub
		return salePrice == null ? null : BroadleafCurrencyUtils.getMoney(salePrice,
                getCurrency());
	}

	@Override
	public void setSalePrice(Money salePrice) {
		// TODO Auto-generated method stub
		this.salePrice=Money.toAmount(salePrice);
				
	}

	@Override
	public boolean hasSalePrice() {
		// TODO Auto-generated method stub
		return false;
	}

	@Override
	public Money getRetailPrice() {
		// TODO Auto-generated method stub
		return retailPrice == null ? null : BroadleafCurrencyUtils.getMoney(retailPrice,
                getCurrency());
	}

	@Override
	public void setRetailPrice(Money retailPrice) {
		// TODO Auto-generated method stub
		this.retailPrice=Money.toAmount(retailPrice);
	}

	@Override
	public boolean hasRetailPrice() {
		// TODO Auto-generated method stub
		return false;
	}

	@Override
	public Money getPrice() {
		// TODO Auto-generated method stub
		return null;
	}

	@Override
	public Money getListPrice() {
		// TODO Auto-generated method stub
		return null;
	}

	@Override
	public void setListPrice(Money listPrice) {
		// TODO Auto-generated method stub
		
	}

	@Override
	public Money getCost() {
		// TODO Auto-generated method stub
		return cost == null ? null : BroadleafCurrencyUtils.getMoney(cost,
                getCurrency());
	}

	@Override
	public void setCost(Money cost) {
		// TODO Auto-generated method stub
		this.cost=Money.toAmount(cost);
	}

	@Override
	public Money getMargin() {
		// TODO Auto-generated method stub
		return null;
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
	public String getDescription() {
		// TODO Auto-generated method stub
		return description;
	}

	@Override
	public void setDescription(String description) {
		// TODO Auto-generated method stub
		this.description=description;
	}

	@Override
	public String getLongDescription() {
		// TODO Auto-generated method stub
		return longDescription;
	}

	@Override
	public void setLongDescription(String longDescription) {
		// TODO Auto-generated method stub
		this.longDescription=longDescription;
	}

	@Override
	public Boolean isTaxable() {
		// TODO Auto-generated method stub
		if (taxable == null) {
            if (hasDefaultSku()) {
                return lookupDefaultSku().isTaxable();
            }
            return null;
        }
        return taxable == 'Y' ? Boolean.TRUE : Boolean.FALSE;
	}

	private Sku lookupDefaultSku() {
		// TODO Auto-generated method stub
		if (product != null && product.getDefaultSku() != null) {
            return product.getDefaultSku();
        } else {
            return null;
        }
	}

	private boolean hasDefaultSku() {
		// TODO Auto-generated method stub
		return (product != null && product.getDefaultSku() != null && !getId().equals(product.getDefaultSku().getId()));
	}

	@Override
	public Boolean getTaxable() {
		// TODO Auto-generated method stub
		return isTaxable();
	}

	@Override
	public void setTaxable(Boolean taxable) {
		// TODO Auto-generated method stub
		 if (taxable == null) {
	            this.taxable = null;
	        } else {
	            this.taxable = taxable ? 'Y' : 'N';
	        }
	}

	@Override
	public Boolean isDiscountable() {
		// TODO Auto-generated method stub
		if (discountable == null) {
            if (hasDefaultSku()) {
                return lookupDefaultSku().isDiscountable();
            }
            return Boolean.FALSE;
        }
        return discountable == 'Y' ? Boolean.TRUE : Boolean.FALSE;
	}

	@Override
	public void setDiscountable(Boolean discountable) {
		// TODO Auto-generated method stub
		 if (discountable == null) {
	            this.discountable = null;
	        } else {
	            this.discountable = discountable ? 'Y' : 'N';
	        }
	}

	@Override
	public Boolean isAvailable() {
		// TODO Auto-generated method stub
		if (InventoryType.UNAVAILABLE.equals(getInventoryType())) {
            return false;
        }
        
        if (available == null) {
            if (hasDefaultSku()) {
                return lookupDefaultSku().isAvailable();
            }
            return true;
        }
        return available != 'N';
	}

	@Override
	public Boolean getAvailable() {
		// TODO Auto-generated method stub
		return isAvailable();
	}

	@Override
	public void setAvailable(Boolean available) {
		// TODO Auto-generated method stub
		if (available == null) {
            this.available = null;
        } else {
            this.available = available ? 'Y' : 'N';
        }
	}

	@Override
	public Date getActiveStartDate() {
		// TODO Auto-generated method stub
		Date returnDate = null;
        if (SkuActiveDateConsiderationContext.hasDynamicActiveDates()) {
            returnDate = SkuActiveDateConsiderationContext.getSkuActiveDatesService().getDynamicSkuActiveStartDate(this);
        }

        if (returnDate == null) {
            if (activeStartDate == null && hasDefaultSku()) {
                return lookupDefaultSku().getActiveStartDate();
            } else {
                return activeStartDate;
            }
        } else {
            return returnDate;
        }
	}

	@Override
	public void setActiveStartDate(Date activeStartDate) {
		// TODO Auto-generated method stub
		this.activeStartDate = activeStartDate;
	}

	@Override
	public Date getActiveEndDate() {
		// TODO Auto-generated method stub
		Date returnDate = null;
        if (SkuActiveDateConsiderationContext.hasDynamicActiveDates()) {
            returnDate = SkuActiveDateConsiderationContext.getSkuActiveDatesService().getDynamicSkuActiveEndDate(this);
        }

        if (returnDate == null) {
            if (activeEndDate == null && hasDefaultSku()) {
                return lookupDefaultSku().getActiveEndDate();
            } else {
                return activeEndDate;
            }
        } else {
            return returnDate;
        }
	}

	@Override
	public void setActiveEndDate(Date activeEndDate) {
		// TODO Auto-generated method stub
		this.activeEndDate = activeEndDate;
	}

	@Override
	public Dimension getDimension() {
		// TODO Auto-generated method stub
		if (dimension == null && hasDefaultSku()) {
            return lookupDefaultSku().getDimension();
        } else {
            return dimension;
        }
	}

	@Override
	public void setDimension(Dimension dimension) {
		// TODO Auto-generated method stub
		this.dimension=dimension;
	}

	@Override
	public Weight getWeight() {
		if (weight == null && hasDefaultSku()) {
            return lookupDefaultSku().getWeight();
        } else {
            return weight;
        }
	}

	@Override
	public void setWeight(Weight weight) {
		// TODO Auto-generated method stub
		this.weight = weight;
	}

	@Override
	public boolean isActive() {
		if (activeStartDate == null && activeEndDate == null && hasDefaultSku()) {
            return lookupDefaultSku().isActive();
        }
        return DateUtil.isActive(getActiveStartDate(), getActiveEndDate(), true);
    }

	@Override
	public Map<String, Media> getSkuMedia() {
		 if (legacySkuMedia.size() == 0) {
	            for (Map.Entry<String, SkuMediaXref> entry : getSkuMediaXref().entrySet()) {
	                legacySkuMedia.put(entry.getKey(), entry.getValue().getMedia());
	            }
	        }
	     return Collections.unmodifiableMap(legacySkuMedia);
	}

	@Override
	public void setSkuMedia(Map<String, Media> skuMedia) {
		// TODO Auto-generated method stub
		 this.skuMedia.clear();
	        this.legacySkuMedia.clear();
	        for(Map.Entry<String, Media> entry : skuMedia.entrySet()){
	            this.skuMedia.put(entry.getKey(), new SkuMediaXrefImpl(this, entry.getValue(), entry.getKey()));
	        }
	}

	@Override
	public Map<String, SkuMediaXref> getSkuMediaXref() {
		// TODO Auto-generated method stub
		if (skuMedia == null || skuMedia.isEmpty()) {
            if (hasDefaultSku()) {
                return lookupDefaultSku().getSkuMediaXref();
            }
        }
        return skuMedia;
	}

	@Override
	public void setSkuMediaXref(Map<String, SkuMediaXref> skuMediaXref) {
		// TODO Auto-generated method stub
		this.skuMedia = skuMediaXref;
	}

	@Override
	public boolean isActive(Product product, Category category) {
		// TODO Auto-generated method stub
        return this.isActive() && (product == null || product.isActive()) && (category == null || category.isActive());
    
	}

	@Override
	public Map<String, SkuAttribute> getSkuAttributes() {
		Map<String, SkuAttribute> attributeMap = new HashMap<String, SkuAttribute>();

        for (SkuAttribute skuAttribute : skuAttributes) {
            attributeMap.put(skuAttribute.getName(), skuAttribute);
        }

        return attributeMap;
	}

	@Override
	public Map<String, SkuAttribute> getMultiValueSkuAttributes() {
		Map<String, SkuAttribute> multiValueMap = new MultiValueMap();

        for (SkuAttribute skuAttribute : skuAttributes) {
            multiValueMap.put(skuAttribute.getName(), skuAttribute);
        }

        return multiValueMap;
	}

	@Override
	public void setSkuAttributes(Map<String, SkuAttribute> skuAttributes) {
		List<SkuAttribute> skuAttributeList = new ArrayList<SkuAttribute>();

        for(Map.Entry<String, SkuAttribute> entry : skuAttributes.entrySet()){
            skuAttributeList.add(entry.getValue());
        }

        this.skuAttributes = skuAttributeList;
		
	}

	@Override
	public List<ProductOptionValue> getProductOptionValues() {
		 return (List<ProductOptionValue>) Proxy.newProxyInstance(getClass().getClassLoader(), new Class<?>[]{List.class}, new InvocationHandler() {
	            @Override
	            public Object invoke(Object proxy, Method method, Object[] args) throws Throwable {
	                return MethodUtils.invokeMethod(getProductOptionValuesCollection(), method.getName(), args, method.getParameterTypes());
	            }
	      });
	}

	@Override
	public void setProductOptionValues(List<ProductOptionValue> productOptionValues) {
		// TODO Auto-generated method stub
        setProductOptionValuesCollection(new HashSet<ProductOptionValue>(productOptionValues));

	}

	@Override
	public Set<ProductOptionValue> getProductOptionValuesCollection() {
		if (legacyProductOptionValues.size() == 0) {
            for (SkuProductOptionValueXref xref : productOptionValueXrefs) {
                legacyProductOptionValues.add(xref.getProductOptionValue());
            }
        }
        return Collections.unmodifiableSet(legacyProductOptionValues);
	}

	@Override
	public void setProductOptionValuesCollection(Set<ProductOptionValue> productOptionValues) {
		// TODO Auto-generated method stub
		 this.legacyProductOptionValues.clear();
	        this.productOptionValueXrefs.clear();
	        for (ProductOptionValue val : productOptionValues) {
	            this.productOptionValueXrefs.add(new SkuProductOptionValueXrefImpl(this, val));
	        }
	}

	@Override
	public Set<SkuProductOptionValueXref> getProductOptionValueXrefs() {
		// TODO Auto-generated method stub
		return productOptionValueXrefs;
	}

	@Override
	public void setProductOptionValueXrefs(Set<SkuProductOptionValueXref> productOptionValueXrefs) {
		// TODO Auto-generated method stub
		this.productOptionValueXrefs = productOptionValueXrefs;
	}

	@Override
	public Product getDefaultProduct() {
		// TODO Auto-generated method stub
		return defaultProduct;
	}

	@Override
	public void setDefaultProduct(Product product) {
		this.defaultProduct = defaultProduct;
	}

	@Override
	public Product getProduct() {
		// TODO Auto-generated method stub
		return product;
	}

	@Override
	public void setProduct(Product product) {
		// TODO Auto-generated method stub
		this.product=product;
	}

	@Override
	public boolean isOnSale() {
		  Money retailPrice = getRetailPrice();
	        Money salePrice = getSalePrice();
	        return (salePrice != null && !salePrice.isZero() && salePrice.lessThan(retailPrice));
	   
	}

	@Override
	public Boolean isMachineSortable() {
		if (isMachineSortable == null && hasDefaultSku()) {
            return lookupDefaultSku().isMachineSortable();
        }
        return isMachineSortable == null ? false : isMachineSortable;
	}

	@Override
	public Boolean getIsMachineSortable() {
		if (isMachineSortable == null && hasDefaultSku()) {
            return lookupDefaultSku().getIsMachineSortable();
        }
        return isMachineSortable == null ? false : isMachineSortable;
	}

	@Override
	public void setMachineSortable(Boolean isMachineSortable) {
		// TODO Auto-generated method stub
		this.isMachineSortable = isMachineSortable;
	}

	@Override
	public void setIsMachineSortable(Boolean isMachineSortable) {
		// TODO Auto-generated method stub
		this.isMachineSortable = isMachineSortable;
	}

	@Override
	public List<SkuFee> getFees() {
		// TODO Auto-generated method stub
		return fees;
	}

	@Override
	public void setFees(List<SkuFee> fees) {
		// TODO Auto-generated method stub
		this.fees = fees;
	}

	@Override
	public Map<FulfillmentOption, BigDecimal> getFulfillmentFlatRates() {
		// TODO Auto-generated method stub
		return fulfillmentFlatRates;
	}

	@Override
	public void setFulfillmentFlatRates(Map<FulfillmentOption, BigDecimal> fulfillmentFlatRates) {
		// TODO Auto-generated method stub
		this.fulfillmentFlatRates = fulfillmentFlatRates;
	}

	@Override
	public List<FulfillmentOption> getExcludedFulfillmentOptions() {
		// TODO Auto-generated method stub
		return excludedFulfillmentOptions;
	}

	@Override
	public void setExcludedFulfillmentOptions(List<FulfillmentOption> excludedFulfillmentOptions) {
		// TODO Auto-generated method stub
		this.excludedFulfillmentOptions = excludedFulfillmentOptions;
	}

	@Override
	public InventoryType getInventoryType() {
		// TODO Auto-generated method stub
		if (StringUtils.isEmpty(this.inventoryType)) {
            if (hasDefaultSku() && lookupDefaultSku().getInventoryType() != null) {
                return lookupDefaultSku().getInventoryType();
            } else if (getProduct() != null && getProduct().getDefaultCategory() != null) {
                return getProduct().getDefaultCategory().getInventoryType();
            }
            return null;
        }
        return InventoryType.getInstance(this.inventoryType);
	}

	@Override
	public void setInventoryType(InventoryType inventoryType) {
		// TODO Auto-generated method stub
        this.inventoryType = (inventoryType == null) ? null : inventoryType.getType();
	}

	@Override
	public Integer getQuantityAvailable() {
		// TODO Auto-generated method stub
		return quantityAvailable;
	}

	@Override
	public void setQuantityAvailable(Integer quantityAvailable) {
		// TODO Auto-generated method stub
		this.quantityAvailable = quantityAvailable;
	}

	@Override
	public FulfillmentType getFulfillmentType() {
		if (StringUtils.isEmpty(this.fulfillmentType)) {
            if (hasDefaultSku() && lookupDefaultSku().getFulfillmentType() != null) {
                return lookupDefaultSku().getFulfillmentType();
            } else if (getProduct() != null && getProduct().getDefaultCategory() != null) {
                return getProduct().getDefaultCategory().getFulfillmentType();
            }
            return null;
        }
        return FulfillmentType.getInstance(this.fulfillmentType);
	}

	@Override
	public void setFulfillmentType(FulfillmentType fulfillmentType) {
		// TODO Auto-generated method stub
		if (fulfillmentType != null) {
            this.fulfillmentType = fulfillmentType.getType();
        }
	}

	@Override
	public void clearDynamicPrices() {
		// TODO Auto-generated method stub
		this.dynamicPrices = null;
	}

	@Override
	public void setCurrency(BroadleafCurrency currency) {
		// TODO Auto-generated method stub
		this.currency = currency;
	}

	@Override
	public BroadleafCurrency getCurrency() {
		if (currency == null && hasDefaultSku()) {
            return lookupDefaultSku().getCurrency();
        } else {
            return currency;
        }
	}

	@Override
	public String getTaxCode() {
		 if (StringUtils.isEmpty(this.taxCode)) {
	            if (hasDefaultSku() && !StringUtils.isEmpty(lookupDefaultSku().getTaxCode())) {
	                return lookupDefaultSku().getTaxCode();
	            } else if (getProduct() != null && getProduct().getDefaultCategory() != null) {
	                return getProduct().getDefaultCategory().getTaxCode();
	            }
	        }
	        return this.taxCode;
	}

	@Override
	public void setTaxCode(String taxCode) {
		// TODO Auto-generated method stub
		 this.taxCode = taxCode;
	}

	@Override
	public String getUpc() {
		// TODO Auto-generated method stub
		return upc;
	}

	@Override
	public void setUpc(String upc) {
		// TODO Auto-generated method stub
        this.upc = upc;
	}

	@Override
	public String getExternalId() {
		// TODO Auto-generated method stub
		return externalId;
	}

	@Override
	public void setExternalId(String externalId) {
		// TODO Auto-generated method stub
		this.externalId = externalId;
	}

	@Override
	public DynamicSkuPrices getPriceData() {
		if (SkuPricingConsiderationContext.hasDynamicPricing()) {
            if (dynamicPrices == null) {
                DefaultDynamicSkuPricingInvocationHandler handler = new DefaultDynamicSkuPricingInvocationHandler(this);
                Sku proxy = (Sku) Proxy.newProxyInstance(getClass().getClassLoader(), ClassUtils.getAllInterfacesForClass(getClass()), handler);

                dynamicPrices = SkuPricingConsiderationContext.getSkuPricingService().getSkuPrices(proxy, SkuPricingConsiderationContext.getSkuPricingConsiderationContext());
            }
            return dynamicPrices;
        } else {
            DynamicSkuPrices dsp = new DynamicSkuPrices();
            BroadleafCurrency tmpCurrency;
            if (currency != null) {
                tmpCurrency = currency;
            } else {
                tmpCurrency = BroadleafRequestContext.getCurrency();
            }
            if (retailPrice != null) {
                dsp.setRetailPrice(new Money(retailPrice, tmpCurrency));
            }
            if (salePrice != null) {
                dsp.setSalePrice(new Money(salePrice, tmpCurrency));
            }
            return dsp;
        }
	}

	@Override
	public <G extends Sku> CreateResponse<G> createOrRetrieveCopyInstance(MultiTenantCopyContext context)
			throws CloneNotSupportedException {
		CreateResponse<G> createResponse = context.createOrRetrieveCopyInstance(this);
        if (createResponse.isAlreadyPopulated()) {
            return createResponse;
        }
        Sku cloned = createResponse.getClone();
        cloned.setRetailPrice(getRetailPrice());
        cloned.setSalePrice(getSalePrice());
        cloned.setName(name);
        cloned.setActiveEndDate(activeEndDate);
        cloned.setActiveStartDate(activeStartDate);
        cloned.setCurrency(currency);
        cloned.setQuantityAvailable(quantityAvailable);
        cloned.setDescription(description);
        cloned.setDimension(dimension);
        cloned.setDiscountable(isDiscountable());
        cloned.setDisplayTemplate(displayTemplate);
        cloned.setExternalId(externalId);
        cloned.setTaxable(isTaxable());
        cloned.setTaxCode(taxCode);
        cloned.setUrlKey(urlKey);
        cloned.setInventoryType(getInventoryType());
        cloned.setFulfillmentType(getFulfillmentType());
        cloned.setIsMachineSortable(isMachineSortable);
        cloned.setLongDescription(longDescription);
        cloned.setUpc(upc);
        if (product != null) {
            cloned.setDefaultProduct(product.createOrRetrieveCopyInstance(context).getClone());
        }
        if (product != null) {
            cloned.setProduct(product.createOrRetrieveCopyInstance(context).getClone());
        }
        for(Map.Entry<String, SkuAttribute> entry : getSkuAttributes().entrySet()){
            SkuAttribute clonedEntry = entry.getValue().createOrRetrieveCopyInstance(context).getClone();
            cloned.getSkuAttributes().put(entry.getKey(),clonedEntry);
        }
        for(SkuProductOptionValueXref entry : productOptionValueXrefs){
            SkuProductOptionValueXref clonedEntry = entry.createOrRetrieveCopyInstance(context).getClone();
            cloned.getProductOptionValueXrefs().add(clonedEntry);
        }
        for(Map.Entry<String, SkuMediaXref> entry : skuMedia.entrySet()){
            SkuMediaXrefImpl clonedEntry = ((SkuMediaXrefImpl)entry.getValue()).createOrRetrieveCopyInstance(context).getClone();
            cloned.getSkuMediaXref().put(entry.getKey(),clonedEntry);
        }
        for(FulfillmentOption entry : excludedFulfillmentOptions){
            FulfillmentOption clonedEntry = entry.createOrRetrieveCopyInstance(context).getClone();
            cloned.getExcludedFulfillmentOptions().add(clonedEntry);
        }
        for(Map.Entry<FulfillmentOption, BigDecimal> entry : fulfillmentFlatRates.entrySet()){
            FulfillmentOption clonedEntry = entry.getKey().createOrRetrieveCopyInstance(context).getClone();
            cloned.getFulfillmentFlatRates().put(clonedEntry,entry.getValue());
        }

        return  createResponse;
	}

	@Override
	public FieldEntity getFieldEntityType() {
		// TODO Auto-generated method stub
		return FieldEntity.SKU;
	}

}
