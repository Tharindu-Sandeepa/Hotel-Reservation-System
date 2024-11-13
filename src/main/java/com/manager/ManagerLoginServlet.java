package com.manager;

import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import java.io.IOException;
import java.io.PrintWriter;
import java.util.List;

@WebServlet("/ManagerLoginServlet")
public class ManagerLoginServlet extends HttpServlet {
    private static final long serialVersionUID = 1L;

    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        PrintWriter out = response.getWriter();
        response.setContentType("text/html");

        String username = request.getParameter("username");
        String password = request.getParameter("password");
        boolean isValid;

        isValid = ManagerDBUtil.validate(username, password);

        if (isValid) {
            // Get manager details
            List<Manager> managerDetails = ManagerDBUtil.getManager(username);

            if (!managerDetails.isEmpty()) {
                String managerName = managerDetails.get(0).getName(); // Assuming name is at index 0

                // Display JavaScript alert with manager name
                out.println("<script type='text/javascript'>");
                out.println("alert('Welcome " + managerName + "');");
                out.println("window.location.href='manager/managerdashboard.jsp';");
                out.println("</script>");
            }
        } else {
            // If login is not valid, show an error message and stay on the login page
            out.println("<script type='text/javascript'>");
            out.println("alert('Your username or password is incorrect');");
            out.println("location='manager/managerlogin.jsp'");
            out.println("</script>");
        }
    }
}
