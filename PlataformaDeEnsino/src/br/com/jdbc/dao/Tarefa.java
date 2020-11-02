package br.com.jdbc.dao;

public class Tarefa {
	
	private String temaTarefa;
	private String conteudoTarefa;
	private String objetivoTarefa;
	private String dtInicioTarefa;
	private String dtTerminoTarefa;
	private String avaliacaoTarefa;
	private String materialTarefa;
	
	
	public String getTemaTarefa() {
		return temaTarefa;
	}
	public void setTemaTarefa(String temaTarefa) {
		this.temaTarefa = temaTarefa;
	}
	public String getConteudoTarefa() {
		return conteudoTarefa;
	}
	public void setConteudoTarefa(String conteudoTarefa) {
		this.conteudoTarefa = conteudoTarefa;
	}
	public String getObjetivoTarefa() {
		return objetivoTarefa;
	}
	public void setObjetivoTarefa(String objetivoTarefa) {
		this.objetivoTarefa = objetivoTarefa;
	}
	public String getDtInicioTarefa() {
		return dtInicioTarefa;
	}
	public void setDtInicioTarefa(String dtInicioTarefa) {
		this.dtInicioTarefa = dtInicioTarefa;
	}
	public String getDtTerminoTarefa() {
		return dtTerminoTarefa;
	}
	public void setDtTerminoTarefa(String dtTerminoTarefa) {
		this.dtTerminoTarefa = dtTerminoTarefa;
	}
	public String getAvaliacaoTarefa() {
		return avaliacaoTarefa;
	}
	public void setAvaliacaoTarefa(String avaliacaoTarefa) {
		this.avaliacaoTarefa = avaliacaoTarefa;
	}
	public String getMaterialTarefa() {
		return materialTarefa;
	}
	public void setMaterialTarefa(String materialTarefa) {
		this.materialTarefa = materialTarefa;
	}
	

    public boolean ehIgual(String temaTarefa) {
        try {if(!this.temaTarefa.equals(temaTarefa)) {
            return false;
        }

      
        } catch (NullPointerException e) {
			return false;
		}

        return true;
    }

}
