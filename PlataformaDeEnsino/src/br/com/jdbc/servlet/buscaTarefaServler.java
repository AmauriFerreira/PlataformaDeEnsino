package br.com.jdbc.servlet;

import java.io.IOException;
import java.io.PrintWriter;
import java.util.ArrayList;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import antlr.collections.List;
import br.com.jdbc.dao.Aula;
import br.com.jdbc.dao.Tarefa;
import br.com.jdc.Cadastro.dao.CriarTarefaDao;




@WebServlet("/buscaTarefa")
public class buscaTarefaServler    extends HttpServlet {
    protected void service(HttpServletRequest request,HttpServletResponse response)
                        throws IOException, ServletException {
    	
    	
   
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



Tarefa tarefa1 = dao.GetTarefa(temaTarefa);
	


	 
	if(tarefa1!=null) {
		 System.out.println("Passei denovo " );
	        
	HttpSession sessao = request.getSession();
	sessao.setAttribute("temaTarefa", tarefa1.getTemaTarefa());
	sessao.setAttribute("avaliacaoTarefa", tarefa1.getAvaliacaoTarefa());
	sessao.setAttribute("conteudoTarefa", tarefa1.getConteudoTarefa());
	sessao.setAttribute("objetivoTarefa", tarefa1.getObjetivoTarefa());
	sessao.setAttribute("dtInicioTarefa", tarefa1.getDtInicioTarefa());
	sessao.setAttribute("dtTerminoTarefa", tarefa1.getDtTerminoTarefa());
	sessao.setAttribute("materialTarefa", tarefa1.getMaterialTarefa());
	
	
    System.out.println("passei aqui no banco");
    
    System.out.println(tarefa1.getTemaTarefa());
    
    System.out.println(tarefa1.getConteudoTarefa());

  
	
	RequestDispatcher rd1 = request.getRequestDispatcher("/tela-updateTarefa.jsp");
    rd1.forward(request, response);
   
	}
	
	 
	HttpSession sessao = request.getSession();
	sessao.setAttribute("temaTarefa","****************");
	sessao.setAttribute("avaliacaoTarefa","****************");
	sessao.setAttribute("conteudoTarefa","****************");
	sessao.setAttribute("objetivoTarefa","****************");
	sessao.setAttribute("dtInicioTarefa","****************");
	sessao.setAttribute("dtTerminoTarefa","****************");
	sessao.setAttribute("materialTarefa","****************");

	
	RequestDispatcher rd1 = request.getRequestDispatcher("/tela-updateTarefa.jsp");
    rd1.forward(request, response);
	


  }
    
}
	