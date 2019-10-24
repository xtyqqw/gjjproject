package com.example.demo.entity;

import lombok.Getter;
import lombok.Setter;

@Getter
@Setter
public class Test {
    private Integer id;
    private String name;

    public Test(Integer id, String name) {
        this.id = id;
        this.name = name;
    }

    public Test() {
    }
}
