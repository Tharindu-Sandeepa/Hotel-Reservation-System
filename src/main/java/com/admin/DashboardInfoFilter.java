package com.admin;
import jakarta.servlet.annotation.WebFilter;

import java.io.IOException;

import jakarta.servlet.Filter;
import jakarta.servlet.FilterChain;
import jakarta.servlet.FilterConfig;
import jakarta.servlet.ServletException;
import jakarta.servlet.ServletRequest;
import jakarta.servlet.ServletResponse;
import jakarta.servlet.http.HttpServletRequest;

@WebFilter(urlPatterns = "/admindash.jsp")
public class DashboardInfoFilter implements Filter {
    public void init(FilterConfig filterConfig) throws ServletException {
        // Initialization code here (if needed)
    }

    public void doFilter(ServletRequest request, ServletResponse response, FilterChain chain)
            throws IOException, ServletException {
        if (request instanceof HttpServletRequest) {
            HttpServletRequest httpRequest = (HttpServletRequest) request;

            // Forward the request to DashboardInfoServlet
            httpRequest.getRequestDispatcher("/DashboardInfoServlet").forward(request, response);
        } else {
            chain.doFilter(request, response);
        }
    }

    public void destroy() {
        // Cleanup code here (if needed)
    }
}
