package com.admin;

public class Admin {
    private int admID;
    private String username;
    private String password;
    private String name;

    public Admin(int admID, String username, String password, String name) {
        this.admID = admID;
        this.username = username;
        this.password = password;
        this.name = name;
    }

    public int getAdmID() {
        return admID;
    }

    public String getUsername() {
        return username;
    }

    public String getPassword() {
        return password;
    }

    public String getName() {
        return name;
    }
}
