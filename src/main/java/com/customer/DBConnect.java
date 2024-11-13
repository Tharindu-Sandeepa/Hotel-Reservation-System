package com.customer;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.SQLException;

public class DBConnect {
    // Private instance to hold the single instance of the connection
    private static Connection con = null;

    // Private constructor to prevent external instantiation
    private DBConnect() {
        // Load the MySQL driver and initialize the connection in the constructor
        try {
            Class.forName("com.mysql.jdbc.Driver");
            con = DriverManager.getConnection("jdbc:mysql://localhost:3306/hotel", "root", "thari@1234");
        } catch (Exception e) {
            System.out.println("Database connection is not successful!");
        }
    }

    // Public method to provide access to the single connection instance
    public static Connection getConnection() {
        if (con == null) {
            // If the connection is not yet created, instantiate it (lazy initialization)
            new DBConnect();
        }
        return con;
    }
}
