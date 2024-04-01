import java.io.IOException;
import javax.servlet.ServletException;
public class GetThreeParam extends HttpServlet {
  protected void doGet(HttpServletRequest request, HttpServletResponse response)
      throws ServletException, IOException {
    response.setContentType("text/html");
    PrintWriter out = response.getWriter();
    out.println("<html>");
    out.println("<head><title>Reading Three Request Parameters</title></head>");
    out.println("<body>");
    out.println("<h2>Reading Three Request Parameters</h2>");
    out.println("<p>param1: " + request.getParameter("param1") + "</p>");
    out.println("<p>param2: " + request.getParameter("param2") + "</p>");
    out.println("<p>param3: " + request.getParameter("param3") + "</p>");
    out.println("</body>");
    out.println("</html>");
  }
}
