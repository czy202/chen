package com.example.yin.config;

import java.nio.charset.StandardCharsets;

public class TestMain {
    public static void main(String[] args) {
        String name = "寮犳澃-浠版湜鏄熺┖";
        System.out.println(new String(name.getBytes(), StandardCharsets.UTF_8));
        System.out.println(new String(name.getBytes(StandardCharsets.UTF_8), StandardCharsets.UTF_8));
        System.out.println(new String(name.getBytes(StandardCharsets.ISO_8859_1), StandardCharsets.UTF_8));
        System.out.println(new String(name.getBytes(StandardCharsets.UTF_8), StandardCharsets.ISO_8859_1));
    }
}
