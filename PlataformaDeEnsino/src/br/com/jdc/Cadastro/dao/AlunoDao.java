package br.com.jdc.Cadastro.dao;


import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;


import br.com.jdbc.Modelo.LoginUsuario;
import br.com.jdbc.conexao.ConnectionFactory;
import br.com.jdbc.dao.Aluno;
import br.com.jdbc.dao.Professor;


public class AlunoDao {
	
	private Connection connection;

	
	public AlunoDao() {
		this.connection = new ConnectionFactory().getConnection();
	}  
	

	public void adiciona(Aluno aluno) {
	
		
		    System.out.println("passaei no banco");
	        System.out.println(aluno.getNome());
	        System.out.println( aluno.getFoto());
	        System.out.println(aluno.getNomeMae());
	        System.out.println(aluno.getDtNascimento());
	        System.out.println(aluno.getCpf());
	        System.out.println(aluno.getTelefoneFixo());
	        System.out.println(aluno.getEmail());
	        System.out.println(aluno.getSenha());
		try {
			String sql = "insert into aluno" + "(nome,foto,nomeMae,dtNascimento,cpf,telefoneFixo,telefoneCelular,email,senha)" + "values (?,?,?,?,?,?,?,?,?)";
			
			// cria um preparedStatement
			
			PreparedStatement stmt = connection.prepareStatement(sql);
			stmt.setString(1, aluno.getNome());
			stmt.setString(2, aluno.getFoto());
			stmt.setString(3, aluno.getNomeMae());
			stmt.setString(4, aluno.getDtNascimento());
			stmt.setString(5, aluno.getCpf());
			stmt.setString(6, aluno.getTelefoneFixo());
			stmt.setString(7, aluno.getTelefoneCelular());
			stmt.setString(8, aluno.getEmail());
			stmt.setString(9, aluno.getSenha());
			
			// executa
			stmt.execute();
			System.out.println("Gravado aluno");

try {
				String sql1 = "insert into endereco" + "(cep,tipo,nomeLogradouro,numero,bairro,complemento,cidade,estado)" + "values (?,?,?,?,?,?,?,?)";
				stmt = connection.prepareStatement(sql1);				
				stmt.setString(1, aluno.getCep());
				stmt.setString(2, aluno.getTipo());
				stmt.setString(3, aluno.getNomeLogradouro());
				stmt.setString(4, aluno.getNumero());
				stmt.setString(5, aluno.getBairro());
				stmt.setString(6, aluno.getComplemento());
				stmt.setString(7, aluno.getCidade());
				stmt.setString(8, aluno.getEstado());
				// executa
				stmt.execute();
				System.out.println("Gravado Endereço");
			}catch (SQLException e) {
				// TODO Auto-generated catch block
				e.printStackTrace();
			}

try {
	
	
	// executa
	stmt.execute();
	System.out.println("Gravado Aluno");
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


	
	public List<Aluno> getLista() {
		try {
			
			List<Aluno> alunos = new ArrayList<Aluno>();
			
			PreparedStatement stmt = this.connection.prepareStatement("select IFNULL(id_aluno,'S/N') id_aluno, IFNULL(nome,'S/N') nome,IFNULL(foto,'S/N') foto,IFNULL(nomeMae,'S/N') nomeMae,IFNULL(dtNascimento,'S/N') dtNascimento,IFNULL(cpf,'S/N') cpf,"
					+ "IFNULL(telefoneFixo,'S/N') telefoneFixo,IFNULL(telefoneCelular,'S/N') telefoneCelular,IFNULL(email,'S/N') email,IFNULL(senha,'S/N') senha  from aluno");

			ResultSet rs = stmt.executeQuery();

			while(rs.next()) {
				Aluno aluno= new Aluno();
				
				//popula o objeto curso
				
				aluno.setId_aluno(rs.getLong("id_aluno"));
				aluno.setNome(rs.getString("nome"));
				aluno.setFoto(rs.getString("foto"));
				aluno.setNomeMae(rs.getString("nomeMae"));
				aluno.setDtNascimento(rs.getString("dtNascimento"));
				aluno.setCpf(rs.getString("cpf"));
				aluno.setTelefoneFixo(rs.getString("telefoneFixo"));
				aluno.setTelefoneCelular(rs.getString("telefoneCelular"));
				aluno.setEmail(rs.getString("email"));
				aluno.setSenha(rs.getString("senha"));
				
			
				//adiciona o contato na lista
				alunos.add(aluno);
			}

			rs.close();
			stmt.close();

			return alunos;
		} catch (SQLException e) {
			throw new RuntimeException(e);
		}
	}
	




}
