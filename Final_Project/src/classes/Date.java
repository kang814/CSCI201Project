package classes;

public class Date {
	public int year;
	public String month;
	public int day;
	
	Date(int y, int m, int d) {
		year = y;
		if(m == 1) { month = "January"; }
		if(m == 2) { month = "February"; }
		if(m == 3) { month = "March"; }
		if(m == 4) { month = "April"; }
		if(m == 5) { month = "May"; }
		if(m == 6) { month = "June"; }
		if(m == 7) { month = "July"; }
		if(m == 8) { month = "August"; }
		if(m == 9) { month = "September"; }
		if(m == 10) { month = "October"; }
		if(m == 11) { month = "November"; }
		if(m == 12) { month = "December"; }
		day = d;
	}
}
