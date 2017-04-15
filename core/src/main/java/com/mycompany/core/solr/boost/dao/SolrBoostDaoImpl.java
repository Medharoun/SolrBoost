package com.mycompany.core.solr.boost.dao;

import java.util.List;

import javax.persistence.EntityManager;
import javax.persistence.PersistenceContext;
import javax.persistence.TypedQuery;

import org.springframework.stereotype.Repository;

import com.mycompany.core.solr.boost.domain.BoostCategory;
import com.mycompany.core.solr.boost.domain.BoostProduct;
import com.mycompany.core.solr.boost.domain.BoostQuery;
import com.mycompany.core.solr.boost.domain.RdrSolrBoost;
import com.mycompany.core.solr.boost.domain.SolrBoostFieldValue;

@Repository("solrBoostDao")
public class SolrBoostDaoImpl implements SolrBoostDao{

	@PersistenceContext(unitName="blPU")
    protected EntityManager em;
	
	@Override
	public List<RdrSolrBoost> getAllFieldBoosted() {
		TypedQuery<RdrSolrBoost> query = em.createNamedQuery("SOLR_BOOST_ALL_FIELDS", RdrSolrBoost.class);
		return query.getResultList();
	}

	@Override
	public List<BoostCategory> getAllCategroryBoosted() {
		TypedQuery<BoostCategory> query = em.createNamedQuery("SOLR_BOOST_ALL_CATEGORIES", BoostCategory.class);
		return query.getResultList();
	}

	@Override
	public List<BoostProduct> getAllProductBoosted() {
		TypedQuery<BoostProduct> query = em.createNamedQuery("SOLR_BOOST_ALL_PRODUCTS", BoostProduct.class);
		return query.getResultList();
	}

	@Override
	public List<BoostQuery> getAllQueryBoosted() {
		TypedQuery<BoostQuery> query = em.createNamedQuery("SOLR_BOOST_ALL_QUERIES", BoostQuery.class);
		return query.getResultList();
	}

	@Override
	public List<SolrBoostFieldValue> getAllBoosts() {
		TypedQuery<SolrBoostFieldValue> query = em.createNamedQuery("SOLR_BOOST_ALL_BOOSTS", SolrBoostFieldValue.class);
		return query.getResultList();
	}

}
