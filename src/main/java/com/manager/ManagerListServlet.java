package com.manager;

import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import java.io.IOException;
import java.util.List;

@WebServlet("/ManagerListServlet")
public class ManagerListServlet extends HttpServlet {
    protected void doGet(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        List<Manager> managers = ManagerDBUtil.getAllManagers(); // Implement this method
        request.setAttribute("managers", managers);
        request.getRequestDispatcher("manager/managerList.jsp").forward(request, response);
    }
}
