/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package DAO;

import Util.MD5;
import Util.DBConnection;
import java.sql.*;
import model.UserBean;

/**
 *
 * @author iadin
 */
public class UserDAO {

    public boolean userExists(UserBean registerBean) throws SQLException {
        String email = registerBean.getEmail();

        try {

            Connection con = DBConnection.createConnection();
            Statement instr = con.createStatement();
            String sql = "SELECT * FROM users WHERE email= '" + email + "'";
            ResultSet rs = instr.executeQuery(sql);
            if (rs.next()) {
                return true;
            }
        } catch (Exception e) {
            System.out.println("ERROR: " + e.getMessage());
        }
        return false;

    }

    public void registerUser(UserBean registerBean) throws ClassNotFoundException {
        String email = registerBean.getEmail();
        String firstName = registerBean.getFirstName();
        String lastName = registerBean.getLastName();
        String password = MD5.getHash(registerBean.getPassword());
        String phoneNo = registerBean.getPhoneNo();

        Connection con = null;
        PreparedStatement preparedStatement = null;

        try {
            con = DBConnection.createConnection();
            String query = "insert into users(email, first_name, last_name, password, telephone) values "
                    + "(?, ?, ?, ?, ?)";
            preparedStatement = con.prepareStatement(query);
            preparedStatement.setString(1, email);
            preparedStatement.setString(2, firstName);
            preparedStatement.setString(3, lastName);
            preparedStatement.setString(4, password);
            preparedStatement.setString(5, phoneNo);
            preparedStatement.executeUpdate();

        } catch (SQLException e) {
            System.out.println("ERROR: " + e.getMessage());
        }

    }

    public boolean validateLogin(UserBean loginBean) throws ClassNotFoundException {

        String email = loginBean.getEmail();
        String password = MD5.getHash(loginBean.getPassword());

        String emailDB = "";
        String passwordDB = "";

        try {
            Connection con = DBConnection.createConnection();
            Statement statement = con.createStatement();
            ResultSet resultSet = statement.executeQuery("select email,password from users");

            while (resultSet.next()) {
                emailDB = resultSet.getString("email");
                passwordDB = resultSet.getString("password");

                if (email.equals(emailDB) && password.equals(passwordDB)) {
                    return true;
                }
            }
        } catch (SQLException e) {
            System.out.println("ERROR: " + e.getMessage());
        }
        return false;

    }

    public String getName(UserBean loginBean) throws ClassNotFoundException {
        String email = loginBean.getEmail();
        String firstName = "";

        try {
            Connection con = DBConnection.createConnection();
            Statement statement = con.createStatement();
            ResultSet resultSet = statement.executeQuery("SELECT * FROM users WHERE email= '" + email + "'");

            resultSet.next();
            firstName = resultSet.getString("first_name");

        } catch (SQLException e) {
            System.out.println("ERROR: " + e.getMessage());
        }
        return firstName;

    }
}
