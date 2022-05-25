package br.com.projeto01.model;

import java.sql.Connection;
import java.sql.DriverManager;

public class ConnectionFactory {
	
	public Connection getConnection() {
		
		String url = "jdbc:mysql://127.0.0.1:3306/dbmercado";
		String user = "root";
		String password = "Pinheiro357";
		
		try {
			
			Class.forName("com.mysql.jdbc.Driver");
			return DriverManager.getConnection(url,user,password);
		}catch(Exception Error){
			throw new RuntimeException("Erro na conexão"+ Error);
			
		}
	}
}
