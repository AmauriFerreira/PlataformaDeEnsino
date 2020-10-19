package br.com.jdbc.dao;

public class Endereco {
	
	private String cep;
	private String tipo;
	private String nomeLogradouro;
	private String numero;
	private String bairro;
	private String complemento;
	private String cidade;
	private String estado;
	private String fk_id;
	
	public String getCep() {
		return cep;
	}
	public void setCep(String cep) {
		this.cep = cep;
	}
	public String getTipo() {
		return tipo;
	}
	public void setTipo(String tipo) {
		this.tipo = tipo;
	}
	public String getNomeLogradouro() {
		return nomeLogradouro;
	}
	public void setNomeLogradouro(String nomeLogradouro) {
		this.nomeLogradouro = nomeLogradouro;
	}
	public String getNumero() {
		return numero;
	}
	public void setNumero(String numero) {
		this.numero = numero;
	}
	public String getBairro() {
		return bairro;
	}
	public void setBairro(String bairro) {
		this.bairro = bairro;
	}
	public String getComplemento() {
		return complemento;
	}
	public void setComplemento(String complemento) {
		this.complemento = complemento;
	}
	public String getCidade() {
		return cidade;
	}
	public void setCidade(String cidade) {
		this.cidade = cidade;
	}
	public String getEstado() {
		return estado;
	}
	public void setEstado(String estado) {
		this.estado = estado;
	}
	public String getFk_id() {
		return fk_id;
	}
	public void setFk_id(String fk_id) {
		this.fk_id = fk_id;
	}

}
