package br.com.jdbc.teste;

import java.sql.Connection;
import java.sql.SQLException;



import br.com.jdbc.conexao.ConnectionFactory;
import br.com.jdbc.dao.Usuario;

public class TesteConexao {
	
	public static void  main(String []args) throws SQLException {
		
		Connection connection = (Connection) new ConnectionFactory().getConnection();
		System.out.println("Conexão aberta!");
		
		
		Usuario joao = new Usuario ();
		joao.setNome("Rua tupy");
		
		connection.close();
	}

}
