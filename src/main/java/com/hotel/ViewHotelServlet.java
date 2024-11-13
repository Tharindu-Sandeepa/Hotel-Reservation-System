package com.hotel;

import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import jakarta.servlet.RequestDispatcher;
import java.io.IOException;
import java.util.List;

@WebServlet("/ViewHotelServlet")
public class ViewHotelServlet extends HttpServlet {
    private static final long serialVersionUID = 1L;

    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        List<Hotel> hotels = HotelDBUtil.getAllHotels();
        request.setAttribute("hotels", hotels);

        // Dispatch to the viewHotel.jsp page
        RequestDispatcher dispatcher = request.getRequestDispatcher("viewHotel.jsp");
        dispatcher.forward(request, response);
    }
}
