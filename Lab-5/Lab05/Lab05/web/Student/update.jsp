<%@page import="java.sql.*"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Update Student Information Page</title>
    </head>
    <body>
        <h1>Update Student Information</h1>
        <%
            String oldstudentID = "", oldname = "";
            
            ResultSet resultSet = DataProcessingPackage.StudentManager.Select(request.getParameter("studentID"));
            if (resultSet.next())
            {
                oldstudentID = resultSet.getString("studentID");
                oldname = resultSet.getString("studentName");
            }
    %>
    
        
        <form method=post action="update.jsp">
            <table>
                <tr>
                    <td>Student's ID</td>
                    <td><input type="text" name="studentID" value="<%=oldstudentID%>"></td>
                </tr>
                <tr>
                    <td>Name</td>
                    <td><input type="text" name="studentName" value="<%=oldname%>"></td>
                </tr>
               
                <tr>
                    <td><input type="submit" name="Update" value="Update"></td>
                    <td><input type="reset" value="Cancel"></td>
                </tr>
            </table>
        </form>
    
    <%   //Check if user press submit button
            if (request.getParameter("Update") != null)
            {
                DataProcessingPackage.StudentManager.Update(oldstudentID, request.getParameter("studentID") , request.getParameter("studentName"));
                response.sendRedirect("index.jsp");
            }
    %>
    </body>
</html>
