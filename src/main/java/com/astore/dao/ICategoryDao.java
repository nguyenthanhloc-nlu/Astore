package com.astore.dao;

import com.astore.model.Category;

import java.util.List;

public interface ICategoryDao {

    boolean insert(Category category);

    boolean update(Category category);

    boolean delete(int id);

    Category getById(int id); // tìm kiếm

    Category getByProductId(int id); // tìm kiếm

    List<Category> getByName(String name); // // tìm kiếm

    List<Category> getAll(); // dùng trong admin
}
