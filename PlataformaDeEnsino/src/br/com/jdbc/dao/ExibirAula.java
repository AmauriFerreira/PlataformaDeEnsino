package br.com.jdbc.dao;

public class ExibirAula {
	
	private String videoAula;
	private String materialAula;
	private String anotacaoAula;
	
	
	public void setVideoAula(String videoAula) {
		this.videoAula = videoAula;
	}
	
	public void setMaterialAula(String materialAula) {
		this.materialAula = materialAula;
	}
	
	public String getAnotacaoAula() {
		return anotacaoAula;
	}
	public void setAnotacaoAula(String anotacaoAula) {
		this.anotacaoAula = anotacaoAula;
	}
}