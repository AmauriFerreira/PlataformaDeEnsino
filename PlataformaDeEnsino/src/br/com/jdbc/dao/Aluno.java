package br.com.jdbc.dao;


public class Aluno extends Usuario{
	

	private Long id_aluno;
	
	private String foto;

	public Long getId_aluno() {
		return id_aluno;
	}
	
	public void setId_aluno(Long id_aluno) {
		this.id_aluno = id_aluno;
	}

	public String getFoto() {
		return foto;
	}

	public void setFoto(String foto) {
		this.foto = foto;
	}

	
	
	
	
	
	
}