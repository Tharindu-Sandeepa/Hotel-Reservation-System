package com.hotel;

import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.MultipartConfig;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import jakarta.servlet.RequestDispatcher;
import java.io.IOException;
import java.io.InputStream;
import jakarta.servlet.http.Part;

@MultipartConfig
@WebServlet("/Hotelinsertservlet")
public class Hotelinsertservlet extends HttpServlet {
    private static final long serialVersionUID = 1L;

    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        String name = request.getParameter("name");
        String type = request.getParameter("type");

        Part filePart = request.getPart("photo"); // Get the uploaded file part
        InputStream photoStream = filePart.getInputStream(); // Get the input stream for the file

        boolean isTrue = HotelDBUtil.insertHotel(name, type, photoStream);

        if (isTrue) {
            RequestDispatcher dis = request.getRequestDispatcher("success.jsp");
            dis.forward(request, response);
        } else {
            RequestDispatcher dis2 = request.getRequestDispatcher("unsuccess.jsp");
            dis2.forward(request, response);
        }
    }
}
