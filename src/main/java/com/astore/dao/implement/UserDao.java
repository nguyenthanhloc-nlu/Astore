package com.astore.dao.implement;

import com.astore.dao.IUserDao;
import com.astore.jdbc.ConnectDB;
import com.astore.model.User;

import java.sql.*;
import java.util.ArrayList;
import java.util.List;

public class UserDao implements IUserDao {

    @Override
    public boolean insertUser(User user) {
        if(user != null){
            Connection conn = ConnectDB.getInstance();
            // username, fullname, email, gioi_tinh,sdt,ngay_sinh,  dia_chi, duong_dan_avatar, mat_khau
            String sql = "execute insertUser_proc ?, ?, ?, ?, ?, ?, ?, ?, ?";
            try {
                PreparedStatement ps = conn.prepareStatement(sql);
                ps.setString(1,user.getUserName());
                ps.setString(2,user.getName());
                ps.setString(3,user.getEmail());
                ps.setString(4,user.getGender());
                ps.setString(5,user.getPhone());
                ps.setString(6,user.getBirthday());
                ps.setString(7,user.getAddress());
                ps.setString(8,user.getAvatar());
                ps.setString(9,user.getPassword());


                int row = ps.executeUpdate();
                ps.close();
                System.out.println(row +" row");
                if(row != 0) return  true;

            } catch (SQLException e) {
                e.printStackTrace();
            }
        }


        return false;
    }

    @Override
    public boolean insertAdmin(User user) {
        if(user != null){
            Connection conn = ConnectDB.getInstance();
            String sql = "execute insertAdmin_proc ?, ?, ?"; // username, fullname, password
            try {
                PreparedStatement ps = conn.prepareStatement(sql);
                ps.setString(1,user.getUserName());
                ps.setString(2,user.getName());
                ps.setString(3,user.getPassword());

                int row = ps.executeUpdate();
                ps.close();
                System.out.println(row +" row");
                if(row != 0) return  true;

            } catch (SQLException e) {
                e.printStackTrace();
            }
        }


        return false;
    }

    @Override
    public boolean updateUser(User user) {
        try {
            Connection conn = ConnectDB.getInstance();
            // id, fullname, email, gioitinh,  ngaysinh,  sdt, diachi, avt, password
            String sql = "execute updateUser_proc ?, ?, ?, ?, ?, ?, ?, ?, ?";

            PreparedStatement ps = conn.prepareStatement(sql);

            ps.setInt(1, user.getId());
            ps.setString(2, user.getName());
            ps.setString(3, user.getEmail());
            ps.setString(4, user.getGender());
            ps.setString(5, user.getPhone());
            ps.setString(6, user.getBirthday());
            ps.setString(7, user.getAddress());
            ps.setString(8, user.getAvatar());
            ps.setString(9, user.getPassword());



            int row = ps.executeUpdate();
            ps.close();
            System.out.println("update user row " +row +" " +user);
            return row != 0 ;

        }catch (SQLException e) {
            e.printStackTrace();
            return false;
        }

    }

    @Override
    public boolean updateAdmin(User user) {
        try {
            Connection conn = ConnectDB.getInstance();
            String sql = "execute updateAdmin_proc ?, ?, ?";

            PreparedStatement ps = conn.prepareStatement(sql);

            ps.setInt(1, user.getId());
            ps.setString(2, user.getName());
            ps.setString(3, user.getPassword());

            System.out.println("update admin " +user.getId() + " " +user.getName() + " " +user.getPassword());

            int row = ps.executeUpdate();
            ps.close();
            return row != 0 ;

        }catch (SQLException e) {
            e.printStackTrace();
            return false;
        }

    }


    @Override
    public boolean delete(int id) {
        try {
            Connection conn = ConnectDB.getInstance();
            String sql = "execute deleteUser_proc ?";

            PreparedStatement ps = conn.prepareStatement(sql);
            ps.setInt(1, id);
            int row = ps.executeUpdate();

            ps.close();
            return row == 0 ? false : true;

        } catch (SQLException e) {
            e.printStackTrace();
            return false;
        }

    }

    @Override
    public User getById(int groupId, int id) {
        try {
            Connection conn = ConnectDB.getInstance();
            String sql = "SELECT * FROM NGUOI_DUNG join PHAN_QUYEN ON NGUOI_DUNG.id = PHAN_QUYEN.id_nguoi_dung where NGUOI_DUNG.id = ? and PHAN_QUYEN.id_nhom =?";
            PreparedStatement ps = conn.prepareStatement(sql);

            ps.setInt(1, id);
            ps.setInt(2, groupId);
            ResultSet rs = ps.executeQuery();
            User user = new User();
            while (rs.next()) {
              setValue(user, rs);
            }

            rs.close();
            ps.close();
            return user;

        } catch (SQLException e) {
            e.printStackTrace();
        }
        return null;
    }

    @Override
    public List<User> getByName(int groupId, String name) {
        List<User> results = new ArrayList<>();
        try {
            Connection conn = ConnectDB.getInstance();
            String sql = "SELECT NGUOI_DUNG.* FROM NGUOI_DUNG join PHAN_QUYEN on NGUOI_DUNG.id= PHAN_QUYEN.id_nguoi_dung  where ho_va_ten  like ? and PHAN_QUYEN.id_nhom = ?";

            PreparedStatement ps = conn.prepareStatement(sql);
            name = "%"+name+"%";
            ps.setNString(1, name);
            ps.setInt(2, groupId);
            ResultSet rs = ps.executeQuery();

            while (rs.next()) {
                User user = new User();

                setValue(user, rs);
                results.add(user);
            }

            rs.close();
            ps.close();

        } catch (SQLException e) {
            e.printStackTrace();
        }
        return results;
    }

    @Override
    public List<User> getAllUserByGroup(int groupId) {
        List<User> results = new ArrayList<>();
        try {
            Connection conn = ConnectDB.getInstance();
            String sql = "select nguoi_dung.*  from nguoi_dung join phan_quyen on nguoi_dung.id = phan_quyen.id_nguoi_dung where PHAN_QUYEN.id_nhom = ? order by NGUOI_DUNG.thoi_gian_tao desc";

            PreparedStatement ps = conn.prepareStatement(sql);
            ps.setInt(1, groupId);

            ResultSet rs = ps.executeQuery();

            while (rs.next()) {
                User user = new User();
                setValue(user, rs);
                results.add(user);
            }

            rs.close();
            ps.close();

        } catch (SQLException e) {
            e.printStackTrace();
        }
        return results;
    }



    private void setValue(User user, ResultSet rs){
        try{
            user.setId(rs.getInt("id"));
            user.setUserName(rs.getString("ten_nguoi_dung"));
            user.setName(rs.getString("ho_va_ten"));
            user.setEmail(rs.getString("email"));
            user.setGender(rs.getString("gioi_tinh"));
            user.setBirthday(rs.getDate("ngay_sinh") != null ? rs.getDate("ngay_sinh").toString() : "" );
            user.setPhone(rs.getString("sdt"));
            user.setAddress(rs.getString("dia_chi"));
            user.setAvatar(rs.getString("duong_dan_avatar"));
            user.setCreatedAt(rs.getString("thoi_gian_tao"));
        }catch (SQLException e) {

        }
    }


}
