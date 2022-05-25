package br.com.projeto01.model;

import java.sql.Connection;
import java.sql.DriverManager;

public class ConnectionFactory {
	
	public Connection getConnection() {
		
		String url = "jdbc:mysql:12.5.515/dbmercado";
		String user = "root";
		String password = "xxxxxx";
		
		try {
			
			Class.forName("com.mysql.jdbc.Driver");
			return DriverManager.getConnection(url,user,password);
		}catch(Exception Error){
			throw new RuntimeException("Erro na conexão"+ Error);
			
		}
	}
}
