<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Add New Student Page</title>
    </head>
    <body>
        <h1>Add New Student!</h1>
        <form action ="index.jsp" method ="post">
            <table>
                <tr>
                    <td>ID</td>
                    <td><input type="text" name="studentID"/></td>
                </tr>
                <tr>
                    <td>studentName</td>
                    <td><input type="text" name="studentName"/></td>
                </tr>
               
                <tr>
                    <td></td>
                    <td><input type="Submit" value="Add" name="Add"/></td>
                </tr>
            </table>
        </form>
    </body>
</html>
