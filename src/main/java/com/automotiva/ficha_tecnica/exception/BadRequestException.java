package com.automotiva.ficha_tecnica.exception;

import org.jspecify.annotations.Nullable;

public class BadRequestException extends Throwable {

    public BadRequestException(String message) {
        super(message);
    }
}

