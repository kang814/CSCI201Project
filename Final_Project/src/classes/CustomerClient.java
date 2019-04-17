package classes;

import java.io.BufferedReader;
import java.io.IOException;
import java.io.InputStreamReader;
import java.io.PrintWriter;
import java.net.Socket;
import java.util.ArrayList;
import java.util.Scanner;
import classes.menuItem;

public class CustomerClient extends Thread {
	private BufferedReader br;
	private PrintWriter pw;
	public CustomerClient(String hostname, int port, ArrayList<menuItem> items, String name) {
		try {
			System.out.println("Trying to connect to " + hostname + ":" + port);
			Socket s = new Socket(hostname, port);
			System.out.println("Connected to " + hostname + ":" + port);
			br = new BufferedReader(new InputStreamReader(s.getInputStream()));
			pw = new PrintWriter(s.getOutputStream());
			this.start();
			//Scanner scan = new Scanner(System.in);\
			String line = "";
			for(int i = 0; i < items.size(); i++) {
				line += items.get(i).getName();
				line += ", ";
				line += items.get(i).getPrice();
				line += "\n";
			}
			if(name.equals(""))
			{
				pw.println("Guest: " + line);
			}
			else
			{
				pw.println(name + line);
			}
			pw.flush();
			
		} catch (IOException ioe) {
			System.out.println("ioe in ChatClient constructor: " + ioe.getMessage());
		}
	}
	public void run() {
		try {
			while(true) {
				String line = br.readLine();
				System.out.println(line);
			}
		} catch (IOException ioe) {
			System.out.println("ioe in ChatClient.run(): " + ioe.getMessage());
		}
	}
}
