

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
import br.com.jdbc.dao.Tarefa;

public class CriarTarefaDao {
	

	private Connection connection;


	public CriarTarefaDao() {
		this.connection = new ConnectionFactory().getConnection();
	}


	public void salvar(Tarefa tarefa) {
		
        
        System.out.println("passei aqui no banco");
        
  
		
		try {
			// cria um preparedStatement
			String sql = "insert into tarefa" + "(temaTarefa,avaliacaoTarefa,conteudoTarefa,objetivoTarefa,dtInicioTarefa,dtTerminoTarefa,materialTarefa)" + "values (?,?,?,?,?,?,?)";
			PreparedStatement stmt = connection.prepareStatement(sql);
			
			
			stmt.setString(1, tarefa.getTemaTarefa());
			
			stmt.setString(2, tarefa.getAvaliacaoTarefa());
			
			stmt.setString(3, tarefa.getConteudoTarefa());
			
			stmt.setString(4, tarefa.getObjetivoTarefa());
			
			stmt.setString(5, tarefa.getDtInicioTarefa());
			
			stmt.setString(6, tarefa.getDtTerminoTarefa());
		
			stmt.setString(7, tarefa.getMaterialTarefa());
			
	
			
	
			

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
	
	
	public Tarefa GetTarefa(String temaTarefa){
		List<Tarefa> listaDados = new ArrayList<Tarefa>();
		PreparedStatement stmt;
		
		try {
			stmt = connection.prepareStatement("select *from tarefa");
			ResultSet rs = stmt.executeQuery();
		
			
			while(rs.next()) {

				Tarefa tarefa1 = new Tarefa();
				
				tarefa1.setTemaTarefa(rs.getString("temaTarefa"));
				tarefa1.setAvaliacaoTarefa(rs.getString("avaliacaoTarefa"));
				tarefa1.setConteudoTarefa(rs.getString("conteudoTarefa"));
				tarefa1.setObjetivoTarefa(rs.getString("objetivoTarefa"));
				tarefa1.setDtInicioTarefa(rs.getString("dtInicioTarefa"));
				tarefa1.setDtTerminoTarefa(rs.getString("dtTerminoTarefa"));
				tarefa1.setMaterialTarefa(rs.getString("materialTarefa"));
				
		       
				
				listaDados.add(tarefa1);
	}
			
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}

		
	    for(Tarefa tarefa : listaDados) {
	        if(tarefa.ehIgual(temaTarefa)) { 
	        
	            return tarefa;

	        }
	    }
	    return null;
	}



public void excluir(String temaTarefa) {
		
		String sql = "delete from tarefa where temaTarefa=?";
		try {
			PreparedStatement stmt = this.connection.prepareStatement(sql);
			stmt.setString(1,temaTarefa);
			stmt.execute();
		} catch (SQLException e) {
			throw new RuntimeException(e);
		}
	}


public void atualiza(Tarefa tarefa) {
	  System.out.println("atualizei3 " );

	String sql = "update tarefa set temaTarefa = ?, avaliacaoTarefa = ?, conteudoTarefa= ?,objetivoTarefa=?,dtInicioTarefa=?,dtTerminoTarefa=?, materialTarefa=?";
	try {
		PreparedStatement stmt = this.connection.prepareStatement(sql);
		
		stmt.setString(1, tarefa.getTemaTarefa());
		stmt.setString(2, tarefa.getAvaliacaoTarefa());
		stmt.setString(3, tarefa.getConteudoTarefa());
		stmt.setString(4, tarefa.getObjetivoTarefa());
		stmt.setString(5, tarefa.getDtInicioTarefa());
		stmt.setString(6, tarefa.getDtTerminoTarefa());
		stmt.setString(7, tarefa.getMaterialTarefa());
		
		stmt.execute();
	} catch (SQLException e) {
		throw new RuntimeException(e);
	}
}

	

}
