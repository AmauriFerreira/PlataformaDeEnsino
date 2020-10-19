package br.com.jdbc.dao;

import java.util.Date;
import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.Table;
import javax.persistence.Temporal;
import javax.persistence.TemporalType;


public class Professor extends Usuario{

	private String diploma;
	private String nomeCurso;
	private String nomeInstituicao;
	private String tipoCurso;
	private String CargaHoraria;
	private String dtInicio;
	private String dtTermino;
	private String fk_id;
	public String getDiploma() {
		return diploma;
	}
	public void setDiploma(String diploma) {
		this.diploma = diploma;
	}
	public String getNomeCurso() {
		return nomeCurso;
	}
	public void setNomeCurso(String nomeCurso) {
		this.nomeCurso = nomeCurso;
	}
	public String getNomeInstituicao() {
		return nomeInstituicao;
	}
	public void setNomeInstituicao(String nomeInstituicao) {
		this.nomeInstituicao = nomeInstituicao;
	}
	public String getTipoCurso() {
		return tipoCurso;
	}
	public void setTipoCurso(String tipoCurso) {
		this.tipoCurso = tipoCurso;
	}
	public String getCargaHoraria() {
		return CargaHoraria;
	}
	public void setCargaHoraria(String cargaHoraria) {
		CargaHoraria = cargaHoraria;
	}
	public String getDtInicio() {
		return dtInicio;
	}
	public void setDtInicio(String dtInicio) {
		this.dtInicio = dtInicio;
	}
	public String getDtTermino() {
		return dtTermino;
	}
	public void setDtTermino(String dtTermino) {
		this.dtTermino = dtTermino;
	}
	public String getFk_id() {
		return fk_id;
	}
	public void setFk_id(String fk_id) {
		this.fk_id = fk_id;
	}
	
	
	
}
