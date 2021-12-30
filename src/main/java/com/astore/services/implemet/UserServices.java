package com.astore.services.implemet;

import com.astore.dao.implement.UserDao;
import com.astore.model.User;
import com.astore.services.IUserServices;

import java.util.List;

public class UserServices implements IUserServices {
    private UserDao userdao;

    public UserServices() {
        this.userdao = new UserDao();
    }

    @Override
    public boolean insert(User user) {
        return userdao.insert(user);
    }

    @Override
    public boolean update(User user) {
        return userdao.update(user);
    }

    @Override
    public boolean delete(int id) {
        return delete(id);
    }

    @Override
    public User getById(int id) {
        return userdao.getById(id);
    }

    @Override
    public List<User> getByName(String name) {
        return userdao.getByName(name);
    }


    @Override
    public List<User> getAll() {
        return userdao.getAll();
    }
}
