<%@ page import="java.sql.*" %>
<%@ page import="java.util.List" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
    <head>
        <title>Course Register</title>
    </head>
    <body>
        <%
            String connectionURL = "jdbc:mysql://localhost:3306/lab4-jdbc"; 
            Connection connection = null; 
            Statement statement = null; 
            ResultSet rs = null;
        %>
        <%
            String cUsername = null;
            String _id = null;
            Cookie[] listOfCookie = request.getCookies();
            if (listOfCookie != null) {
                for (Cookie c : listOfCookie) {
                    if (c.getName().equals("username")) {
                        cUsername = c.getValue();
                    }
                    if (c.getName().equals("_id")) {
                        _id = c.getValue();
                    }
                }
            }
            if ("POST".equalsIgnoreCase(request.getMethod()) && request.getParameter("submit") != null) {
                out.println("Course Registed Successful!");
                String[] list = request.getParameterValues("courses");
                for (String course : list) {
                    try {
                        Class.forName("com.mysql.jdbc.Driver"); 
                        connection = DriverManager.getConnection(connectionURL, "Admin", "admin"); 
                        statement = connection.createStatement();
                        statement.execute("INSERT INTO lab4-jdbc.studentcourse (Student_ID, Course_ID) VALUES (\"" + _id + "\", \"" + course + "\");\n");

                    } catch (ClassNotFoundException e) {
                        e.printStackTrace();
                    } catch (SQLException e) {
                        e.printStackTrace();
                    }
                }
                response.sendRedirect(request.getContextPath() + "/homepage.jsp");

            } else {
                try {
                    Class.forName("com.mysql.jdbc.Driver"); 
                    connection = DriverManager.getConnection(connectionURL, "Admin", "admin"); 
                    statement = connection.createStatement();
                    rs = statement.executeQuery("SELECT * FROM course"); 
                    out.println("<h2>Course Registration</h2>");
                    if (rs.next()) {
                        out.println("<form method=\"post\">");
                        out.println("<table><tr>");
                        while (rs.next()) {
                            out.println("<td><input type=\"checkbox\" name=\"courses\" value=\" " + rs.getString("_ID") + " \"></td>");
                            out.println("<td>" + rs.getString("CourseName") + "</td>");
                            out.println("<td>" + rs.getString("Credits") + "</td>");
                            out.println("</tr>");
                        } 
                    }
                    out.println("<tr><td><input type=\"submit\" value=\"Submit courses\"> </td></tr></table></form>");
                    rs.close(); 
                } catch (ClassNotFoundException e) {
                    e.printStackTrace();
                } catch (SQLException e) {
                    e.printStackTrace();
                }
            }
        %>
    </body>
</html>
