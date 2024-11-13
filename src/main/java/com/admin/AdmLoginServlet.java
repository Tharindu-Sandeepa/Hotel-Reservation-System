package com.admin;

import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import java.io.IOException;
import java.io.PrintWriter;
import java.util.List;

@WebServlet("/AdmLoginServlet")
public class AdmLoginServlet extends HttpServlet {
    private static final long serialVersionUID = 1L;

    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        PrintWriter out = response.getWriter();
        response.setContentType("text/html");

        String username = request.getParameter("username");
        String password = request.getParameter("password");
        boolean isValid;

        isValid = AdminDBUtil.validate(username, password);

        if (isValid) {
            // Get admin details
            List<Admin> adminDetails = AdminDBUtil.getAdmin(username);

            if (!adminDetails.isEmpty()) {
                String adminName = adminDetails.get(0).getName(); // Assuming name is at index 0

                // Display JavaScript alert with admin name
                out.println("<script type='text/javascript'>");
                out.println("alert('Welcome " + adminName + "');");
                out.println("window.location.href='admindash.jsp';");
                out.println("</script>");
            }
        } else {
            // If login is not valid, show an error message and stay on the login page
            out.println("<script type='text/javascript'>");
            out.println("alert('Your username or password is incorrect');");
            out.println("location='adminlogin.jsp'");
            out.println("</script>");
        }
    }
}
