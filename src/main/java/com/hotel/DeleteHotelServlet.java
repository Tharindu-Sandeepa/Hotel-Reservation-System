package com.hotel;

import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import jakarta.servlet.RequestDispatcher;
import jakarta.servlet.ServletException;
import java.io.IOException;
import java.util.List;

@WebServlet("/DeleteHotelServlet")
public class DeleteHotelServlet extends HttpServlet {
    private static final long serialVersionUID = 1L;

    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {

        int hotelId = Integer.parseInt(request.getParameter("hotelId"));

        boolean isTrue;

        isTrue = HotelDBUtil.deleteHotel(hotelId);

        if (isTrue) {
            // Hotel successfully deleted, you can redirect to an appropriate page
            // For example, you can redirect to the hotel list page
            List<Hotel> hotelList = HotelDBUtil.getAllHotels();
            request.setAttribute("hotelList", hotelList);
            RequestDispatcher dispatcher = request.getRequestDispatcher("viewHotel.jsp");
            dispatcher.forward(request, response);
        } else {
            // Handle the case where the deletion was not successful
            // You can redirect back to the hotel list page or show an error message
            List<Hotel> hotelList = HotelDBUtil.getAllHotels();
            request.setAttribute("hotelList", hotelList);
            RequestDispatcher dispatcher = request.getRequestDispatcher("unsuccess.jsp");
            dispatcher.forward(request, response);
        }
    }
}
