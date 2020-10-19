package br.com.jdbc.teste;

import javax.persistence.EntityManager;
import javax.persistence.EntityManagerFactory;
import javax.persistence.Persistence;

import br.com.jdbc.dao.Conta;

public class CriaConta {
	public static void main(String[] args) {
		EntityManagerFactory emf = Persistence.createEntityManagerFactory("Conta");
		EntityManager em = emf.createEntityManager(); 
		
		Conta conta = new Conta();
		conta.setTitular("Leonardo");
		conta.setNumero(1234);
		conta.setAgencia(4321);
		
		em.getTransaction().begin();
		
		em.persist(conta);
		
		em.getTransaction().commit();
	}
}

