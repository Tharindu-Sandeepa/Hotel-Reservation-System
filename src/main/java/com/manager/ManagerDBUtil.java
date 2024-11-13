package com.manager;

import java.sql.Connection;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;
import java.util.ArrayList;
import java.util.List;

public class ManagerDBUtil {

    private static boolean isSuccess;
    private static Connection con = null;
    private static Statement stmt = null;
    private static ResultSet rs = null;

    // Login validation for managers
    public static boolean validate(String username, String password) {

        try {
            con = DBConnect.getConnection();
            stmt = con.createStatement();
            String sql = "SELECT * FROM manager WHERE username ='" + username + "' AND password='" + password + "'";
            rs = stmt.executeQuery(sql);

            if (rs.next()) {
                isSuccess = true;
            } else {
                isSuccess = false;
            }

        } catch (Exception e) {
            e.printStackTrace();
        }

        return isSuccess;
    }

    public static List<Manager> getManager(String username) {
        ArrayList<Manager> managers = new ArrayList<>();

        try {
            con = DBConnect.getConnection();
            stmt = con.createStatement();
            String sql = "SELECT * FROM manager WHERE username='" + username + "'";
            rs = stmt.executeQuery(sql);

            while (rs.next()) {
                int managerID = rs.getInt("mid");
                String name = rs.getString("name");
                String retrievedUsername = rs.getString("username");
                String password = rs.getString("password");

                Manager manager = new Manager(managerID, retrievedUsername, password, name);
                managers.add(manager);
            }
        } catch (Exception e) {
            e.printStackTrace();
        }

        return managers;
    }

    public static List<Manager> getAllManagers() {
        ArrayList<Manager> managerList = new ArrayList<>();

        try {
            con = DBConnect.getConnection();
            stmt = con.createStatement();
            String sql = "SELECT * FROM manager";
            rs = stmt.executeQuery(sql);

            while (rs.next()) {
                int managerID = rs.getInt("mid");
                String name = rs.getString("name");
                String retrievedUsername = rs.getString("username");
                String password = rs.getString("password");

                Manager manager = new Manager(managerID, retrievedUsername, password, name);
                managerList.add(manager);
            }
        } catch (Exception e) {
            e.printStackTrace();
        }

        return managerList;
    }

    public static boolean insertManager(String name, String username, String password) {
        boolean isSuccess = false;

        try {
            con = DBConnect.getConnection();
            stmt = con.createStatement();
            String sql = "INSERT INTO manager (username, password, name) VALUES ('" + username + "', '" + password + "', '" + name + "')";
            int rs = stmt.executeUpdate(sql);

            if (rs > 0) {
                isSuccess = true;
            } else {
                isSuccess = false;
            }

        } catch (Exception e) {
            e.printStackTrace();
        }

        return isSuccess;
    }

    public static boolean deleteManager(String managerID) {
        int convertedID = Integer.parseInt(managerID);

        try {
            con = DBConnect.getConnection();
            stmt = con.createStatement();
            String sql = "DELETE FROM manager WHERE mid = " + convertedID;
            int result = stmt.executeUpdate(sql);

            if (result > 0) {
                isSuccess = true;
            } else {
                isSuccess = false;
            }

        } catch (Exception e) {
            e.printStackTrace();
        }

        return isSuccess;
    }

    public static boolean updateManager(String managerID, String name, String username) {
        boolean isSuccess = false;

        try {
            con = DBConnect.getConnection();
            stmt = con.createStatement();

            // Construct the SQL update query
            String sql = "UPDATE manager SET name = '" + name + "', username = '" + username + "' WHERE mid = " + managerID;

            int rowsUpdated = stmt.executeUpdate(sql);

            if (rowsUpdated > 0) {
                isSuccess = true;
            } else {
                isSuccess = false;
            }
        } catch (Exception e) {
            e.printStackTrace();
        } finally {
            try {
                if (stmt != null) {
                    stmt.close();
                }
                if (con != null) {
                    con.close();
                }
            } catch (SQLException e) {
                e.printStackTrace();
            }
        }

        return isSuccess;
    }

    public static int getManagerCount() {
        int managerCount = 0;

        try {
            con = DBConnect.getConnection();
            stmt = con.createStatement();
            String sql = "SELECT COUNT(*) FROM manager";
            rs = stmt.executeQuery(sql);

            if (rs.next()) {
                managerCount = rs.getInt(1);
            }
        } catch (Exception e) {
            e.printStackTrace();
        }

        return managerCount;
    }
    
}
