package com.cevikcozum.service.template.exception;

import lombok.Getter;

public class TestException extends Exception{
    @Getter
    String faultCode;

    public TestException(String faultCode) {
        super(faultCode);
        this.faultCode = faultCode;
    }

}
