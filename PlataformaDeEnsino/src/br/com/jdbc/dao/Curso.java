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


public class Curso {
	
	private String nomeCoordenador;
	private String nomeProfessor;
	private String nomeCurso;
	private String cargaHoraria;
	private String dtInicio;
	private String requisitos;
	private String ementaCurso;
	

	public String getNomeCoordenador() {
		return nomeCoordenador;
	}
	public void setNomeCoordenador(String nomeCoordenador) {
		this.nomeCoordenador = nomeCoordenador;
	}
	public String getNomeProfessor() {
		return nomeProfessor;
	}
	public void setNomeProfessor(String nomeProfessor) {
		this.nomeProfessor = nomeProfessor;
	}
	public String getNomeCurso() {
		return nomeCurso;
	}
	public void setNomeCurso(String nomeCurso) {
		this.nomeCurso = nomeCurso;
	}
	public String getCargaHoraria() {
		return cargaHoraria;
	}
	public void setCargaHoraria(String cargaHoraria) {
		this.cargaHoraria = cargaHoraria;
	}
	public String getDtInicio() {
		return dtInicio;
	}
	public void setDtInicio(String dtInicio) {
		this.dtInicio = dtInicio;
	}
	public String getRequisitos() {
		return requisitos;
	}
	public void setRequisitos(String requisitos) {
		this.requisitos = requisitos;
	}
	public String getEmentaCurso() {
		return ementaCurso;
	}
	public void setEmentaCurso(String ementaCurso) {
		this.ementaCurso = ementaCurso;
	}
	
	
    public boolean ehIgual(String nomeCurso) {
        try {if(!this.nomeCurso.equals(nomeCurso)) {
            return false;
        }

      
        } catch (NullPointerException e) {
			return false;
		}

        return true;
    }

	
	

}
