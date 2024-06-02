package com.example;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;
import java.nio.file.Files;
import java.nio.file.Paths;

@WebServlet("/data")
public class Data extends HttpServlet {
    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        response.setContentType("text/xml");
        String xmlFilePath = getServletContext().getRealPath("/WEB-INF/classes/Books.xml");
        String xmlContent = new String(Files.readAllBytes(Paths.get(xmlFilePath)));
        response.getWriter().write(xmlContent);
    }
}
