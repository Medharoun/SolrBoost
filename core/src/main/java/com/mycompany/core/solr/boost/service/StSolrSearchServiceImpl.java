package com.mycompany.core.solr.boost.service;

import java.util.ArrayList;
import java.util.List;

import javax.annotation.Resource;

import org.apache.commons.collections.CollectionUtils;
import org.apache.solr.common.SolrDocument;
import org.broadleafcommerce.common.exception.ServiceException;
import org.broadleafcommerce.core.catalog.domain.Category;
import org.broadleafcommerce.core.catalog.domain.Product;
import org.broadleafcommerce.core.catalog.service.CatalogService;
import org.broadleafcommerce.core.search.domain.SearchCriteria;
import org.broadleafcommerce.core.search.domain.SearchFacetDTO;
import org.broadleafcommerce.core.search.domain.SearchResult;
import org.broadleafcommerce.core.search.service.solr.SolrSearchServiceImpl;
import org.springframework.stereotype.Service;

import com.mycompany.core.solr.boost.dao.SolrBoostDao;
import com.mycompany.core.solr.boost.domain.BoostProduct;
import com.mycompany.core.solr.boost.domain.SolrBoostFieldValue;
import com.mycompany.core.solr.boost.domain.StProduct;

@Service("StSolrSearchServiceImpl")
public class StSolrSearchServiceImpl extends SolrSearchServiceImpl implements StSolrSearchService{
	
	@Resource(name = "solrBoostDao")
	private SolrBoostDao dao;
	
	@Resource(name= "blCatalogService")
	private CatalogService catalogServiceImpl;
	
	private Category category;
	
	@Override
	protected List<Product> getProducts(List<SolrDocument> responseDocuments) {
		List<Product> stProducts = new ArrayList<>();
		List<SolrBoostFieldValue> boosts = dao.getAllBoosts();
		List<Product> products = new ArrayList<>();
		
		
		
		for (SolrBoostFieldValue value : boosts){
			if (value instanceof BoostProduct){
				StProduct product = (StProduct) ((BoostProduct)value).getProduct();
				if(product.getCategory().equals(category)){
				product.setBoosted(true);
				stProducts.add(product);
			}
			}
		}
		
		List<Product> pProducts = super.getProducts(responseDocuments);
		if(CollectionUtils.isNotEmpty(pProducts)){
			for (Product p : pProducts){
				if (products.indexOf(p)==-1){
					stProducts.add(p);
					}
				}
		}
		return stProducts;
	}
	
	
	@Override
	public SearchResult findSearchResults(SearchCriteria searchCriteria) throws ServiceException {
		category=searchCriteria.getCategory();
		return super.findSearchResults(searchCriteria);
	}
	
	@Override
	protected SearchResult findSearchResults(String qualifiedSolrQuery, List<SearchFacetDTO> facets,
			SearchCriteria searchCriteria, String defaultSort, String... filterQueries) throws ServiceException {
		
		return super.findSearchResults(qualifiedSolrQuery, facets, searchCriteria, defaultSort, filterQueries);
	}

	
	
//	public class ProductComparator implements Comparator<StProduct>{
//
//		@Override
//		public int compare(StProduct o1, StProduct o2) {
//			// TODO Auto-generated method stub
//			return o1.isBoosted() == o2.isBoosted() ? 0 : (o1.isBoosted() ? 1 : -1);
//		}
//	}
}
