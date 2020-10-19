package br.com.jdbc.dao;

public class Funcionario extends Usuario{
	private String registroFuncional;
	private String cargo;
	private String email;
	private String senha;
	private String fk_id;
	public String getRegistroFuncional() {
		return registroFuncional;
	}
	public void setRegistroFuncional(String registroFuncional) {
		this.registroFuncional = registroFuncional;
	}
	public String getCargo() {
		return cargo;
	}
	public void setCargo(String cargo) {
		this.cargo = cargo;
	}
	public String getEmail() {
		return email;
	}
	public void setEmail(String email) {
		this.email = email;
	}
	public String getSenha() {
		return senha;
	}
	public void setSenha(String senha) {
		this.senha = senha;
	}
	public String getFk_id() {
		return fk_id;
	}
	public void setFk_id(String fk_id) {
		this.fk_id = fk_id;
	}
	
	
}
