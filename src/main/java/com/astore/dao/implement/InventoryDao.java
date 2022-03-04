package com.astore.dao.implement;

import com.astore.dao.IInventoryDao;
import com.astore.jdbc.ConnectDB;
import com.astore.model.Inventory;


import java.sql.*;
import java.util.ArrayList;
import java.util.List;

public class InventoryDao implements IInventoryDao {
    @Override
    public boolean insert(Inventory inventory) {
        if(inventory!= null){
            Connection conn = ConnectDB.getInstance();
            String sql = "insert into TON_KHO(id, id_san_pham, so_luong_con_lai) values (?,?,?)";

            PreparedStatement ps = null;
            try {
                ps = conn.prepareStatement(sql);
                ps.setInt(1, inventory.getId());
                ps.setInt(2,inventory.getIdSP());
                ps.setLong(3, inventory.getCount());

                int row = ps.executeUpdate();
                ps.close();
                return row == 1;
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
            String sql = "delete TON_KHO where id = ?";

            PreparedStatement ps = conn.prepareStatement(sql);
            ps.setInt(1, id);
            int row = ps.executeUpdate();
            ps.close();
            return row == 1;

        } catch (SQLException e) {
            e.printStackTrace();
            return  false;
        }
    }

    @Override
    public boolean update(Inventory inventory) {
        if (inventory != null) {
            Connection conn = ConnectDB.getInstance();
            String sql = "update TON_KHO set id=?, id_san_pham=? , so_luong_con_lai=?, thoi_gian_tao=? where id=? ";

            PreparedStatement ps = null;
            try {
                ps = conn.prepareStatement(sql);
                ps.setInt(1, inventory.getId());
                ps.setInt(2, inventory.getIdSP());
                ps.setLong(3, inventory.getCount());
                ps.setDate(4, new Date(System.currentTimeMillis()));
                ps.setInt(5, inventory.getId());
                int row = ps.executeUpdate();
                ps.close();
                return row == 1;
            } catch (SQLException e) {
                e.printStackTrace();
                return false;
            }
        }

        return false;
}


    @Override
    public List<Inventory> getAll() {
        List<Inventory> result = new ArrayList<>();
        try {
            Connection conn = ConnectDB.getInstance();
            String sql = "SELECT  * FROM TON_KHO order by thoi_gian_tao desc ";

            PreparedStatement ps = conn.prepareStatement(sql);
            ResultSet rs = ps.executeQuery();

            while (rs.next()) {
                Inventory inventory =  new Inventory();
                setValue(rs, inventory);
                result.add(inventory);
            }

        } catch (SQLException e) {
            e.printStackTrace();
        }
        return result;
    }

    private void setValue(ResultSet rs, Inventory inventory) {
        try{
            inventory.setId(rs.getInt("id"));
            inventory.setIdSP(rs.getInt("id_san_pham"));
            inventory.setCount(rs.getLong("so_luong_con_lai"));
            inventory.setCreateAt(rs.getString("thoi_gian_tao"));
        }catch (SQLException e) {
            System.out.println(e.getMessage());
        }


    }
}
