package com.automotiva.ficha_tecnica.exception;

import org.jspecify.annotations.Nullable;

public class NotFoundException extends Throwable{


    public NotFoundException(String message) {
        super(message);
    }

}