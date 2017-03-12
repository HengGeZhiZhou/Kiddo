package com.cs.kiddo.dao.impl;


import com.cs.kiddo.dao.UserDao;
import com.cs.kiddo.entity.User;
import org.springframework.context.annotation.Scope;
import org.springframework.stereotype.Repository;

import java.util.List;

@Repository
@Scope("prototype")
public class UserDaoImpl extends BaseDaoImpl<User> implements UserDao {

    @Override
    @SuppressWarnings("unchecked")
    public User getUser(String account) {
        String hql="from User where account=?";
        List<User> list= (List<User>) this.getHibernateTemplate().find(hql,account);
        if (list!=null) return list.get(0);
        return null;
    }

    @Override
    @SuppressWarnings("unchecked")
    public String getMaxId() {
        String hql = "select max(id) from User ";
        List<String> list = (List<String>) this.getHibernateTemplate().find(hql);
        if (list != null) return list.get(0);
        return null;
    }
}
