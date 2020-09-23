package com.jp.qxd.tax.model;

import org.springframework.security.core.GrantedAuthority;

public class Authority implements GrantedAuthority {
    private static final long serialVersionUID = 1L;

    private Long id;

    private String name;
    public Long getId() {
        return id;
    }
    public void setId(Long id) {
        this.id = id;
    }
    @Override
    public String getAuthority() {
        return name;
    }
    public void setName(String name) {
        this.name = name;
    }
}