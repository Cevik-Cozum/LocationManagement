package com.cevikcozum.service.template.service.impl;

import com.cevikcozum.service.template.entity.Test;
import com.cevikcozum.service.template.repository.TestRepository;
import com.cevikcozum.service.template.service.TestService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

@Service
public class TestServiceImpl implements TestService {

    @Autowired
    TestRepository testRepository;

    @Override
    public Test findById(String id) {
        return testRepository.findById(id).get();
    }
}
