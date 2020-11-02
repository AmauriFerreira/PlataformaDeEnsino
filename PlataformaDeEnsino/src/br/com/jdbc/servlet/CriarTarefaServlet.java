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

	import br.com.jdbc.dao.Tarefa;
	import br.com.jdc.Cadastro.dao.CriarTarefaDao;



	@WebServlet("/criarTarefa")
	public class CriarTarefaServlet   extends HttpServlet {
	    protected void service(HttpServletRequest request,HttpServletResponse response)
	                        throws IOException, ServletException {
	        
	    	List<Tarefa> listaDados = new ArrayList<Tarefa>();
	    	
	    	
	    	// busca o writer
	        PrintWriter out = response.getWriter();

	        // buscando os parâmetros no request
	        String temaTarefa = request.getParameter("temaTarefa");
	        
	        String avaliacaoTarefa = request.getParameter("avaliacaoTarefa");
	        
	        String conteudoTarefa = request.getParameter("conteudoTarefa");
	        
	        String objetivoTarefa = request.getParameter("objetivoTarefa");
	        
	        String dtInicioTarefa = request.getParameter("dtInicioTarefa");
	        
	        String dtTerminoTarefa = request.getParameter("dtTerminoTarefa");
	        
	        String materialTarefa = request.getParameter("materialTarefa");
	        
	      
	    
	      

	        // monta um objeto curso
	        Tarefa  tarefa = new Tarefa();
	        
	       tarefa.setTemaTarefa(temaTarefa);
	       
	       tarefa.setAvaliacaoTarefa(avaliacaoTarefa);
	        
	       tarefa.setConteudoTarefa(conteudoTarefa);
	        
	       tarefa.setObjetivoTarefa(objetivoTarefa);
	        
	       tarefa.setDtInicioTarefa(dtInicioTarefa);
	        
	       tarefa.setDtTerminoTarefa(dtTerminoTarefa);
	        
	       tarefa.setMaterialTarefa(materialTarefa);
	        
	        
	        // salva o contato
	      CriarTarefaDao dao = new  CriarTarefaDao();
	       
				dao.salvar(tarefa);
			

				RequestDispatcher rd1 = request.getRequestDispatcher("/tela-criarTarefa.html");
		        rd1.forward(request, response);
	  
	       


	}

}
