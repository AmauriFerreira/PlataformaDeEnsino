package br.com.jdbc.servlet;

import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import br.com.jdbc.dao.Aula;
import br.com.jdc.Cadastro.dao.CriarAulaDao;



@WebServlet("/criarAula")
public class CriarAulaServlet   extends HttpServlet {
    protected void service(HttpServletRequest request,HttpServletResponse response)
                        throws IOException, ServletException {
        
    	// busca o writer
        PrintWriter out = response.getWriter();

        // buscando os parâmetros no request
        String temaAula = request.getParameter("temaAula");
        
        String conteudoAula = request.getParameter("conteudoAula");
        
        String objetivoAula = request.getParameter("objetivoAula");
        
        String dtInicioAula = request.getParameter("dtInicioAula");
        
        String dtTerminoAula = request.getParameter("dtTerminoAula");
        
        String avaliacaoAula = request.getParameter("avaliacaoAula");
        
        String bibliografiaAula = request.getParameter("bibliografiaAula");
        
        String materialAula = request.getParameter("materialAula");
        
        String videoAula = request.getParameter("videoAula");
    
      

        // monta um objeto curso
       Aula aula = new   Aula();
        
        aula.setTemaAula(temaAula);
        
        aula.setConteudoAula(conteudoAula);
        
        aula.setObjetivoAula(objetivoAula);
        
        aula.setDtInicioAula(dtInicioAula);
        
        aula.setDtTerminoAula(dtTerminoAula);
        
        aula.setAvaliacaoAula(avaliacaoAula);
        
        aula.setBibliografiaAula(bibliografiaAula);
        
        aula.setMaterialAula(materialAula);
        
        aula.setVideoAula(videoAula);
        
        
   
        
        // salva o contato
      CriarAulaDao dao = new  CriarAulaDao();
       
			dao.salvar(aula);
		

			RequestDispatcher rd1 = request.getRequestDispatcher("/tela-criarAula.html");
	        rd1.forward(request, response);
  
        
        
    
}


}