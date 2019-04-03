package classes;
import java.util.ArrayList;

public class menuItem {
	private double price = 0.0;
	private String name = "";
	private String restaurant = "No Restuarant";
	private ArrayList<String> deals = new ArrayList<String>();
	private double rating;
	private int userInteract;
	
	
	public menuItem(String name, double price, String resta){
		this.name = name;
		this.price = price;
		this.restaurant = resta;
		rating  = 5;
		userInteract = 1;
	}
	
	
	public void userRating(int rate){
		userInteract++;
		rating = (rating + rate)/userInteract;
	}
	
	public String getName(){
		return this.name;
	}
	
	public void setName(String s){
		this.name = s;
	}
	
	public void setPrice(double d){
		this.price = d;
	}
	
	public double getPrice(){	
		return this.price;
	}
	
	public void setRestaurant(String d){
		this.restaurant = d;
	}
	
	public String getRestuarant(){	
		return this.restaurant;
	}
	
	public void addDeal(String deal){
		this.deals.add(deal);
	}
	
	public ArrayList<String> getDeals(){
		return this.deals;
	}
	
	
}
