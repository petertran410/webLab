<%@page import="java.sql.Statement"%>
<%@page import="java.sql.ResultSet"%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Student's Details Page</title>
    </head>
    <%
        String id = null;
        String name = null;
        Object studentIdAttr = request.getAttribute("studentId");
        Object studentNameAttr = request.getAttribute("studentName");

        if (studentIdAttr != null) {
            id = studentIdAttr.toString();
        } else {
            id = request.getParameter("id");
        }

        if (studentNameAttr != null) {
            name = studentNameAttr.toString();
        } else {
            name = request.getParameter("name");
        }
    %>
    <body>
        <h1>Student's Details</h1>
        Student Id: <%out.println(id);%><br>
        Student Name: <%out.println(name);%>
        <h2>Select Course</h2>
        <form action= "/CourseRegistration/Student/view.jsp" method ="POST">
            <input type="hidden" name="id" value="<%= id%>">
            <input type="hidden" name="name" value="<%= name%>">
            Courses: 
            <select name ="registeredCourseId">
                <%

                    ResultSet rs = DataProcessingPackage.CourseManager.Select();
                    while (rs.next()) {
                        String registeredCourseName = rs.getString("CourseName");
                        String registeredCourseId = rs.getString("_ID");%>

                <option value = <%=registeredCourseId%>><%out.println(registeredCourseName);%></option>
                <% }%>
            </select> 
            <input type ="submit" value = "Add" name = "add">
        </form>
        <%
            // input studentcourse
            if (request.getParameter("add") != null) {

                DataProcessingPackage.RegistrationManager.Insert(id, request.getParameter("registeredCourseId"));
            }
        %>
        <h2>Registered Courses:</h2>
        <%
            String studentId = request.getParameter("studentID");
            String courseId = request.getParameter("courseID");
            if (request.getParameter("courseID") != null) {
                DataProcessingPackage.RegistrationManager.Delete(studentId, courseId);
            }
        %>
        <table>
            <tr>
                <th>Course ID</th>
                <th>Course Name</th>
                <th>Course Action</th>
            </tr>
            <%
                rs = DataProcessingPackage.RegistrationManager.SelectByStudent(id);
                ResultSet CourseName;
                while (rs.next()) {
                    String courseID = rs.getString("_ID");
                    String studentID = rs.getString("StudentID");
                    CourseName = DataProcessingPackage.CourseManager.Select(courseID);

            %>
            <tr>
                <td><%out.println(courseID);%></td>
                <td><%
                    if (CourseName.next()) {
                        out.println(CourseName.getString("CourseName"));
                    } else {
                        out.println("No Course Name found");
                    }
                    %></td>
                <td><a href = "/CourseRegistration/Student/view.jsp?courseID=<%=courseID%>&studentID=<%=studentID%>&name=<%=name%>&id=<%=id%>">Remove</a></td>
            </tr>
            <%}%>
        </table>
        <hr>
        <a href="/CourseRegistration/index.jsp">Homepage</a>

    </body>
</html>
