package br.com.jdbc.teste;

import javax.persistence.EntityManager;
import javax.persistence.EntityManagerFactory;
import javax.persistence.Persistence;

import br.com.jdbc.dao.Curso;


public class TESTE {

	
	
public static void main(String[] args) throws Exception {
	 EntityManagerFactory emf = Persistence.createEntityManagerFactory("PlataformaDeEnsino");
	 EntityManager em = emf.createEntityManager();
	 
	Curso curso = new   Curso();
        curso.setNomeCoordenador("teste10");
        curso.setNomeProfessor("teste10");
        curso.setNomeCurso("teste10");
        curso.setCargaHoraria("10");
        curso.setDtInicio("2020-09-08");
        curso.setRequisitos("teste10");
        curso.setEmentaCurso("teste10");

    	System.out.println("passei qui");
	   // CriarCursoDao dao = new  CriarCursoDao();
	   
	   // curso = dao.salvar(curso);
        
        em.getTransaction().begin();
	  
	    em.persist(curso);
	    
	    em.getTransaction().commit();
	  }
}
