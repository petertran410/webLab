<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
  <head>
    <meta http-equiv="Content-Type" content="text/html; charset=UTF-8" />
    <title>Books Assignment</title>
    <link
      rel="stylesheet"
      type="text/css"
      href="stylesheet.css"
      title="style" />
    <script type="text/javascript" src="javascript.js"></script>
  </head>
  <body>
    <h2><b>Assignment</b></h2>
    <form name="autofillform" action="AutoCompleteServlet">
      <table border="0" cellpadding="5">
        <tbody>
          <tr>
            <td><strong>Book Name:</strong></td>
            <td>
              <input
                type="text"
                size="40"
                id="complete-field"
                onkeyup="doCompletion()" />
            </td>
          </tr>
          <tr>
            <td id="auto-row" colspan="2">
              <table id="complete-table" class="popupBox"></table>
            </td>
          </tr>
        </tbody>
      </table>
    </form>
  </body>
</html>
