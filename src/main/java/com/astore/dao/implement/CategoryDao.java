package com.astore.dao.implement;

import com.astore.dao.ICategoryDao;
import com.astore.jdbc.ConnectDB;
import com.astore.model.Category;

import java.sql.*;
import java.util.ArrayList;
import java.util.List;

public class CategoryDao implements ICategoryDao {

    @Override
    public boolean insert(Category category) {
        return false;
    }

    @Override
    public boolean update(Category category) {
        if(category != null){
            Connection conn = ConnectDB.getInstance();
            String sql = "update LOAI_SAN_PHAM  " +
                    "set ten_loai_sp = ? , "+
                    "thoi_gian_tao = ? ,"+
                    "where id = ?";

            PreparedStatement ps = null;
            try {
                ps = conn.prepareStatement(sql);
                ps.setString(1, category.getName());
                ps.setDate(2, new Date(System.currentTimeMillis()));
                ps.setInt(3, category.getId());
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
            String sql = "delete LOAI_SAN_PHAM where id = ?";

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
    public Category getById(int id) {
        try {
            Connection conn = ConnectDB.getInstance();
            String sql = "SELECT * FROM LOAI_SAN_PHAM where id = "+id;

            PreparedStatement ps = conn.prepareStatement(sql);
            ResultSet rs = ps.executeQuery();

            if (rs.next()) {
                Category category = new Category();
                category.setId(rs.getInt("id"));
                category.setName(rs.getString("ten_loai_sp"));
                category.setCreatedAt(rs.getString("thoi_gian_tao"));
                return  category;
            }

        } catch (SQLException e) {
            e.printStackTrace();
        }
        return null;
    }

    @Override
    public Category getByProductId(int id) {
        try {
            Connection conn = ConnectDB.getInstance();
            String sql = " SELECT * FROM LOAI_SAN_PHAM join DONG_SAN_PHAM on DONG_SAN_PHAM.id_loai_san_pham = LOAI_SAN_PHAM.id join SAN_PHAM on SAN_PHAM.id_dong_san_pham = DONG_SAN_PHAM.id where SAN_PHAM.id = ?";

            PreparedStatement ps = conn.prepareStatement(sql);
            ps.setInt(1, id);
            ResultSet rs = ps.executeQuery();

            if (rs.next()) {
                Category category = new Category();
                category.setId(rs.getInt("id"));
                category.setName(rs.getString("ten_loai_sp"));
                category.setCreatedAt(rs.getString("thoi_gian_tao"));
                return  category;
            }

        } catch (SQLException e) {
            e.printStackTrace();
        }
        return null;
    }

    @Override
    public List<Category> getByName(String name) {
        List<Category> result = new ArrayList<>();
        try {
            Connection conn = ConnectDB.getInstance();
            String sql = "SELECT * FROM LOAI_SAN_PHAM where ten_loai_sp = "+name;

            PreparedStatement ps = conn.prepareStatement(sql);
            ResultSet rs = ps.executeQuery();

            if (rs.next()) {
                Category category = new Category();
                category.setId(rs.getInt("id"));
                category.setName(rs.getString("ten_loai_sp"));
                category.setCreatedAt(rs.getString("thoi_gian_tao"));
                result.add(category);
            }

        } catch (SQLException e) {
            e.printStackTrace();
        }
        return result;
    }

    @Override
    public List<Category> getAll() {
        List<Category> result = new ArrayList<>();
        try {
            Connection conn = ConnectDB.getInstance();
            String sql = "SELECT * FROM LOAI_SAN_PHAM";

            PreparedStatement ps = conn.prepareStatement(sql);
            ResultSet rs = ps.executeQuery();

            if (rs.next()) {
                Category category = new Category();
                category.setId(rs.getInt("id"));
                category.setName(rs.getString("ten_loai_sp"));
                category.setCreatedAt(rs.getString("thoi_gian_tao"));
                result.add(category);
            }

        } catch (SQLException e) {
            e.printStackTrace();
        }
        return result;
    }
}
