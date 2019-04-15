package classes;

import java.io.IOException;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;
import java.util.ArrayList;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

/**
 * Servlet implementation class searchRestaurant
 */
@WebServlet("/searchRestaurant")
public class searchRestaurant extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public searchRestaurant() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		String searchInfo  = request.getParameter("searchPlace");
		
		ArrayList<String> menuName = new ArrayList<String>();
		ArrayList<Double> menuPrice = new ArrayList<Double>();
		
		String nextPage = "/"+searchInfo +".jsp";
		
//		Connection conn = null;
//		Statement st = null;
//		ResultSet rs = null;
//		String error = null;
//		Boolean errorb = false;
//		
//		try
//		{
//			Class.forName("com.mysql.cj.jdbc.Driver");
//			//get the name of the MYSQL
//			conn = DriverManager.getConnection("jdbc:mysql://localhost:3306/userinfo?user=root&password=root&useJDBCCompliantTimezoneShift=true&useLegacyDatetimeCode=false&serverTimezone=UTC");
//			st = conn.createStatement(); //gives ability to create sequel statement
//			rs = st.executeQuery("SELECT * FROM restaurant WHERE name='"+searchInfo+"'");
//			while(rs.next())
//			{
//				menuName(rs.getString("name"))
//				name = rs.getString("username");
//				pw = rs.getString("password");
//				
//			}
//			
//			//check if username exists
//			if(!username.equalsIgnoreCase(name))
//			{
//				error = "username";
//				errorb = true;
//				nextPage = "/login.jsp";
//			}
//			else if(!password.equals(pw))
//			{
//				error = "password";
//				errorb= true;
//				nextPage = "/login.jsp";
//			}
//			else
//			{
//				error = "";
//			}
//			
//			request.setAttribute("error", error);
//			//got rid of sending id
//			request.setAttribute("loginName", name);
//			
//			
			RequestDispatcher dispatch = getServletContext().getRequestDispatcher(nextPage);
			dispatch.forward(request, response);
			
			
//		}
//		catch(SQLException | ClassNotFoundException e)
//		{
//			System.out.println("e: "+e.getMessage());
//		}
		
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		doGet(request, response);
	}

}
