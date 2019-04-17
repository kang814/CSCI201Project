package classes;

import java.io.IOException;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.SQLException;
import java.sql.Statement;
import java.util.ArrayList;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

/**
 * Servlet implementation class StoreHistoryServlet
 */
@WebServlet("/StoreHistoryServlet")
public class StoreHistoryServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public StoreHistoryServlet() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub

		HttpSession session = request.getSession();
		boolean loggedin = (boolean) session.getAttribute("checkLogin");
		String name = (String) session.getAttribute("username");
		String restaurant = "dulce";
		if(loggedin) {
			Connection conn1 = null;
			Statement st1 = null;
			
			try {
				System.out.println("Trying to add "+name+"'s history to sql DB");
				Class.forName("com.mysql.cj.jdbc.Driver");
				conn1 = DriverManager.getConnection("jdbc:mysql://localhost:3306/userinfo?user=root&password=Singh1965.&useJDBCCompliantTimezoneShift=true&useLegacyDatetimeCode=false&serverTimezone=UTC");
				st1 = conn1.createStatement();
				st1.executeUpdate("INSERT INTO ORDER_HISTORY " + "VALUES ('" + name + "', '" + restaurant + "',NOW()+0)");
			} catch (SQLException sqle) {
				System.out.println(sqle.getMessage());
			} catch (ClassNotFoundException cnfe) {
				System.out.println(cnfe.getMessage());
			}
			finally {
				try {
					if(st1!=null) {st1.close(); }
					if(conn1!=null) {conn1.close(); }
				} catch (SQLException sqle) {
					System.out.println(sqle.getMessage());
				}
			}
		}
		
		RequestDispatcher rd = request.getRequestDispatcher("paymentMade.jsp");
		rd.forward(request, response);
		return;

	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		doGet(request, response);
	}

}
