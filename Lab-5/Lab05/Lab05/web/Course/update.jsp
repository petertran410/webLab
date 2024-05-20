<%@page import="java.sql.ResultSet"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Update Course Page</title>
    </head>
    <body>
         <h1>Update Course Information</h1>
        <%
            String oldcourseID = "", oldname = "";
            
            ResultSet resultSet = DataProcessingPackage.CourseManager.Select(request.getParameter("courseID"));
            if (resultSet.next())
            {
                oldcourseID = resultSet.getString("courseID");
                oldname = resultSet.getString("courseName");
            }
    %>
    
        
        <form method=post action="update.jsp">
            <table>
                <tr>
                    <td>course's ID</td>
                    <td><input type="text" name="courseID" value=<%=oldcourseID%>></td>
                </tr>
                <tr>
                    <td>Name</td>
                    <td><input type="text" name="courseName" value=<%=oldname%>></td>
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
                DataProcessingPackage.CourseManager.Update(oldcourseID, request.getParameter("courseID") , request.getParameter("courseName"));
                response.sendRedirect("index.jsp");
            }
    %>
    </body>
</html>
