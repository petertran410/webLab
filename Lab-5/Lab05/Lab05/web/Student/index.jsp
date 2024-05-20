
<%@page import="java.sql.* "%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Student List</title>
    </head>
    <body>
        <h1>Student List!</h1>
        <table style ="padding:30px">
            <tr>
                <th>ID</th>
                <th>Student Name</th>
                <th>Action</th>
            </tr>
                <tr>
                    <%
                        //This code to input data
            String studentID = request.getParameter("studentID");
            String studentName = request.getParameter("studentName");
            String title = "You must input data";
            if (request.getParameter("Add") != null) //Check if submit button is pressed
            {
                if (studentID.equals("") &&  studentName.equals(""))

                {
                    out.print("<font color = \"red\">" + title + "</font>");
                } else
                {
                   DataProcessingPackage.StudentManager.Insert(studentID, studentName);
                }
            }
          
                        if (request.getParameter("delete") != null)
            {
                DataProcessingPackage.StudentManager.Delete(studentID);
            }
                        ResultSet rs = DataProcessingPackage.StudentManager.Select();
                        while (rs.next()){
                            String sid = rs.getString("StudentID");
                            String sname = rs.getString("StudentName");%>
                            <td><%out.print(sid);%></td>
                            <td><%out.print(sname);%></td>
                            <td>
                                <a href="/CourseRegistration/Student/update.jsp?studentID=<%=rs.getString("studentID")%>">Edit</a>|
                                <a href="/CourseRegistration/Student/index.jsp?delete&studentID=<%=rs.getString("studentID")%>">Delete</a>
                            </td>
                </tr>
                    <%    }
                    %>
                
            </table>
                <a href="/CourseRegistration/Student/new.jsp">New Student</a>
                <hr>
                <a href="/CourseRegistration/index.jsp">Homepage</a>
        
    </body>
</html>
