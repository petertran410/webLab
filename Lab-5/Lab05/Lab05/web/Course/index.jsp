<%@page import="java.sql.*"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Course List Page</title>
    </head>
    <body>
        
        <h1>Course List!</h1>
        <table style ="padding:30px">
            <tr>
                <th>ID</th>
                <th>Course Name</th>
                <th>Action</th>
            </tr>
                <tr>
                    <%
                        //This code to input data
            String courseID = request.getParameter("courseID");
            String courseName = request.getParameter("courseName");
            String title = "You must input data";
            if (request.getParameter("Add") != null) //Check if submit button is pressed
            {
                if (courseID.equals("") &&  courseName.equals(""))

                {
                    out.print("<font color = \"red\">" + title + "</font>");
                } else
                {
                   DataProcessingPackage.CourseManager.Insert(courseID, courseName);
                }
            }
                        //Delete
                        if (request.getParameter("delete") != null)
            {
                DataProcessingPackage.CourseManager.Delete(courseID);
            }
                        ResultSet rs = DataProcessingPackage.CourseManager.Select();
                        while (rs.next()){
                            String cid = rs.getString("CourseID");
                            String cname = rs.getString("CourseName");%>
                            <td><%out.print(cid);%></td>
                            <td><a href="/CourseRegistration/Course/view.jsp?courseID=<%=cid%>&courseName=<%=cname%>"><%=cname%></a></td>
                            <td>
                                <a href="/CourseRegistration/Course/update.jsp?courseID=<%=rs.getString("courseID")%>">Edit</a>|
                                <a href="/CourseRegistration/Course/index.jsp?delete&courseID=<%=rs.getString("courseID")%>">Delete</a>
                            </td>
                </tr>
                    <%    }
                    %>
                
            </table>
                <a href="/CourseRegistration/Course/new.jsp">New Course</a>
                <hr>
                <a href="/CourseRegistration/index.jsp">Homepage</a>
    </body>
</html>
