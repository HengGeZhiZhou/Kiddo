package com.cs.kiddo.service.impl;


import com.cs.kiddo.service.SchoolService;
import org.springframework.context.annotation.Scope;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;


@Service
@Transactional
@Scope("prototype")
public class SchoolServiceImpl implements SchoolService{
}
