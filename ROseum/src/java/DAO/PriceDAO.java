/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package DAO;

import Util.DBConnection;
import java.sql.Connection;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;

/**
 *
 * @author iadin
 */
public class PriceDAO {

    public double computePrice(String museum, double full, double half) {
        double price = 0.0;
        try {

            Connection con = DBConnection.createConnection();
            Statement instr = con.createStatement();
            String sql = "SELECT price FROM museums WHERE name= '" + museum + "'";
            ResultSet rs = instr.executeQuery(sql);
            if (rs.next()) {
                price = rs.getDouble("price") * full + rs.getDouble("price") * half / 2;
            }
        } catch (ClassNotFoundException | SQLException e) {
            System.out.println("ERROR priceDAO: " + e.getMessage());
        }

        return price;
    }

}
