package com.admin;

import java.sql.Connection;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;
import java.util.ArrayList;
import java.util.List;

public class AdminDBUtil {

	private static boolean isSuccess;
	private static Connection con = null;
	private static Statement stmt = null;
	private static ResultSet rs = null;

	// login validate
	public static boolean validate(String username, String password) {

		try {
			con = DBConnect.getConnection();
			stmt = con.createStatement();
			String sql = "select * from admin where username ='" + username + "' and password='" + password + "'";
			rs = stmt.executeQuery(sql);

			if (rs.next()) {
				isSuccess = true;
			} else {
				isSuccess = false;
			}

		} catch (Exception e) {
			e.printStackTrace();
		}

		return isSuccess; // change this to var isSuccess 
	}
	
	public static List<Admin> getAdmin(String userName) {

		ArrayList<Admin> admin = new ArrayList<>();

		try {
			con = DBConnect.getConnection();
			stmt = con.createStatement();
			String sql = "select * from admin where username='" + userName + "'";
			rs = stmt.executeQuery(sql);

			while (rs.next()) {
				int admID = rs.getInt(1);
				String name = rs.getString(2);
				
				String username = rs.getString(3);
				String password = rs.getString(4);

				Admin cus = new Admin(admID,username,password,name);
				admin.add(cus);
			}

		} catch (Exception e) {
			e.printStackTrace();
		}

		return admin;
	}
	
	public static List<Admin> getAllAdmins() {
	    ArrayList<Admin> adminList = new ArrayList<>();

	    try {
	        con = DBConnect.getConnection();
	        stmt = con.createStatement();
	        String sql = "select * from admin";
	        rs = stmt.executeQuery(sql);

	        while (rs.next()) {
	            int admID = rs.getInt(1);
	            String name = rs.getString(2);
	            String username = rs.getString(3);
	            String password = rs.getString(4);

	            Admin admin = new Admin(admID, name, username, password);
	            adminList.add(admin);
	        }
	    } catch (Exception e) {
	        e.printStackTrace();
	    }

	    return adminList;
	}
	public static boolean insertAdmin(String name, String username, String password) {
	    boolean isSuccess = false;

	    try {
	        con = DBConnect.getConnection();
	        stmt = con.createStatement();
	        String sql = "INSERT INTO admin (username, password, name) VALUES ('" + username + "', '" + password + "', '" + name + "')";
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
	
	public static boolean deleteAdmin(String admID) {
	    int convertedID = Integer.parseInt(admID);

	    try {
	        con = DBConnect.getConnection();
	        stmt = con.createStatement();
	        String sql = "delete from admin where admID = " + convertedID;
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
	public static boolean updateAdmin(String adminID, String name, String username) {
	    boolean isSuccess = false;

	    try {
	        con = DBConnect.getConnection();
	        stmt = con.createStatement();

	        // Construct the SQL update query
	        String sql = "UPDATE admin SET name = '" + name + "', username = '" + username + "' WHERE admID = " + adminID;

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

	public static int getAdminCount() {
	    int adminCount = 0;

	    try {
	        con = DBConnect.getConnection();
	        stmt = con.createStatement();
	        String sql = "SELECT COUNT(*) FROM admin";
	        rs = stmt.executeQuery(sql);

	        if (rs.next()) {
	            adminCount = rs.getInt(1);
	        }
	    } catch (Exception e) {
	        e.printStackTrace();
	    }

	    return adminCount;
	}


}
