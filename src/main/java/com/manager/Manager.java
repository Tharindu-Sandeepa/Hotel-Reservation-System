package com.manager;

public class Manager {
    private int managerID;
    private String username;
    private String password;
    private String name;

    public Manager(int managerID, String username, String password, String name) {
        this.managerID = managerID;
        this.username = username;
        this.password = password;
        this.name = name;
    }

    public int getManagerID() {
        return managerID;
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
