package br.com.jdbc.teste;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.SQLException;
import br.com.jdbc.conexao.ConnectionFactory;


public class JDBCInsere {
	
	public static void main(String[] args) throws SQLException {
		
		ConnectionFactory factory = new ConnectionFactory();
		Connection con = factory.getConnection();
		
		// cria um preparedStatement
		String sql = "insert into usuario" +
				"(nome,email,senha)" +
				"values (?,?,?)";
		PreparedStatement stmt = con.prepareStatement(sql);
		
		//preenche os valores
		stmt.setString(1, "Caelum");
		stmt.setString(2, "contato@caelum.com.br");
		stmt.setString(3, "R. Vergueiro 3185 cj57");
		
		// executa
		stmt.execute();
		
		// feichar
		stmt.close();
		System.out.println("Gravado");
		
		con.close();
		
		
	}

}
