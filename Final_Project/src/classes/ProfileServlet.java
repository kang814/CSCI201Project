package classes;

import java.sql.Statement;
import java.util.LinkedList;
import java.io.IOException;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.ResultSet;
import java.sql.SQLException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import javafx.util.Pair;



/**
 * Servlet implementation class ProfileServlet
 */
@WebServlet("/ProfileServlet")
public class ProfileServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public ProfileServlet() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		String name = (String) request.getSession().getAttribute("username");
		
		System.out.println("ONEONEONEONEONE");
		
		Connection conn = null;
		Statement st = null;
		ResultSet rs = null;
		try {
			Class.forName("com.mysql.cj.jdbc.Driver");
			conn = DriverManager.getConnection("jdbc:mysql://localhost:3306/userinfo?user=root&password=Singh1965.&useJDBCCompliantTimezoneShift=true&useLegacyDatetimeCode=false&serverTimezone=UTC");
			st = conn.createStatement();
			
			rs = st.executeQuery("SELECT * FROM ORDER_HISTORY where USER_NAME='" + name + "'");
			
			LinkedList<Pair<String, Date> > queue = new LinkedList<Pair<String, Date> >();
			String restaurant = "";
			
			System.out.println("TWOTWOTWO");
			
			while(rs.next()) {
				restaurant = rs.getString("RESTAURANT");
		
				String date = Long.toString(rs.getLong("SEARCHTIME"));
				System.out.println(date);
				String yearString = date.substring(0, 4);
				int year = Integer.parseInt(yearString);
				
				
				System.out.println("THRWEWRWERWERWERWE");
				
				//getting month
				String monthString;
				if(date.charAt(4) == '0')
				{//if month is < 10
					monthString = date.substring(5, 6);
				}
				else {
					monthString = date.substring(4, 6);
				}
				int month = Integer.parseInt(monthString);
				
				
				//getting day
				String dayString;
				if(date.charAt(6) == '0')
				{//if month is < 10
					dayString = date.substring(7, 8);
				}
				else {
					dayString = date.substring(6, 8);
				}
				int day = Integer.parseInt(dayString);
				
				Date d = new Date(year, month, day);
				
				Pair p = new Pair(restaurant, d);
				
				System.out.println(p.getKey() + "WEIJIUWEHR + " + p.getValue());
				
				queue.add(p);
			}
			
			System.out.println("SDFIUHSDFUIHSDUFI");
			request.setAttribute("q", queue);
			RequestDispatcher rd = request.getRequestDispatcher("/profile.jsp");
			rd.forward(request, response);
			return;
			
		}catch(SQLException sqle) {
			System.out.println(sqle.getMessage());
		}catch (ClassNotFoundException cnfe) {
			System.out.println(cnfe.getMessage());
		}finally {
			try {
				if(rs!=null) {rs.close();}
				if(st!=null) {st.close();}
				if(conn!=null) {conn.close();}
				
			}catch (SQLException sqle) {
				System.out.println(sqle.getMessage());
			}
		}
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		doGet(request, response);
	}

}
