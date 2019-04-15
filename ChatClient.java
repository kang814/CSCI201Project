package classes;

import java.io.BufferedReader;
import java.io.IOException;
import java.io.InputStreamReader;
import java.io.PrintWriter;
import java.net.Socket;
import java.util.Scanner;

public class ChatClient extends Thread {

	private BufferedReader br;
	private PrintWriter pw;
	public String line;
	public ChatClient(String hostname, int port) {
		try {
			System.out.println("Trying to connect to " + hostname + ":" + port);
			Socket s = new Socket(hostname, port);
			System.out.println("Connected to " + hostname + ":" + port);
			br = new BufferedReader(new InputStreamReader(s.getInputStream()));
			pw = new PrintWriter(s.getOutputStream());
			this.start();
			Scanner scan = new Scanner(System.in);
			while(true) {
				String line = scan.nextLine();
				pw.println("Donald: " + line);
				pw.flush();
			}
			
		} catch (IOException ioe) {
			System.out.println("ioe in ChatClient constructor: " + ioe.getMessage());
		}
	}
	public void run() {
		try {
			while(line.isEmpty()) {
				line = br.readLine();
			}
		} catch (IOException ioe) {
			System.out.println("ioe in ChatClient.run(): " + ioe.getMessage());
		}
	}
	/*
	public static void main(String [] args) {
		ChatClient cc = new ChatClient("localhost", 6789);
	}*/
}
