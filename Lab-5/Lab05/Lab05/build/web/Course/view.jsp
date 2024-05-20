<%@page import="java.sql.Statement"%>
<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.PreparedStatement"%>
<%@page import="java.sql.DriverManager"%>
<%@page import="java.sql.Connection"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Course's Details Page</title>
    </head>
    <%
        String courseID = request.getParameter("courseID");
        String courseNmae = request.getParameter("courseName");
    %>
    <body>
        <h1>Course's Details</h1>
        course Id: <%out.println(courseID);%><br>
        course Name: <%out.println(courseNmae);%>
        
            <%
                //delete in studentcourse
                if(request.getParameter("delete")!=null){
                    String deletedSID = request.getParameter("studentID");
                    String deletedCID = request.getParameter("courseID");
                    DataProcessingPackage.RegistrationManager.Delete(deletedSID, deletedCID);
                }
            %>
        <h2>Student List:</h2>
            <table>
                <tr>
                    <th>Student ID</th>
                    <th>Student Name</th>
                    <th>Action</th>
                </tr>
                <%
                        ResultSet rs = DataProcessingPackage.RegistrationManager.SelectByCourse(courseID);
                        ResultSet rs2;
                        while(rs.next()) {
                            String registeredCourseID = rs.getString("CourseID");
                            String registeredStudentID = rs.getString("StudentID");
                            String registeredStudentName ="";
                            rs2 = DataProcessingPackage.StudentManager.Select(registeredStudentID);
                            
                        
                    %>
                <tr>
                    <td><%out.println(registeredStudentID);%></td>
                    <td><%
                    
                    if (rs2.next()) {
                         registeredStudentName = rs2.getString("StudentName");
                        out.println(registeredStudentName); 
                    } else {
                        out.println("No Course Name found");
                    }
                %></td>
                    <td><a href = "/CourseRegistration/Course/view.jsp?delete&studentID=<%=registeredStudentID%>&courseID=<%=registeredCourseID%>">Remove</a></td>
                </tr>
                <%}%>
            </table>
            <hr>
            <a href="/CourseRegistration/index.jsp">Homepage</a>
        
    </body>
</html>