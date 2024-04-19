/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */

import java.io.IOException;
import java.io.PrintWriter;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

//@WebServlet(name = "EmailServlet", urlPatterns = {"EmailServlet"})

public class EmailServlet extends HttpServlet {
    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        response.setContentType("text/html;charset=UTF-8");
        try (PrintWriter out = response.getWriter()) {
            out.println("<h1>Hello Tran Ngoc Nhan ITITIU20264</h1>");
        }
    }
    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        
        
        response.setContentType("text/html;charset=UTF-8");
        
        String email = request.getParameter("email");
        String firstName = request.getParameter("firstName");
        String lastName = request.getParameter("lastName");
        
        try (PrintWriter out = response.getWriter()) {
            out.println("<!DOCTYPE html>");
            out.println("<html>");
            out.println("<head>");
            out.println("<title>Reading three request parameters</title>");
            out.println("</head>");
            out.println("<body>");
            out.println("<style>");
            out.println("h1 {");        // note leading brace
            out.println("color:orange;");
            out.println("background-color:blue;");
            out.println("text-align: center;");
            out.println("}");  
            out.println("</style>");
            out.println("<h1>Thanks for joining our email list </h1>");
            out.println("<span>Here is the information that you entered: </span>");
            out.println("<li>Email :" + email + "</li>");
            out.println("<li>First Name :" + firstName + "</li>");
            out.println("<li>Last Name :" + lastName + "</li>");
            out.println("<span>To enter another email address, click on the Back button on your browser or the Return button show below </span>");
            out.println("<input type=\"button\" value=\"Return\" onclick=\"window.location.href='cancel'\"/>" +
"            </div>");
            out.println("</body>");
            out.println("</html>");
            
            
            
        }
    }
    
//    @Override
//    public String getServletInfo() {
//        return "Short description";
//    }
}
