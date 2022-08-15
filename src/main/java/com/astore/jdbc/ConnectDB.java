package com.astore.jdbc;

import com.astore.dao.implement.ColorDao;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.SQLException;


public class ConnectDB {
    //    private String username = "sa";
//    private String password = "123";
    private static String admin = "sa";
    private static String pwdAdmin = "Goboi123";
    private static String nameDB = "DB_Astore";
    private static String localhost = "9943";
    private static String host = "45.119.212.77";
//    private static String admin = "thanhlocpc";
//    private static String pwdAdmin = "nguyenthanhloc1@";
//    private static String nameDB = "Thanhloc";
//    private static String localhost = "1433";
//    private static String host = "thanhloc.database.windows.net";
    private static Connection conn;


    public static Connection getInstance() {
        try {
            if ((conn == null) || conn.isClosed()) {
                try {
                    Class.forName("com.microsoft.sqlserver.jdbc.SQLServerDriver");
                    conn = DriverManager.getConnection("jdbc:sqlserver://"+host+":" + localhost + ";databaseName=" + nameDB + ";user=" + admin + ";password=" + pwdAdmin + ";useUnicode=true;characterEncoding=UTF-8");
                    System.out.println("Kết nối thành công!");
                } catch (SQLException | ClassNotFoundException e) {
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


//		Color cc = c.getById(1);
//
//		System.out.println(cc.getName());
    }


}
