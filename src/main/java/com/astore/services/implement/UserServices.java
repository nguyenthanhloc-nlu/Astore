package com.astore.services.implement;

import com.astore.dao.implement.UserDao;
import com.astore.model.User;
import com.astore.services.IUserServices;

import java.util.List;
import java.util.regex.Matcher;
import java.util.regex.Pattern;

public class UserServices implements IUserServices {

    static UserServices userServices = null;
    private UserDao userdao;
    private static Pattern pattern;
    private Matcher matcher;
    private static final String EMAIL_REGEX ="^[_A-Za-z0-9-\\+]+(\\.[_A-Za-z0-9-]+)*@"
            + "[A-Za-z0-9-]+(\\.[A-Za-z0-9]+)*(\\.[A-Za-z]{2,})$";
    private static final String NUMBER_PHONE = "((09|03|07|08|05)+([0-9]{8,9})\\b)";


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

    @Override
    public User loginAdmin(String userName, String password) {
        return userdao.loginAdmin(userName, password);
    }
    @Override
    public User checkLogin(String userName, String password) {

        return userdao.checkLogin(userName,password);
    }

    @Override
    public boolean roleLogin(int permission,String userName, String password){
        return userdao.roleLogin(permission,userName, password);
    }

    @Override
    public boolean checkUserExist(String emailOrPhone) {
        return userdao.checkUserExist(emailOrPhone);
    }//kiểm tra tài khoản có tồn tại không

    @Override
    public boolean checkEmail(String email) {
        return   Pattern.compile(EMAIL_REGEX).matcher(email).matches();
    }//kiểm tra email

    @Override
    public boolean checkNumberPhone(String phone) {
        pattern = Pattern.compile(NUMBER_PHONE);
        matcher = pattern.matcher(phone);
        return matcher.matches();
    }//kiểm tra số điện thoại

    @Override
    public boolean updateForgotPwd(String userName, String pwd) {
        return userdao.updateForgotPwd(userName,pwd);
    }

    @Override
    public User getInformationUser(String userName) {
        return userdao.getInformationUser(userName);
    }



    @Override
    public String formatDate(String date) {
        char [] arr = date.toCharArray();
        String resDate ="";
        String day ="";
        String month ="";
        String year="";
        for (int i=0; i<arr.length;i++){
            if (arr[i]!=' ') {
                if (i == 0) {
                    year += arr[i] + "" + arr[i + 1] + "" + arr[i + 2] + "" + arr[i + 3];
                }
                if (i == 3) {
                    month = arr[i + 2] + "" + arr[i + 3];
                }
                if (i == 6) {
                    day = arr[i + 2] + "" + arr[i + 3];
                }
            }
            else {
                break;
            }
        }
        resDate=day+"/"+month+"/"+year;
        return resDate;
    }

    @Override
    public String hashPassword(String pwd) {
        return userdao.hashPassword(pwd);
    }
}
