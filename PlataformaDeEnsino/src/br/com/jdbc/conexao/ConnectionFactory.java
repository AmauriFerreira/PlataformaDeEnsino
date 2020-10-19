package br.com.jdbc.conexao;

import java.sql.DriverManager;
import java.sql.Connection;
import java.sql.SQLException;



public class ConnectionFactory {


public Connection getConnection() {
	try {
		Class.forName("com.mysql.jdbc.Driver");
	
		return DriverManager.getConnection("jdbc:mysql://localhost/plataformadeensino?useTimezone=true&serverTimezone=UTC","root","12345");
		
	} catch (SQLException e) {
		e.printStackTrace();
		
	} catch (ClassNotFoundException e) {
		e.printStackTrace();
		
	}
	return null;

}
}