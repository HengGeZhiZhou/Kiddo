package com.cs.kiddo.dao.impl;


import com.cs.kiddo.dao.NewsDao;
import com.cs.kiddo.entity.AbArticles;
import org.hibernate.criterion.DetachedCriteria;
import org.hibernate.criterion.Restrictions;
import org.springframework.context.annotation.Scope;
import org.springframework.stereotype.Repository;

import java.util.List;

@Repository
@Scope("prototype")
public class NewsDaoImpl extends BaseDaoImpl<AbArticles> implements NewsDao{

    @SuppressWarnings("unchecked")
    @Override
    public List<AbArticles> getNews(int type,int begin,int maxSize) {
        DetachedCriteria detachedCriteria=DetachedCriteria.forClass(AbArticles.class);
        detachedCriteria.add(Restrictions.eq("type",type));
        return (List<AbArticles>) this.getHibernateTemplate().findByCriteria(detachedCriteria,begin,maxSize);
    }
}
