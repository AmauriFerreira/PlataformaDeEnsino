package br.com.jdc.Cadastro.dao;


import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;


import br.com.jdbc.Modelo.LoginUsuario;
import br.com.jdbc.conexao.ConnectionFactory;
import br.com.jdbc.dao.Professor;

public class ProfessorDao {

	private Connection connection;


	public ProfessorDao() {
		this.connection = new ConnectionFactory().getConnection();
	}

	public void adiciona(Professor professor) {
		   System.out.println(professor.getDiploma());
	        System.out.println(professor.getNomeCurso());
	        System.out.println(professor.getNomeInstituicao());
	        System.out.println(professor.getTipoCurso());
	        System.out.println(professor.getCargaHoraria());
	        System.out.println(professor.getDtInicio());
	        System.out.println(professor.getDtTermino());
	        
		try {
			String sql = "insert into usuario" + "(nome,nomeMae,dtNascimento,cpf,telefoneFixo,telefoneCelular,email,senha)" + "values (?,?,?,?,?,?,?,?)";
			
			// cria um preparedStatement
			
			PreparedStatement stmt = connection.prepareStatement(sql);
			stmt.setString(1, professor.getNome());
			stmt.setString(2, professor.getNomeMae());
			stmt.setString(3, professor.getDtNascimento());
			stmt.setString(4, professor.getCpf());
			stmt.setString(5, professor.getTelefoneFixo());
			stmt.setString(6, professor.getTelefoneCelular());
			stmt.setString(7, professor.getEmail());
			stmt.setString(8, professor.getSenha());
			
			// executa
			stmt.execute();
			System.out.println("Gravado Usuario");

try {
				String sql1 = "insert into endereco" + "(cep,tipo,nomeLogradouro,numero,bairro,complemento,cidade,estado)" + "values (?,?,?,?,?,?,?,?)";
				stmt = connection.prepareStatement(sql1);				
				stmt.setString(1, professor.getCep());
				stmt.setString(2, professor.getTipo());
				stmt.setString(3, professor.getNomeLogradouro());
				stmt.setString(4, professor.getNumero());
				stmt.setString(5, professor.getBairro());
				stmt.setString(6, professor.getComplemento());
				stmt.setString(7, professor.getCidade());
				stmt.setString(8, professor.getEstado());
				// executa
				stmt.execute();
				System.out.println("Gravado Endere�o");
			}catch (SQLException e) {
				// TODO Auto-generated catch block
				e.printStackTrace();
			}

try {
	String sql2 = "insert into professor" + "(diploma,nomeCurso,nomeInstituicao,tipoCurso,cargaHoraria,dtInicio,dtTermino)" + "values (?,?,?,?,?,?,?)";
	stmt = connection.prepareStatement(sql2);				
	stmt.setString(1, professor.getDiploma());
	stmt.setString(2, professor.getNomeCurso());
	stmt.setString(3, professor.getNomeInstituicao());
	stmt.setString(4, professor.getTipoCurso());
	stmt.setString(5, professor.getCargaHoraria());
	stmt.setString(6, professor.getDtInicio());
	stmt.setString(7, professor.getDtTermino());
	
	// executa
	stmt.execute();
	System.out.println("Gravado Professor");
}catch (SQLException e) {
	// TODO Auto-generated catch block
	e.printStackTrace();
}


			// feichar
			stmt.close();
		
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
	


}