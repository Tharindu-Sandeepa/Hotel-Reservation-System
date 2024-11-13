package com.admin;

import jakarta.servlet.RequestDispatcher;
import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import java.io.IOException;

@WebServlet("/AdminUpdateServlet")
public class AdminUpdateServlet extends HttpServlet {
    private static final long serialVersionUID = 1L;

    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {

        String adminID = request.getParameter("admID");
        String name = request.getParameter("name");
        String username = request.getParameter("username");

        boolean isUpdated;

        // Call the method to update the admin record
        isUpdated = AdminDBUtil.updateAdmin(adminID, name, username);

        if (isUpdated) {
           
            response.sendRedirect("adminlist.jsp");
        } else {
           
            request.setAttribute("updateError", "Failed to update admin details.");
            RequestDispatcher dis = request.getRequestDispatcher("updateAdmin.jsp");
            dis.forward(request, response);
        }
    }
}
