package com.astore.dao;

import com.astore.model.User;

import java.util.List;

public interface IUserDao {

    boolean insertUser(User user);

    boolean insertAdmin(User user);

    boolean updateUser(User user);
    boolean updateAdmin(User user);

    boolean delete(int id);

    User getById(int groupId, int id); // tìm kiếm

    List<User> getByName(int groupId, String name) ; // // tìm kiếm

    List<User> getAllUserByGroup(int groupId); // ds khách hàng

    User loginAdmin(String userName, String password);

}
