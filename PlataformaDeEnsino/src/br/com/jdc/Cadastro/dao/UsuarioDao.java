package br.com.jdc.Cadastro.dao;


import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;


import br.com.jdbc.Modelo.LoginUsuario;
import br.com.jdbc.conexao.ConnectionFactory;
import br.com.jdbc.dao.Usuario;
import br.com.jdbc.dao.Aluno;

import br.com.jdbc.dao.Funcionario;

public class UsuarioDao {

	private Connection connection;


	public UsuarioDao() {
		this.connection = new ConnectionFactory().getConnection();
	}

	public void adiciona(UsuarioNaoTem usuario) {
		try {
			// cria um preparedStatement
			String sql = "insert into usuario" + "(nome,email,senha)" + "values (?,?,?)";
			PreparedStatement stmt = connection.prepareStatement(sql);

			stmt.setString(1, usuario.getNome());
			stmt.setString(2, usuario.getEmail());
			stmt.setString(3, usuario.getSenha());
			

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

	public List<UsuarioNaoTem> lista() {
		try {
			List<UsuarioNaoTem> usuarios = new ArrayList<UsuarioNaoTem>();
			PreparedStatement stmt = connection.prepareStatement("select *from usuario");

			ResultSet rs = stmt.executeQuery();

			while (rs.next()) {

				UsuarioNaoTem usuario = new UsuarioNaoTem();
				
				usuario.setNome(rs.getString("nome"));
				usuario.setEmail(rs.getString("email"));
				usuario.setSenha(rs.getString("senha"));
				
				usuarios.add(usuario);
			}
			return usuarios;
		} catch (SQLException e) {
			throw new RuntimeException(e);
		}
	}
	
	
public void exclui(Usuario usuario) {
		
		String sql = "delete from usuario where email=?";
		try {
			PreparedStatement stmt = this.connection.prepareStatement(sql);
			stmt.setString(1, usuario.getEmail());
			stmt.execute();
		} catch (SQLException e) {
			throw new RuntimeException(e);
		}
	}
	
	public LoginUsuario existeUsuario(String email, String senha) {
		List<LoginUsuario> usuarios = new ArrayList<LoginUsuario>();
		PreparedStatement stmt;
		try {
			stmt = connection.prepareStatement("select *from funcionario");
			ResultSet rs = stmt.executeQuery();

			while (rs.next()) {

				LoginUsuario funcionario = new LoginUsuario();
				
				funcionario.setNome(rs.getString("nome"));
				funcionario.setEmail(rs.getString("email"));
				funcionario.setSenha(rs.getString("senha"));
				usuarios.add(funcionario);
			}
			
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}

		
	    for(LoginUsuario loginUsuario : usuarios) {
	        if(loginUsuario.ehIgual(email, senha)) { 
	            return loginUsuario;

	        }
	    }
	    return null;
	}
	
	
	public Usuario existeUsuarioProfessor(String email, String senha) {
		List<Usuario> usuariosProfessor = new ArrayList<Usuario>();
		PreparedStatement stmt;
		try {
			stmt = connection.prepareStatement("select *from usuario");
			ResultSet rs = stmt.executeQuery();

			while (rs.next()) {

				Usuario usuario = new Usuario();
				
				usuario.setNome(rs.getString("nome"));
				usuario.setEmail(rs.getString("email"));
				usuario.setSenha(rs.getString("senha"));
				usuario.setFuncao(rs.getString("funcao"));
				usuariosProfessor.add(usuario);
			}
			
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}

		
	    for(Usuario loginUsuarioProfessor: usuariosProfessor) {
	        if(loginUsuarioProfessor.ehIgual(email, senha)) { 
	            return loginUsuarioProfessor;

	        }
	    }
	    return null;
	}
	
	
	
	
	public Aluno existeUsuarioAluno(String email, String senha) {
		List<Aluno> usuariosAluno = new ArrayList<Aluno>();
		PreparedStatement stmt;
		try {
			stmt = connection.prepareStatement("select *from aluno");
			ResultSet rs = stmt.executeQuery();

			while (rs.next()) {

				Aluno aluno = new Aluno();
				
				aluno.setNome(rs.getString("nome"));
				aluno.setEmail(rs.getString("email"));
				aluno.setSenha(rs.getString("senha"));
				
				
				usuariosAluno.add(aluno);
			}
			
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}

		
	    for(Aluno loginUsuarioAluno : usuariosAluno) {
	        if(loginUsuarioAluno.ehIgual(email, senha)) { 
	            return loginUsuarioAluno;

	        }
	    }
	    return null;
	}
	

	
	
	public void atualiza(Usuario usuario) {

        System.out.println(usuario.getNome());
        System.out.println(usuario.getEmail());
		String sql = "update usuario set nome = ?, email = ?, senha = ? where email = ?";
		try {
			PreparedStatement stmt = this.connection.prepareStatement(sql);
			stmt.setString(1, usuario.getNome());
			stmt.setString(2, usuario.getEmail());
			stmt.setString(3, usuario.getSenha());
			stmt.setString(4, usuario.getEmail());
			
			stmt.execute();
		} catch (SQLException e) {
			throw new RuntimeException(e);
		}
	}
	

}
