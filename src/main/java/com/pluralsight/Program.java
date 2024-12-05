package com.pluralsight;

import org.apache.commons.dbcp2.BasicDataSource;

import java.sql.Connection;
import java.sql.ResultSet;
import java.sql.Statement;

public class Program {

    public static BasicDataSource dataSource = new BasicDataSource();

    public static void main(String[] args) {

        // Configure the DataSource
        dataSource.setUrl("jdbc:mysql://localhost:3306/cardealership");
        dataSource.setUsername("root");
        dataSource.setPassword("yearup");
        dataSource.setDriverClassName("com.mysql.cj.jdbc.Driver");

        // Using the DataSource
        try (Connection connection = dataSource.getConnection();
             Statement statement = connection.createStatement();
             ResultSet resultSet = statement.executeQuery("SELECT * FROM users")) {

            while (resultSet.next()) {
                System.out.println("User ID: " + resultSet.getInt("id"));
                System.out.println("Username: " + resultSet.getString("username"));
            }

        } catch (Exception e) {
            e.printStackTrace();
        }

       /* UserInterface ui = new UserInterface();
        ui.display();*/

    }

}
