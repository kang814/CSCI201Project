

import java.io.IOException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

/**
 * Servlet implementation class ChangePasswordServlet
 */
@WebServlet("/ChangePasswordServlet")
public class ChangePasswordServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public ChangePasswordServlet() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		String oldpass = request.getParameter("oldpass");
		String newpass = request.getParameter("newpword");
		String confirmpass = request.getParameter("newpwordconfirm");
		
		if(oldpass != null && oldpass.trim().length() != 0
				&& newpass != null && newpass.trim().length() != 0
				&& confirmpass != null && confirmpass.trim().length() != 0)
		{
			if(!newpass.equals(confirmpass))
			{
				request.setAttribute("matchingError", "New passwords do not match");
				RequestDispatcher rd = request.getRequestDispatcher("changePassword.jsp");
				rd.forward(request, response);
				return;
			}
		}
		else
		{
			request.setAttribute("formError", "Please fill out all fields");
			RequestDispatcher rd = request.getRequestDispatcher("changePassword.jsp");
			rd.forward(request, response);
			return;
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
