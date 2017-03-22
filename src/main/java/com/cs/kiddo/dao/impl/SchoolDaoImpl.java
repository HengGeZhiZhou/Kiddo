package com.cs.kiddo.dao.impl;


import com.cs.kiddo.dao.SchoolDao;
import com.cs.kiddo.entity.School;
import org.springframework.context.annotation.Scope;
import org.springframework.stereotype.Repository;

@Repository
@Scope("prototype")
public class SchoolDaoImpl extends BaseDaoImpl<School> implements SchoolDao {
}
