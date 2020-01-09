/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package Util;

import java.sql.*;
import java.util.Properties;
import javax.naming.Context;
import javax.naming.InitialContext;
import javax.naming.NamingException;
import javax.sql.DataSource;

/**
 *
 * @author iadin
 */
public class DBConnection {

    public static Connection createConnection() throws ClassNotFoundException, SQLException, NamingException {
//        Connection con = null;
//        try {
//            String url = "jdbc:mysql://localhost:3306/wad-proj";
//            Class.forName("com.mysql.cj.jdbc.MysqlDataSource");
//            Properties properties = new Properties();
//            properties.setProperty("user", "root");
//            properties.setProperty("password", "root");
//            properties.setProperty("useSSL", "false");
//            properties.setProperty("allowPublicKeyRetrieval", "true");
//            con = DriverManager.getConnection(url, properties);
//
//        } catch (ClassNotFoundException | SQLException e) {
//            System.out.println("ERROR: " + e.getMessage());
//        }
//
//        return con;

        Context ctx = new InitialContext();
        DataSource dts = (DataSource) ctx.lookup("jdbc/SEProject");
        Connection c = dts.getConnection();
        return c;
    }

}
