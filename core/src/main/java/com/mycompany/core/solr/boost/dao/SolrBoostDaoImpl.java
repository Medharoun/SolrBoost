package com.mycompany.core.solr.boost.dao;

import java.util.List;

import javax.persistence.EntityManager;
import javax.persistence.PersistenceContext;
import javax.persistence.TypedQuery;

import org.springframework.stereotype.Repository;

import com.mycompany.core.solr.boost.domain.RdrSolrBoost;

@Repository("solrBoostDao")
public class SolrBoostDaoImpl implements SolrBoostDao{

	@PersistenceContext(unitName="blPU")
    protected EntityManager em;
	
	@Override
	public List<RdrSolrBoost> getAllBoosts() {
		TypedQuery<RdrSolrBoost> query = em.createNamedQuery("SOLR_BOOST_ALL_FIELDS", RdrSolrBoost.class);
		return query.getResultList();
	}

}
