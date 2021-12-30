package com.astore.model;

public class SubCategory {
    private int id;
    private int categoryId;
    private String name;
    private String createdAt;

    public SubCategory(int id, int categoryId, String name, String createdAt) {
        this.id = id;
        this.categoryId = categoryId;
        this.name = name;
        this.createdAt = createdAt;
    }

    public SubCategory() {
    }

    public int getId() {
        return id;
    }

    public void setId(int id) {
        this.id = id;
    }

    public int getCategoryId() {
        return categoryId;
    }

    public void setCategoryId(int categoryId) {
        this.categoryId = categoryId;
    }

    public String getName() {
        return name;
    }

    public void setName(String name) {
        this.name = name;
    }

    public String getCreatedAt() {
        return createdAt;
    }

    public void setCreatedAt(String createdAt) {
        this.createdAt = createdAt;
    }
}
