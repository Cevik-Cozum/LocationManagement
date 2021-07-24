package com.cevikcozum.service.template.service;

import com.cevikcozum.service.template.entity.Test;
import org.springframework.stereotype.Service;

public interface TestService {
    Test findById(String id);
}
