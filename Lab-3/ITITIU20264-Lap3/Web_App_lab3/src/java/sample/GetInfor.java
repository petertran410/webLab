
package sample;

import java.io.IOException;
import java.io.PrintWriter;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;


@WebServlet(name = "GetInfor", urlPatterns = {"/GetInfor"})
public class GetInfor extends HttpServlet {

    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        response.setContentType("text/html;charset=UTF-8");
        try (PrintWriter out = response.getWriter()) {
            out.println("<h1>Hello  Tran Ngoc Nhan ITITIU20264 THis is doGetMethod for ex1 </h1>");
        }
    }
    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        
        
        response.setContentType("text/html;charset=UTF-8");
        
        String id = request.getParameter("id");
        String name = request.getParameter("name");
        String email = request.getParameter("email");
        String gender = request.getParameter("gender");
        String major = request.getParameter("major");
        String interestingfield = request.getParameter("interestingfield");
        
        
        try (PrintWriter out = response.getWriter()) {
            out.println("<!DOCTYPE html>");
            out.println("<html>");
            out.println("<head>");
            out.println("<title>Reading three request parameters</title>");
            out.println("</head>");
            out.println("<body>");
            out.println("<style>");
            out.println("type=text/css");
            out.println("table, th, td{");
            out.println("border:1px solid #868585");
            out.println("}");
            out.println("table{");
            out.println("text-align: center");
            out.println("border-collapse:collapse");
            out.println("width:100%");
            out.println("}");
            out.println("th, td{");
            out.println("text-align:left");
            out.println("padding:10px");
            out.println("}");
            out.println("table tr:nth-child(odd){");
            out.println("background-color:#eee");
            out.println("}");
            out.println("table tr:nth-child(even){");
            out.println("background-color:white;");
            out.println("}");
            out.println("table tr:nth-child(1){");
            out.println("background-color:skyblue");
            out.println("}");
            out.println("h1 {");   
            out.println("color:blue");
            out.println("background-color:yellow");
            out.println("text-align: center");
            out.println("}");  
            out.println("</style>");
            out.println("<h1>Reading Personal Information </h1>");
            out.println("<table>");
            
            out.println("<tr>");
            out.println("<th> Information </th>");
            out.println("<th> GetInfor </th>");
            out.println("</tr>");
            
            out.println("<tr>");
            out.println("<th> ID </th>");
            out.println("<th>" + id + "</th>");
            out.println("</tr>");
            
            out.println("<tr>");
            out.println("<th> Name </th>");
            out.println("<th>" + name + "</th>");
            out.println("</tr>");
            
            out.println("<tr>");
            out.println("<th> Email </th>");
            out.println("<th>" + email + "</th>");
            out.println("</tr>");
            
            out.println("<tr>");
            out.println("<th> Gender </th>");
            out.println("<th>" + gender + "</th>");
            out.println("</tr>");
            
            out.println("<tr>");
            out.println("<th> Major </th>");
            out.println("<th>" + major + "</th>");
            out.println("</tr>");
            
            out.println("<tr>");
            out.println("<th> Interesting Field </th>");
            out.println("<th>" + interestingfield + "</th>");
            out.println("</tr>");

            out.println("</table>");
            out.println("</body>");
            out.println("</html>");
        }
    
    }
    @Override
    public String getServletInfo() {
        return "Short description";
    }// </editor-fold>

}
