package com.admin;

import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import java.io.IOException;

import jakarta.servlet.RequestDispatcher;
import jakarta.servlet.ServletException;
import java.util.List;

@WebServlet("/AdminDeleteServlet")
public class AdminDeleteServlet extends HttpServlet {
    private static final long serialVersionUID = 1L;

    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {

        String admID = request.getParameter("admID");

        boolean isTrue;

        isTrue = AdminDBUtil.deleteAdmin(admID);

        if (isTrue) {
            
            List<Admin> adminList = AdminDBUtil.getAllAdmins();
            request.setAttribute("adminList", adminList);
            RequestDispatcher dispatcher = request.getRequestDispatcher("adminlist.jsp");
            dispatcher.forward(request, response);
        } else {
            
            List<Admin> adminList = AdminDBUtil.getAllAdmins();
            request.setAttribute("adminList", adminList);
            RequestDispatcher dispatcher = request.getRequestDispatcher("adminlist.jsp");
            dispatcher.forward(request, response);
        }
    }
}
