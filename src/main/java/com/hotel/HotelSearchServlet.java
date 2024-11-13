package com.hotel;

import java.io.IOException;
import java.util.List;

import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;

// Import necessary Jakarta EE (formerly Java EE) packages

@WebServlet("/hotelSearch")
public class HotelSearchServlet extends HttpServlet {
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        // Get the search keyword from the request
        String searchKeyword = request.getParameter("searchKeyword");

        // Perform a database search for hotels based on the keyword
        List<Hotel> searchResults = HotelDBUtil.searchHotels(searchKeyword);

        // Set the search results in a request attribute
        request.setAttribute("searchResults", searchResults);

        // Forward the request to a JSP page to display search results
        request.getRequestDispatcher("searchResults.jsp").forward(request, response);
    }
}
