package br.com.jdbc.Modelo;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

public interface Acao {
	
 public String executa(HttpServletRequest request,
		 HttpServletResponse response) throws ServletException, IOException;

	

}
