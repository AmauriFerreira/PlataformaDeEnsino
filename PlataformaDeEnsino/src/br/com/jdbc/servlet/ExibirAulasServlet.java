package br.com.jdbc.servlet;

import java.io.IOException;
import java.io.PrintWriter;
import java.util.ArrayList;
import java.util.List;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import br.com.jdbc.dao.Aula;
import br.com.jdc.Cadastro.dao.CriarAulaDao;

@WebServlet("/exibirAulas")
public class ExibirAulasServlet  extends HttpServlet {
	protected void service(HttpServletRequest request,HttpServletResponse response)
			throws ServletException, IOException {
	
		
    	long id = Long.parseLong(request.getParameter("id"));
    	
    		
		CriarAulaDao dao = new CriarAulaDao();
		
		Aula aula1 = dao.GetAula(id);
		
		System.out.println(aula1.getVideoAula());
		HttpSession sessao = request.getSession();
		
		sessao.setAttribute("id", aula1.getId());
		sessao.setAttribute("temaAula", aula1.getTemaAula());
		sessao.setAttribute("conteudoAula", aula1.getConteudoAula());
		sessao.setAttribute("objetivoAula", aula1.getObjetivoAula());
		sessao.setAttribute("avaliacaoAula", aula1.getAvaliacaoAula());
		sessao.setAttribute("videoAula", aula1.getVideoAula());
		
		
		System.out.println(aula1.getTemaAula());
	
		System.out.println("Exibir aula...");
		
		RequestDispatcher rd1 = request.getRequestDispatcher("tela-exibirAula.jsp");
       rd1.forward(request, response);

        }
        	
}