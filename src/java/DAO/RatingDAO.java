/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package DAO;

import Util.DBConnection;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;
import model.RatingBean;

/**
 *
 * @author iadin
 */
public class RatingDAO {

    public double computeRate(RatingBean ratingBean, String museum) throws ClassNotFoundException {
        double newRate = ratingBean.getValue();
        try {
            Connection con = DBConnection.createConnection();
            Statement statement = con.createStatement();
            ResultSet resultSet = statement.executeQuery("select rating from museums where name='" + museum + "'");

            double formerRate = resultSet.getDouble("rating");
            newRate = (formerRate + newRate) / 2;
            updateRate(newRate, museum);
        } catch (SQLException e) {
            System.out.println("ERROR: " + e.getMessage());
        }
        return newRate;

    }

    public void updateRate(double rate, String museum) throws ClassNotFoundException {
        try {
            Connection con = DBConnection.createConnection();
            String sqlUpdate = "UPDATE candidates "
                    + "SET rating = ? "
                    + "WHERE  = ?";

            PreparedStatement pstmt = con.prepareStatement(sqlUpdate);
            pstmt.setDouble(3, rate);
            pstmt.setString(1, museum);
            pstmt.executeUpdate();
            pstmt.close();

        } catch (SQLException e) {
            System.out.println("ERROR: " + e.getMessage());
        }

    }

}
