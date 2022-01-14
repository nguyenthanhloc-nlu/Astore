package com.astore.dao.implement;

import com.astore.dao.IHelpDao;
import com.astore.jdbc.ConnectDB;
import com.astore.model.Help;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;

public class HelpDao implements IHelpDao {
    @Override
    public List<Help> getListHelp() {
        List<Help> listProduct = new ArrayList<>();
        try{
            Connection conn = ConnectDB.getInstance();
            String sql = "SELECT * FROM HO_TRO";
            PreparedStatement ps = conn.prepareStatement(sql);
            ResultSet rs =ps.executeQuery();
            while (rs.next()){
                listProduct.add(new Help(rs.getInt("id"),rs.getString("ho_va_ten"),
                        rs.getString("email"),rs.getString("sdt"),rs.getString("noi_dung_ho_tro"), rs.getString("thoi_gian_tao")));
            }

        }catch (SQLException e){
            return null;
        }
        return listProduct;
    }

    public static void main(String[] args) {
        HelpDao h = new HelpDao();
        System.out.println(h.getListHelp().size());
    }
}
