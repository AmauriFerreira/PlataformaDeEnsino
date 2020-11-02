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
                        throws IOException, ServletException {
        
    	// busca o writer
        PrintWriter out = response.getWriter();

        // buscando os parâmetros no request
      
        String temaTarefa = request.getParameter("temaTarefa");
        
    
        // monta um objeto curso
       Tarefa tarefa = new   Tarefa();
        
       
        tarefa.setTemaTarefa(temaTarefa);
      
    	  
        // salva o contato
      CriarTarefaDao dao = new  CriarTarefaDao();
       
			dao.excluir(temaTarefa);
			
			System.out.println(tarefa.getTemaTarefa()); 
			
			RequestDispatcher rd1 = request.getRequestDispatcher("/tela-updateTarefa.jsp");
	        rd1.forward(request, response);
		     
    
}


}

