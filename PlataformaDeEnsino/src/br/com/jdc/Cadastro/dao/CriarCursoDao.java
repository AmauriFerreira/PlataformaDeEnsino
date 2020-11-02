package br.com.jdc.Cadastro.dao;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;

import javax.persistence.EntityManager;
import javax.persistence.EntityManagerFactory;
import javax.persistence.Persistence;

import br.com.jdbc.Modelo.LoginUsuario;
import br.com.jdbc.conexao.ConnectionFactory;
import br.com.jdbc.dao.Curso;
import br.com.jdbc.dao.Usuario;

public class CriarCursoDao {
	
	private Connection connection;


	public CriarCursoDao() {
		this.connection = new ConnectionFactory().getConnection();
	}


	public void salvar(Curso curso) {
		
		try {
			// cria um preparedStatement
			String sql = "insert into curso" + "(nomeCoordenador,nomeProfessor,nomeCurso,cargaHoraria,dtInicio,requisitos,ementaCurso)" + "values (?,?,?,?,?,?,?)";
			PreparedStatement stmt = connection.prepareStatement(sql);
			
			
			stmt.setString(1, curso.getNomeCoordenador());
			stmt.setString(2, curso.getNomeProfessor());
			stmt.setString(3, curso.getNomeCurso());
			stmt.setString(4, curso.getCargaHoraria());
			stmt.setString(5, curso.getDtInicio());
			stmt.setString(6, curso.getRequisitos());
			stmt.setString(7, curso.getEmentaCurso());
			

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
	
	public Curso GetCurso(String nomeCurso){
		List<Curso> listaDados = new ArrayList<Curso>();
		PreparedStatement stmt;
		
	
		
		try {
			stmt = connection.prepareStatement("select *from curso");
			ResultSet rs = stmt.executeQuery();
		
			
			while(rs.next()) {

				Curso curso1 = new Curso();
				
				curso1.setNomeCoordenador(rs.getString("nomeCoordenador"));
				curso1.setNomeProfessor(rs.getString("nomeProfessor"));
				curso1.setNomeCurso(rs.getString("nomeCurso"));
				curso1.setCargaHoraria(rs.getString("cargaHoraria"));
				curso1.setDtInicio(rs.getString("dtInicio"));
				curso1.setRequisitos(rs.getString("requisitos"));
				curso1.setEmentaCurso(rs.getString("ementaCurso"));
				
				listaDados.add(curso1);
	}
			
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}

		
	    for(Curso curso : listaDados) {
	        if(curso.ehIgual(nomeCurso)) { 
	        
	            return curso;

	        }
	    }
	    return null;
	}



public void excluir(String nomeCurso) {
		
		String sql = "delete from curso where nomeCurso=?";
		try {
			PreparedStatement stmt = this.connection.prepareStatement(sql);
			stmt.setString(1,nomeCurso);
			stmt.execute();
		} catch (SQLException e) {
			throw new RuntimeException(e);
		}
	}

public void atualiza(Curso curso) {
	  System.out.println("atualizei3 " );
    System.out.println(curso.getNomeCoordenador());
    System.out.println(curso.getNomeProfessor());
	String sql = "update curso set nomeCoordenador = ?, nomeProfessor = ?, nomeCurso = ?,cargaHoraria=?,dtInicio=?,requisitos=?,ementaCurso=? where nomeCurso= ?";
	try {
		PreparedStatement stmt = this.connection.prepareStatement(sql);
		stmt.setString(1, curso.getNomeCoordenador());
		stmt.setString(2, curso.getNomeProfessor());
		stmt.setString(3, curso.getNomeCurso());
		stmt.setString(4, curso.getCargaHoraria());
		stmt.setString(5, curso.getDtInicio());
		stmt.setString(6, curso.getRequisitos());
		stmt.setString(7, curso.getEmentaCurso());
		stmt.setString(8, curso.getNomeCurso());
		
		stmt.execute();
	} catch (SQLException e) {
		throw new RuntimeException(e);
	}
}


}
