package br.com.jdc.Cadastro.dao;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;


import br.com.jdbc.conexao.ConnectionFactory;
import br.com.jdbc.dao.Aula;
import br.com.jdbc.dao.Curso;

public class CriarAulaDao {
	

	private Connection connection;


	public CriarAulaDao() {
		this.connection = new ConnectionFactory().getConnection();
	}


	public void salvar(Aula aula) {
		
        
		
		try {
			// cria um preparedStatement
			String sql = "insert into aula" + "(temaAula,conteudoAula,objetivoAula,dtInicioAula,dtTerminoAula,avaliacaoAula,bibliografiaAula,materialAula,videoAula)" + "values (?,?,?,?,?,?,?,?,?)";
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
	
	


public void excluir(Aula aula )  {
	  System.out.println("atualizei3 " );
	    System.out.println(aula.getId());
	String sql = "delete from aula where id=?";
	try {
		PreparedStatement stmt = this.connection.prepareStatement(sql);
		stmt.setLong(1, aula.getId());
		stmt.execute();
	} catch (SQLException e) {
		throw new RuntimeException(e);
	}
}

	
	
	
	public List<Aula> getLista() {
		try {
			
			List<Aula> aulas = new ArrayList<Aula>();
		
			PreparedStatement stmt = this.connection.prepareStatement("select IFNULL(id,'S/N') id, IFNULL(temaAula,'S/N') temaAula,IFNULL(conteudoAula,'S/N') conteudoAula,IFNULL(objetivoAula,'S/N') objetivoAula,"
					+ "IFNULL(dtInicioAula,'S/N') dtInicioAula,IFNULL(dtTerminoAula,'S/N') dtTerminoAula,IFNULL(avaliacaoAula,'S/N') avaliacaoAula,IFNULL(bibliografiaAula,'S/N') bibliografiaAula"
					+ ",IFNULL(materialAula,'S/N') materialAula,IFNULL(videoAula,'S/N') videoAula  from aula");

			ResultSet rs = stmt.executeQuery();

			while(rs.next()) {
				Aula aula = new Aula();
				
				//popula o objeto curso
				
				aula.setId(rs.getLong("id"));
				aula.setTemaAula(rs.getString("temaAula"));
				aula.setConteudoAula(rs.getString("conteudoAula"));
				aula.setObjetivoAula(rs.getString("objetivoAula"));
				aula.setDtInicioAula(rs.getString("dtInicioAula"));
				aula.setDtTerminoAula(rs.getString("dtTerminoAula"));
				aula.setAvaliacaoAula(rs.getString("avaliacaoAula"));
				aula.setBibliografiaAula(rs.getString("bibliografiaAula"));
				aula.setMaterialAula(rs.getString("materialAula"));
				aula.setVideoAula(rs.getString("videoAula"));
			
				//adiciona o contato na lista
				aulas.add(aula);
			}

			rs.close();
			stmt.close();

			return aulas;
		} catch (SQLException e) {
			throw new RuntimeException(e);
		}
	}
	

	
	
	public Aula GetAula(Long id){
		
		List<Aula> aulas = new ArrayList<Aula>();
		try {
			
		
			PreparedStatement stmt = this.connection.prepareStatement("select IFNULL(id,'S/N') id, IFNULL(temaAula,'S/N') temaAula,IFNULL(conteudoAula,'S/N') conteudoAula,IFNULL(objetivoAula,'S/N') objetivoAula,"
					+ "IFNULL(dtInicioAula,'S/N') dtInicioAula,IFNULL(dtTerminoAula,'S/N') dtTerminoAula,IFNULL(avaliacaoAula,'S/N') avaliacaoAula,IFNULL(bibliografiaAula,'S/N') bibliografiaAula"
					+ ",IFNULL(materialAula,'S/N') materialAula,IFNULL(videoAula,'S/N') videoAula  from aula where id= ?");
			stmt.setLong(1, id);
			
			ResultSet rs = stmt.executeQuery();

			while(rs.next()) {
				Aula aula = new Aula();
				
				//popula o objeto curso
				
				aula.setId(rs.getLong("id"));
				aula.setTemaAula(rs.getString("temaAula"));
				aula.setConteudoAula(rs.getString("conteudoAula"));
				aula.setObjetivoAula(rs.getString("objetivoAula"));
				aula.setDtInicioAula(rs.getString("dtInicioAula"));
				aula.setDtTerminoAula(rs.getString("dtTerminoAula"));
				aula.setAvaliacaoAula(rs.getString("avaliacaoAula"));
				aula.setBibliografiaAula(rs.getString("bibliografiaAula"));
				aula.setMaterialAula(rs.getString("materialAula"));
				aula.setVideoAula(rs.getString("videoAula"));
			
				//adiciona o contato na lista
				aulas.add(aula);
				
				System.out.println(aula.getVideoAula());
	}
			
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}

		
	    for(Aula aula : aulas) {
	        if(aula.ehIgual(id)) { 
	        
	            return aula;

	        }
	    }
	    return null;
	}



}
