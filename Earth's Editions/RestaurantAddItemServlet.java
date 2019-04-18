package classes;

import java.io.IOException;
import java.util.ArrayList;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;


@WebServlet("/RestaurantAddItemServlet")
public class RestaurantAddItemServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
       

	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		HttpSession session = request.getSession();
		
		String upOrder = request.getParameter("testVar");
		
		//System.out.println(upOrder);
		String [] elements = upOrder.split("\\s\\s+");
		
		for(int i = 0; i < elements.length; i++) {
			elements[i] = elements[i].trim();
			//System.out.println(i+ " " +elements[i]);
		}
		
		//elements now holds things in order: restaurant, item, price
		
		String name = null;
		double price = -1;
		String restaurant = null;
		
		for(int i = 0; i < elements.length; i++) {
			if(i == 0) {
				restaurant = elements[i];
			}
			else if(i == 1) {
				name = elements[i];
			}
			else if(i == 2) {
				String x = elements[i];
				x = x.substring(1, x.length());
				price = Double.parseDouble(x);
			}
		}
		
		
		
		menuItem newItem = new menuItem(name, price, restaurant);
		System.out.println(newItem.getName());
		System.out.println(newItem.getRestuarant());
		
//		ArrayList<menuItem> orders = (ArrayList<menuItem>) session.getAttribute("orderList");
//		orders.add(newItem);
//		session.setAttribute("orderList", orders);
	}


	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		doGet(request, response);
	}

}
