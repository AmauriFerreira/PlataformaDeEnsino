package br.com.jdbc.servlet;

import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import br.com.jdbc.dao.Tarefa;

import br.com.jdc.Cadastro.dao.CriarTarefaDao;

@WebServlet("/excluirTarefa")
public class ExcluirTarefaServlet  extends HttpServlet {
	protected void service(HttpServletRequest request,HttpServletResponse response)
			throws ServletException, IOException {
		
			long id = Long.parseLong(request.getParameter("id"));
			
			Tarefa tarefa = new Tarefa();
			tarefa.setId(id);
			
			CriarTarefaDao dao = new CriarTarefaDao();
			
			dao.excluir(tarefa);
			
			System.out.println("Excluindo tarefa...");
			
			RequestDispatcher rd1 = request.getRequestDispatcher("tela-TarefasDoCurso.jsp");
           rd1.forward(request, response);
 
    
}


}

