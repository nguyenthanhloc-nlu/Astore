package com.astore.dao.implement;

import com.astore.dao.ISubCategoryDao;
import com.astore.jdbc.ConnectDB;
import com.astore.model.SubCategory;

import java.sql.*;
import java.util.ArrayList;
import java.util.List;

public class SubCategoryDao implements ISubCategoryDao {
    @Override
    public boolean insert(SubCategory subCategory) {
        return false;
    }

    @Override
    public boolean update(SubCategory subCategory) {
        if(subCategory != null){
            Connection conn = ConnectDB.getInstance();
            String sql = "update DONG_SAN_PHAM  " +
                    "set ten_dong_san_pham = ? , "+
                    "thoi_gian_tao = ? ,"+
                    "where id = ?";

            PreparedStatement ps = null;
            try {
                ps = conn.prepareStatement(sql);
                ps.setString(1, subCategory.getName());
                ps.setDate(2, new Date(System.currentTimeMillis()));
                ps.setInt(3, subCategory.getId());
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
            String sql = "delete DONG_SAN_PHAM where id = ?";

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
    public SubCategory getById(int id) {
        try {
            Connection conn = ConnectDB.getInstance();
            String sql = "SELECT * FROM DONG_SAN_PHAM where id = "+id;

            PreparedStatement ps = conn.prepareStatement(sql);
            ResultSet rs = ps.executeQuery();

            if (rs.next()) {
                SubCategory subCategory = new SubCategory();
                subCategory.setId(rs.getInt("id"));
                subCategory.setName(rs.getString("ten_dong_san_pham"));
                subCategory.setCreatedAt(rs.getString("thoi_gian_tao"));

                return  subCategory;
            }

        } catch (SQLException e) {
            e.printStackTrace();
        }
        return null;
    }

    @Override
    public List<SubCategory> getByName(String name) {
        List<SubCategory> result = new ArrayList<>();
        try {
            Connection conn = ConnectDB.getInstance();
            String sql = "SELECT * FROM DONG_SAN_PHAM where ten_dong_san_pham = "+name;

            PreparedStatement ps = conn.prepareStatement(sql);
            ResultSet rs = ps.executeQuery();

            if (rs.next()) {
                SubCategory subCategory = new SubCategory();
                subCategory.setId(rs.getInt("id"));
                subCategory.setName(rs.getString("ten_dong_san_pham"));
                subCategory.setCreatedAt(rs.getString("thoi_gian_tao"));
                result.add(subCategory);
            }

        } catch (SQLException e) {
            e.printStackTrace();
        }
        return result;
    }

    @Override
    public List<SubCategory> getAll() {
        List<SubCategory> result = new ArrayList<>();
        try {
            Connection conn = ConnectDB.getInstance();
            String sql = "SELECT * FROM DONG_SAN_PHAM";

            PreparedStatement ps = conn.prepareStatement(sql);
            ResultSet rs = ps.executeQuery();

            if (rs.next()) {
                SubCategory subCategory = new SubCategory();
                subCategory.setId(rs.getInt("id"));
                subCategory.setName(rs.getString("ten_dong_san_pham"));
                subCategory.setCreatedAt(rs.getString("thoi_gian_tao"));
                result.add(subCategory);
            }

        } catch (SQLException e) {
            e.printStackTrace();
        }
        return result;
    }
}
