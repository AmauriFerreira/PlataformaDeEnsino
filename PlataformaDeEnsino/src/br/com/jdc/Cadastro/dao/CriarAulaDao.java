package br.com.jdc.Cadastro.dao;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.SQLException;

import br.com.jdbc.conexao.ConnectionFactory;
import br.com.jdbc.dao.Aula;
import br.com.jdbc.dao.Curso;

public class CriarAulaDao {
	

	private Connection connection;


	public CriarAulaDao() {
		this.connection = new ConnectionFactory().getConnection();
	}


	public void salvar(Aula aula) {
		
        
        System.out.println("passei aqui no banco");
        
        System.out.println(aula.getTemaAula());
        
        System.out.println(aula.getConteudoAula());
        
        System.out.println(aula.getObjetivoAula());
        
        System.out.println(aula.getDtInicioAula());
        
        System.out.println(aula.getDtTerminoAula());
        
        System.out.println(aula.getAvaliacaoAula());
        
        System.out.println(aula.getBibliografiaAula());
        
        System.out.println(aula.getMaterialAula());
        
        System.out.println(aula.getVideoAula());
		
		try {
			// cria um preparedStatement
			String sql = "insert into Aula" + "(temaAula,conteudoAula,objetivoAula,dtInicioAula,dtTerminoAula,avaliacaoAula,bibliografiaAula,materialAula,videoAula)" + "values (?,?,?,?,?,?,?,?,?)";
			PreparedStatement stmt = connection.prepareStatement(sql);
			
			
			stmt.setString(1, aula.getTemaAula());
			
			stmt.setString(2, aula.getConteudoAula());
			
			stmt.setString(3, aula.getObjetivoAula());
			
			stmt.setString(4, aula.getDtInicioAula());
			
			stmt.setString(5, aula.getDtTerminoAula());
			
			stmt.setString(6, aula.getAvaliacaoAula());
			
			stmt.setString(7, aula.getBibliografiaAula());
			
			stmt.setString(8, aula.getMaterialAula());
			
			stmt.setString(9, aula.getVideoAula());
			
	
			

			// executa
			stmt.execute();

			// feichar
			stmt.close();
			System.out.println("Gravado");

			connection.close();

		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
	}
	

}
