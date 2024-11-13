package com.hotel;

import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import jakarta.servlet.http.Part;

import java.io.IOException;
import java.io.InputStream;
import java.sql.SQLException;

@WebServlet("/UpdateHotelServlet")
public class UpdateHotelServlet extends HttpServlet {
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        int hotelId = Integer.parseInt(request.getParameter("id"));
        String name = request.getParameter("name");
        String type = request.getParameter("type");

        boolean isUpdated;

        // Call the method to update the hotel record without changing the image
        isUpdated = HotelDBUtil.updateHotel(hotelId, name, type);

        if (isUpdated) {
            // If the hotel details are successfully updated, you can redirect to a success page
            response.sendRedirect("success.jsp");
        } else {
            // If the update fails, you can handle the error or display a message
            // For example, you can set an error attribute in the request and forward to an error page
            request.setAttribute("updateError", "Failed to update hotel details.");
            request.getRequestDispatcher("error.jsp").forward(request, response);
        }
    }
}
