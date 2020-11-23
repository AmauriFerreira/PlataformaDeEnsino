package br.com.jdbc.dao;

public class Aula {
	
	private Long id;
	private String temaAula;
	private String conteudoAula;
	private String objetivoAula;
	private String dtInicioAula;
	private String dtTerminoAula;
	private String avaliacaoAula ;
	private String bibliografiaAula;
	private String materialAula;
	private String videoAula;
	
	
	
	public Long getId() {
		return id;
	}

	public void setId(Long id) {
		this.id = id;
	}
	
	public String getTemaAula() {
		return temaAula;
	}
	public void setTemaAula(String temaAula) {
		this.temaAula = temaAula;
	}
	public String getConteudoAula() {
		return conteudoAula;
	}
	public void setConteudoAula(String conteudoAula) {
		this.conteudoAula = conteudoAula;
	}
	public String getObjetivoAula() {
		return objetivoAula;
	}
	public void setObjetivoAula(String objetivoAula) {
		this.objetivoAula = objetivoAula;
	}
	public String getDtInicioAula() {
		return dtInicioAula;
	}
	public void setDtInicioAula(String dtInicioAula) {
		this.dtInicioAula = dtInicioAula;
	}
	public String getDtTerminoAula() {
		return dtTerminoAula;
	}
	public void setDtTerminoAula(String dtTerminoAula) {
		this.dtTerminoAula = dtTerminoAula;
	}
	public String getAvaliacaoAula() {
		return avaliacaoAula;
	}
	public void setAvaliacaoAula(String avaliacaoAula) {
		this.avaliacaoAula = avaliacaoAula;
	}
	public String getBibliografiaAula() {
		return bibliografiaAula;
	}
	public void setBibliografiaAula(String bibliografiaAula) {
		this.bibliografiaAula = bibliografiaAula;
	}
	public String getMaterialAula() {
		return materialAula;
	}
	public void setMaterialAula(String materialAula) {
		this.materialAula = materialAula;
	}
	public String getVideoAula() {
		return videoAula;
	}
	public void setVideoAula(String videoAula) {
		this.videoAula = videoAula;
	}

	    public boolean ehIgual(Long id) {
        try {if(!this.id.equals(id)) {
            return false;
        }

      
        } catch (NullPointerException e) {
			return false;
		}

        return true;
    }

	
}
