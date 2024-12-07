package pack1;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.ServletException;
import java.io.IOException;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.SQLException;

@WebServlet("/RegisterServlet")
public class RegisterServlet extends HttpServlet {
    private static final String JDBC_URL = "jdbc:mysql://localhost:3306/project";
    private static final String JDBC_USER = "root";
    private static final String JDBC_PASSWORD = "PYM@123$";

    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        String username = request.getParameter("username");
        String password = request.getParameter("password");
        String meter_no = request.getParameter("meter_no");


        // Validate the username and password, e.g., check for empty fields, and perform other validations

        if (username != null && !username.isEmpty() && password != null && !password.isEmpty()&& meter_no != null && !meter_no.isEmpty()) {
            // Attempt to register the user in the database
            Connection connection = null;
            PreparedStatement preparedStatement = null;

            try {
                // Load the MySQL JDBC driver
                Class.forName("com.mysql.cj.jdbc.Driver");
                connection = DriverManager.getConnection(JDBC_URL, JDBC_USER, JDBC_PASSWORD);

                // Define the SQL query to insert user data into the database
                String sql = "INSERT INTO users (username, password, meter_no) VALUES (?, ?, ?)";
                preparedStatement = connection.prepareStatement(sql);
                preparedStatement.setString(1, username);
                preparedStatement.setString(2, password);
                preparedStatement.setString(3, meter_no);


                // Execute the SQL query
                int rowsAffected = preparedStatement.executeUpdate();

                if (rowsAffected > 0) {
                    // User registration successful
                    // Redirect to a success page or login page
                	String jspPage = "login.jsp"; // Replace with the actual JSP page name
                    response.sendRedirect(jspPage);
                } else {
                    // User registration failed
                    // Show an error message or redirect to the registration page
                }
            } catch (ClassNotFoundException | SQLException e) {
                e.printStackTrace();
                // Handle database connection errors
            } finally {
                try {
                    if (preparedStatement != null) {
                        preparedStatement.close();
                    }
                    if (connection != null) {
                        connection.close();
                    }
                } catch (SQLException e) {
                    e.printStackTrace();
                    // Handle database connection closing errors
                }
            }
        } else {
            // Invalid input; show an error message or redirect to the registration page
        }
    }
}