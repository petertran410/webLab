

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@page import="java.sql.Statement"%>
<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.PreparedStatement"%>
<%@page import="java.sql.DriverManager"%>
<%@page import="java.sql.Connection"%>
<html>
    <head>
        <meta charset="UTF-8">
        <title>Course Registration demo</title>
    </head>
    <body>
        <h1>Course Registration demo</h1>
        <form action ="index.jsp" method="POST">
            Student ID: 
            <input type = "text" name ="id">
            <input type ="submit" value="Submit" id = "find">
        </form>
        <h2>Manager</h2>
        <a href="./Student/index.jsp">Students Manager</a><br>
        <a href="./Course/index.jsp">Courses Manager</a>
        

<%
    if(request.getParameter("id") != null){
        String id = request.getParameter("id").toString();
        if (id == ""){
            out.println("Please Enter ID");
        }
         else {
            ResultSet rs = DataProcessingPackage.StudentManager.Select(id);
            // Check if the ResultSet has any rows
            if (rs.next()) {
                // Move the cursor to the first row
                request.setAttribute("studentId", rs.getString("StudentID"));
                System.out.println(rs.getString("StudentID"));
                request.setAttribute("studentName", rs.getString("StudentName"));
                System.out.println(request.getAttribute("name"));
                
                request.getRequestDispatcher("./Student/view.jsp").forward(request,response);
                response.sendRedirect("./Student/view.jsp");
            } else {
                // Handle case where no matching record is found
                out.println("No matching record found for ID: " + id);
            }
        }
    }
%>
    </body>
</html>

