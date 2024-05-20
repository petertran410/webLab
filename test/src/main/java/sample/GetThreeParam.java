/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/JSP_Servlet/Servlet.java to edit this template
 */
package sample;

import java.io.IOException;
import java.io.PrintWriter;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

/**
 *
 * @author macbook
 */
@WebServlet(name = "GetThreeParam", urlPatterns = {"/GetThreeParam"})
public class GetThreeParam extends HttpServlet {

    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        response.setContentType("text/html;charset=UTF-8");
        try (PrintWriter out = response.getWriter()) {
            out.println("<h1>Hello Tran Ngoc Nhan ITITIU20264 THis is doGetMethod for ex1</h1>");
        }
    }
    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        
        
        response.setContentType("text/html;charset=UTF-8");
        
        String first = request.getParameter("first");
        String second = request.getParameter("second");
        String third = request.getParameter("third");
        
        try (PrintWriter out = response.getWriter()) {
            out.println("<!DOCTYPE html>");
            out.println("<html>");
            out.println("<head>");
            out.println("<title>Reading three request parameters</title>");
            out.println("</head>");
            out.println("<body>");
            out.println("<style>");
            out.println("h1 {");        // note leading brace
            out.println("color:blue;");
            out.println("background-color:yellow;");
            out.println("text-align: center;");
            out.println("}");  
            out.println("</style>");
            out.println("<h1>Reading Three Request Parameters </h1>");
            out.println("<li>param1 :" + first + "</li>");
            out.println("<li>param2 :" + second + "</li>");
            out.println("<li>param3 :" + third + "</li>");
            out.println("</body>");
            out.println("</html>");
            
            
            
        }
    }
    
    @Override
    public String getServletInfo() {
        return "Short description";
    }// </editor-fold>

}
