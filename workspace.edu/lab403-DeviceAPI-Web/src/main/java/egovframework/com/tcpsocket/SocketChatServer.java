package egovframework.com.tcpsocket;

import java.net.ServerSocket;
import java.net.Socket;

public class SocketChatServer {

	public static void main(String[] args) {

		try {
			int tcpSocketPort = 13305;

			// 서버 생성
			ServerSocket serverSocket = new ServerSocket(tcpSocketPort);
			System.out.println("Main > Server : Ready!");
			// 옵저버를 생성함
			final ResponseHandler respHandler = new ResponseHandler();

			for (;;) {
				
				// client 접속 accept
				Socket socket = serverSocket.accept();
				System.out.println("Main > Server : accept Clinet~!");
				System.out.println("Main > Server : Socket Channel info = " + socket.getChannel());
				System.out.println("Main > Server : socket() : " + socket);
				System.out.println("Main > Server : socket.hashCode() : " + socket.hashCode());

				respHandler.addSocket(socket);
				RunnableServerSocket runnableServerSocket = new RunnableServerSocket(socket);
				runnableServerSocket.addObserver(respHandler);
		
				new Thread(runnableServerSocket).start();
			}
			
		} catch (Exception e) {

			e.printStackTrace();

		}

	}

}
