package com.astore.dao.implement;

import com.astore.dao.IUserDao;
import com.astore.jdbc.ConnectDB;
import com.astore.model.User;

import java.sql.*;
import java.util.ArrayList;
import java.util.List;

public class UserDao implements IUserDao {

    @Override
    public boolean insert(User user) {


        return  false;
    }

    @Override
    public boolean update(User user) {
        if(user != null){
            Connection conn = ConnectDB.getInstance();
            String sql = "update SAN_PHAM  " +
                    "set ten_nguoi_dung = ? , "+
                    "email = ? ," +
                    "gioi_tinh = ? ," +
                    "ngay_sinh = ? ," +
                    "sdt = ? ," +
                    "dia_chi = ? ," +
                    "avatar = ? ," +
                    "mat_khau = ? ," +
                    "thoi_gian_tao = ? ,"+
                    "where id = ?";


            PreparedStatement ps = null;
            try {
                ps = conn.prepareStatement(sql);
                ps.setString(1, user.getName());
                ps.setString(2, user.getEmail());
                ps.setString(3, user.getGender());
                ps.setString(4, user.getBirthday());
                ps.setString(5, user.getPhone());
                ps.setString(6, user.getAddress());
                ps.setString(7, user.getAvatar());
                ps.setDate(8, new Date(System.currentTimeMillis()));
                ps.setInt(9, user.getId());
                int row = ps.executeUpdate();
                return row == 0 ? false : true;
            } catch (SQLException e) {
                e.printStackTrace();
                return  false;
            }
        }
        return false;
    }

    @Override
    public boolean delete(int id) {
        try {
            Connection conn = ConnectDB.getInstance();
            String sql = "delete NGUOI_DUNG where id = ?";

            PreparedStatement ps = conn.prepareStatement(sql);
            ps.setInt(1, id);
            int row = ps.executeUpdate();
            return row == 0 ? false : true;

        } catch (SQLException e) {
            e.printStackTrace();
            return  false;
        }
    }

    @Override
    public User getById(int id) {
        try {
            Connection conn = ConnectDB.getInstance();
            String sql = "SELECT * FROM NGUOI_DUNG where id = "+id;

            PreparedStatement ps = conn.prepareStatement(sql);
            ResultSet rs = ps.executeQuery();

            if (rs.next()) {
               User user = new User();

                user.setId(rs.getInt("id"));
                user.setName(rs.getString("ten_nguoi_dung"));
                user.setEmail(rs.getNString("email"));
                user.setGender(rs.getNString("gioi_tinh"));
                user.setBirthday(rs.getNString("ngay_sinh"));
                user.setPhone(rs.getNString("sdt"));
                user.setAddress(rs.getNString("dia_chi"));
                user.setAvatar(rs.getNString("avatar"));
                user.setCreatedAt(rs.getString("thoi_gian_tao"));

                return  user;
            }

        } catch (SQLException e) {
            e.printStackTrace();
        }
        return null;
    }

    @Override
    public List<User> getByName(String name) {
        List<User> results = new ArrayList<>();
        try {
            Connection conn = ConnectDB.getInstance();
            String sql = "SELECT * FROM NGUOI_DUNG where ten_nguoi_dung = "+name;

            PreparedStatement ps = conn.prepareStatement(sql);
            ResultSet rs = ps.executeQuery();

            if (rs.next()) {
                User user = new User();

                user.setId(rs.getInt("id"));
                user.setName(rs.getString("ten_nguoi_dung"));
                user.setEmail(rs.getNString("email"));
                user.setGender(rs.getNString("gioi_tinh"));
                user.setBirthday(rs.getNString("ngay_sinh"));
                user.setPhone(rs.getNString("sdt"));
                user.setAddress(rs.getNString("dia_chi"));
                user.setAvatar(rs.getNString("avatar"));
                user.setCreatedAt(rs.getString("thoi_gian_tao"));

                results.add(user);
            }

        } catch (SQLException e) {
            e.printStackTrace();
        }
        return results;
    }


    @Override
    public List<User> getAll() {
        List<User> results = new ArrayList<>();
        try {
            Connection conn = ConnectDB.getInstance();
            String sql = "SELECT * FROM NGUOI_DUNG";

            PreparedStatement ps = conn.prepareStatement(sql);
            ResultSet rs = ps.executeQuery();

            if (rs.next()) {
                User user = new User();

                user.setId(rs.getInt("id"));
                user.setName(rs.getString("ten_nguoi_dung"));
                user.setEmail(rs.getNString("email"));
                user.setGender(rs.getNString("gioi_tinh"));
                user.setBirthday(rs.getNString("ngay_sinh"));
                user.setPhone(rs.getNString("sdt"));
                user.setAddress(rs.getNString("dia_chi"));
                user.setAvatar(rs.getNString("avatar"));
                user.setCreatedAt(rs.getString("thoi_gian_tao"));

                results.add(user);
            }

        } catch (SQLException e) {
            e.printStackTrace();
        }
        return results;
    }
}
