package com.astore.services.implemet;

import com.astore.dao.implement.UserDao;
import com.astore.model.User;
import com.astore.services.IUserServices;

import java.util.List;

public class UserServices implements IUserServices {

    static UserServices userServices = null;
    private UserDao userdao;

    private UserServices() {
        this.userdao = new UserDao();
    }

    public static UserServices getInstance(){
        if(userServices == null){
            userServices = new UserServices();
        }
        return  userServices;
    }


    @Override
    public boolean insertUser(User user) {
        return userdao.insertUser(user);
    }

    @Override
    public boolean insertAdmin(User user) {
        return userdao.insertAdmin(user);
    }

    @Override
    public boolean updateUser(User user) {
        return userdao.updateUser(user);
    }

    @Override
    public boolean updateAdmin(User user) {
        return userdao.updateAdmin(user);
    }


    @Override
    public boolean delete(int id) {
        return userdao.delete(id);
    }

    @Override
    public User getById(int groupId, int id) {
        return userdao.getById(groupId,id);
    }

    @Override
    public List<User> getByName(int groupId, String name) {
        return userdao.getByName(groupId,name);
    }

    @Override
    public List<User> getAllUserByGroup(int groupId) {
        return userdao.getAllUserByGroup(groupId);
    }
}
