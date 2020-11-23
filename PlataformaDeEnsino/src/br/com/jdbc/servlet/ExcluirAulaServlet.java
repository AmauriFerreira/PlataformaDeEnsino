package br.com.jdbc.servlet;

import java.io.IOException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import br.com.jdbc.dao.Aula;
import br.com.jdc.Cadastro.dao.CriarAulaDao;
	
@WebServlet("/excluirAula")
public class ExcluirAulaServlet  extends HttpServlet {
	protected void service(HttpServletRequest request,HttpServletResponse response)
			throws ServletException, IOException {
		
			long id = Long.parseLong(request.getParameter("id"));
			
			Aula aula = new Aula();
			aula.setId(id);
			
			CriarAulaDao dao = new CriarAulaDao();
			
			dao.excluir(aula);
			
			System.out.println("Excluindo contato...");
			
			RequestDispatcher rd1 = request.getRequestDispatcher("tela-AulasDoCurso.jsp");
           rd1.forward(request, response);
 
			
			
		}


}