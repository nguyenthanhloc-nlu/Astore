package com.astore.jdbc;

import com.astore.dao.implement.ColorDao;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.SQLException;


public class ConnectDB {
    private String username = "sa";
    private String password = "123456789";

    private static Connection conn;


    public static Connection getInstance() {
        try {
            if ((conn == null) || conn.isClosed()) {
                try {
                    Class.forName("com.microsoft.sqlserver.jdbc.SQLServerDriver");
                    conn=DriverManager.getConnection("jdbc:sqlserver://localhost:1433;databaseName=DBSTORE_2;user=sa;password=123456789;useUnicode=true;characterEncoding=UTF-8");
                    System.out.println("Kết nối thành công!");
                }  catch (SQLException | ClassNotFoundException e) {
                    System.out.println("Kết nối thất bại!" + e.getMessage());
                }

                return conn;
            }
        } catch (SQLException e) {
            e.printStackTrace();
        }

        return conn;
    }

    public static void main(String[] args) {
        Connection cnn = ConnectDB.getInstance();
        ColorDao c = new ColorDao();

//		Color cc = c.getById(1);
//
//		System.out.println(cc.getName());
    }


}
