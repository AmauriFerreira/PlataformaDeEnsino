package br.com.jdc.Cadastro.dao;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.SQLException;

import br.com.jdbc.conexao.ConnectionFactory;
import br.com.jdbc.dao.Anotacao;
import br.com.jdbc.dao.Aula;

public class CriaAnotacaoDao {

	private Connection connection;


	public CriaAnotacaoDao() {
		this.connection = new ConnectionFactory().getConnection();
	}
	
	public void salvar(Anotacao anotacao) {
		System.out.println(anotacao.getAnotacaoAula());
		
		try {
			// cria um preparedStatement
			String sql = "insert into Aula" + "(AnotacaoAula)" + "value (?)";
			PreparedStatement stmt = connection.prepareStatement(sql);
			
			
			stmt.setString(1, anotacao.getAnotacaoAula());
			// executa
			stmt.execute();

			// fecha
			stmt.close();
			System.out.println("Gravado");

			connection.close();

			} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
	}
}