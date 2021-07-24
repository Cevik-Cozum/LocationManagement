package com.cevikcozum.service.template.controller;

import com.cevikcozum.service.template.entity.Test;
import com.cevikcozum.service.template.service.TestService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RestController;

@RestController
@RequestMapping("/test")
public class TestController {

    final TestService testService;

    @Autowired
    public TestController(TestService testService) {
        this.testService = testService;
    }

    @RequestMapping("/ok")
    public String ok() {
        return "ok";
    }

    @RequestMapping("/{id}")
    public Test getById(@PathVariable("id") String id) {
        return testService.findById(id);
    }

}
