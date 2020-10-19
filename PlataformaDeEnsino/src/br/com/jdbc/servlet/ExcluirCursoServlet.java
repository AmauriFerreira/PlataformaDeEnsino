package br.com.jdbc.servlet;

import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import br.com.jdbc.dao.Curso;
import br.com.jdc.Cadastro.dao.CriarCursoDao;

@WebServlet("/excluirCurso")
public class ExcluirCursoServlet   extends HttpServlet {
    protected void service(HttpServletRequest request,HttpServletResponse response)
                        throws IOException, ServletException {
        
    	// busca o writer
        PrintWriter out = response.getWriter();

        // buscando os parâmetros no request
      
        String nomeCurso = request.getParameter("nomeCurso");
        
    
        // monta um objeto curso
        Curso curso = new   Curso();
        
       
        curso.setNomeCurso(nomeCurso);
      
    	System.out.println("passei aqui124124");    
        // salva o contato
      CriarCursoDao dao = new  CriarCursoDao();
       
			dao.excluir(nomeCurso);
			
			System.out.println(curso.getNomeCurso());   
		     
    
}


}
