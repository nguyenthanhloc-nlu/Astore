package com.astore.dao.implement;

import com.astore.dao.IColorDao;
import com.astore.jdbc.ConnectDB;
import com.astore.model.Color;

import java.sql.*;
import java.util.ArrayList;
import java.util.List;

public class ColorDao implements IColorDao {
    @Override
    public boolean insert(Color color) {
        return false;
    }

    @Override
    public boolean update(Color color) {
        if(color != null){
            Connection conn = ConnectDB.getInstance();
            String sql = "update MAU_SAC  " +
                    "set mau_sac = ? , "+
                    "thoi_gian_tao = ? ,"+
                    "where id = ?";

            PreparedStatement ps = null;
            try {
                ps = conn.prepareStatement(sql);
                ps.setString(1, color.getName());
                ps.setDate(2, new Date(System.currentTimeMillis()));
                ps.setInt(3, color.getId());
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
            String sql = "delete MAU_SAC where id = ?";

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
    public Color getById(int id) {
        try {
            Connection conn = ConnectDB.getInstance();
            String sql = "SELECT * FROM MAU_SAC where id = " + id;

            PreparedStatement ps = conn.prepareStatement(sql);
            ResultSet rs = ps.executeQuery();

            if (rs.next()) {
                Color color = new Color();
                color.setId(rs.getInt("id"));
                color.setName(rs.getString("ten_mau_sac"));
                color.setCreatedAt(rs.getString("thoi_gian_tao"));
                return color;
            }

        } catch (SQLException e) {
            e.printStackTrace();
        }
        return null;
    }

    @Override
    public List<Color> getByName(String name) {
        List<Color> result = new ArrayList<>();
        try {
            Connection conn = ConnectDB.getInstance();
            String sql = "SELECT * FROM MAU_SAC where ten_mau_sac = " + name;

            PreparedStatement ps = conn.prepareStatement(sql);
            ResultSet rs = ps.executeQuery();

            if (rs.next()) {
                Color color = new Color();
                color.setId(rs.getInt("id"));
                color.setName(rs.getString("ten_mau_sac"));
                color.setCreatedAt(rs.getString("thoi_gian_tao"));
                result.add(color);
            }

        } catch (SQLException e) {
            e.printStackTrace();
        }
        return result;
    }

    @Override
    public List<Color> getAll() {
        List<Color> result = new ArrayList<>();
        try {
            Connection conn = ConnectDB.getInstance();
            String sql = "SELECT * FROM MAU_SAC";

            PreparedStatement ps = conn.prepareStatement(sql);
            ResultSet rs = ps.executeQuery();

            if (rs.next()) {
                Color color = new Color();
                color.setId(rs.getInt("id"));
                color.setName(rs.getString("ten_mau_sac"));
                color.setCreatedAt(rs.getString("thoi_gian_tao"));
                return result;
            }

        } catch (SQLException e) {
            e.printStackTrace();
        }
        return result;
    }
}
