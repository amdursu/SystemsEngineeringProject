/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package DAO;

import Util.DBConnection;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.SQLException;
import java.util.Date;
import model.TicketBean;

/**
 *
 * @author iadin
 */
public class TicketDAO {

    public void registerTicket(TicketBean ticketBean) throws ClassNotFoundException {
        String owner = ticketBean.getOwner();
        String place = ticketBean.getPlace();
        String type = ticketBean.getType();
        Date date = ticketBean.getDate();
        java.sql.Date sqlDate = new java.sql.Date(date.getTime());

        Connection con = null;
        PreparedStatement preparedStatement = null;

        try {
            con = DBConnection.createConnection();
            String query = "insert into tickets(place, owner, date, type) values "
                    + "(?, ?, ?, ?)";
            preparedStatement = con.prepareStatement(query);
            preparedStatement.setString(1, place);
            preparedStatement.setString(2, owner);
            preparedStatement.setDate(3, sqlDate);
            preparedStatement.setString(4, type);
            preparedStatement.executeUpdate();

        } catch (SQLException e) {
            System.out.println("ERROR: " + e.getMessage());
        }

    }
}
