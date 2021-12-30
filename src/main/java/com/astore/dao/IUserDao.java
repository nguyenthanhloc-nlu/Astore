package com.astore.dao;

import com.astore.model.User;

import java.util.List;

public interface IUserDao {

    boolean insert(User user);

    boolean update(User user);

    boolean delete(int id);

    User getById(int id); // tìm kiếm

    List<User> getByName(String name); // // tìm kiếm

    List<User> getAll(); // dùng trong admin
}
