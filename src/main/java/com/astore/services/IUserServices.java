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

    User checkLogin(String userName, String password);//kiểm tra email / sdt và password

    boolean roleLogin(int premission,String userName, String password);//kiểm tra quyền

    boolean checkUserExist(String emailOrPhone);//kiểm tra xem tài khoản đã tồn tại chưa

    boolean checkEmail(String email);

    boolean checkNumberPhone(String phone);

    boolean updateForgotPwd(String userName ,String pwd);//update lại mật khẩu khi quên

    User getInformationUser(String userName);//lấy ra thông tin người dùng

    String formatDate(String date);//định dạng date

    public String hashPassword(String pwd); //format mật khẩu
}
