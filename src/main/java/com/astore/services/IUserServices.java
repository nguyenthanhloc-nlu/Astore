package com.astore.services;

import com.astore.model.User;

import java.util.List;

public interface IUserServices{

    boolean insertUser(User user);
    boolean insertAdmin(User user);

    boolean updateUser(User user);
    boolean updateAdmin(User user);


    boolean delete(int id);

    User getById(int groupId, int id); // tìm kiếm

    List<User> getByName(int groupId, String name);

    List<User> getAllUserByGroup(int groupId); //ds user


    User loginAdmin(String userName, String password);
}
