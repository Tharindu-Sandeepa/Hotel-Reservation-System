package com.admin; // Replace with your package name

import jakarta.servlet.RequestDispatcher;
import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebFilter;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import java.io.IOException;

import com.customer.CustomerDBUtil;
import com.hotel.HotelDBUtil;
import com.manager.ManagerDBUtil;

@WebServlet("/DashboardInfoServlet")

public class DashboardInfoServlet extends HttpServlet {
    private static final long serialVersionUID = 1L;

    protected void doGet(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {

        // Get counts from your utility classes
    	int customerCount = CustomerDBUtil.getCustomerCount();
        int adminCount = AdminDBUtil.getAdminCount();
        int hotelCount = HotelDBUtil.getHotelCount();
        int managerCount = ManagerDBUtil.getManagerCount();

        // Set the attributes in the request to make them available in the JSP
        request.setAttribute("customerCount", customerCount);
        request.setAttribute("adminCount", adminCount);
        request.setAttribute("hotelCount", hotelCount);
        request.setAttribute("managerCount", managerCount);
       

        // Forward the request to your JSP page
        RequestDispatcher dispatcher = request.getRequestDispatcher("admindash.jsp"); // Change to your JSP page name
        dispatcher.forward(request, response);
    }
}
