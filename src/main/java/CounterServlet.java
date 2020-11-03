import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;
import java.io.PrintWriter;

@WebServlet(name = "CounterServlet", urlPatterns = "/count")
public class CounterServlet extends HttpServlet {
    private int counter = 0;

    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        response.setContentType("text/html");
        PrintWriter out = response.getWriter();
        counter++;

        String count = request.getParameter("counter");
        if (count == null)
            out.printf("<h3>Counter: %d</h3>%n", counter);
        else {
            counter = Integer.parseInt(count);
            out.printf("<h3>Counter: %d</h3>%n", counter);
        }
    }
}
