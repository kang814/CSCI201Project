package classes;

import java.io.IOException;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

/**
 * Servlet implementation class register
 */
@WebServlet("/register")
public class register extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public register() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		response.getWriter().append("Served at: ").append(request.getContextPath());
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		String username = request.getParameter("username");
		String password = request.getParameter("password");
		String address = request.getParameter("address");
		String nextPage = "/registercomplete.jsp";
		String error="";
		String usererror = "false";
		String pwerror = "false";
		Boolean userError = false;
		
		HttpSession session = request.getSession();
		
		Connection conn = null;
		Statement st = null;
		ResultSet rs = null;
		
		if(password==""||password==null)
		{
			userError = true;
			nextPage = "/register.jsp";
			error="password";
		}
		
		if(username==""||username==null)
		{
			System.out.println("USERNAME IS NULL");
			userError = true;
			nextPage = "/register.jsp";
			error= "username";
			
		}
		else
		{
		
		}
		
		
		
		try
		{
			PreparedStatement ps = null;
			Class.forName("com.mysql.cj.jdbc.Driver");
			conn = DriverManager.getConnection("jdbc:mysql://localhost:3306/userinfo?user=root&password=Singh1965.&useJDBCCompliantTimezoneShift=true&useLegacyDatetimeCode=false&serverTimezone=UTC");
		
			//check if user exists and if exist
			st= conn.createStatement();
			rs = st.executeQuery("SELECT * FROM user WHERE username='"+username+"'");
			if(rs.next())
			{
			
				if(rs.getString("username")!=null)
				{
					userError = true;
					nextPage = "/register.jsp";
				}
			}
			
			//if no user exists
			else
			{
			
				ps = conn.prepareStatement("INSERT INTO user (username, password,address) VALUES(?,?,?)");
				ps.setString(1, username);
				ps.setString(2, password);
				ps.setString(3, address);
				ps.executeUpdate();
				session.setAttribute("checkLogin", true);
				session.setAttribute("username", username);
				
			}
			
			request.setAttribute("error", error);
			request.setAttribute("userError", userError);
			request.setAttribute("username", username);
			request.setAttribute("password", password);
			
			
			
			RequestDispatcher dispatch = getServletContext().getRequestDispatcher(nextPage);
			dispatch.forward(request, response);
		
		}
		catch(SQLException | ClassNotFoundException e)
		{
			System.out.println("e: "+e.getMessage());
		}
		
		
		
	}

}
