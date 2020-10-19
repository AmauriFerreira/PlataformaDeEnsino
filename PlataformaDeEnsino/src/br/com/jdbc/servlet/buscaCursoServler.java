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

import br.com.jdbc.Modelo.Acao;
import br.com.jdbc.Modelo.LoginForm;
import br.com.jdbc.Modelo.LoginUsuario;
import br.com.jdbc.dao.Curso;
import br.com.jdc.Cadastro.dao.CriarCursoDao;
import br.com.jdc.Cadastro.dao.UsuarioDao;


@WebServlet("/buscaCurso")
public class buscaCursoServler   extends HttpServlet {
    protected void service(HttpServletRequest request,HttpServletResponse response)
                        throws IOException, ServletException {

    	List<Curso> listaDados = new ArrayList<Curso>();
    	// busca o writer
        PrintWriter out = response.getWriter();

        // buscando os parâmetros no request
        String nomeCoordenador = request.getParameter("nomeCoordenador");
        String nomeProfessor = request.getParameter("nomeProfessor");
        String nomeCurso = request.getParameter("nomeCurso");
        String cargaHoraria = request.getParameter("cargaHoraria");
        String dtInicio = request.getParameter("dtInicio");
        String requisitos = request.getParameter("requisitos");
        String ementaCurso = request.getParameter("ementaCurso");
    
      

        // monta um objeto curso
        Curso curso = new   Curso();
        
        curso.setNomeCoordenador(nomeCoordenador);
        curso.setNomeProfessor(nomeProfessor);
        curso.setNomeCurso(nomeCurso);
        curso.setCargaHoraria(cargaHoraria);
        curso.setDtInicio(dtInicio);
        curso.setRequisitos(requisitos);
        curso.setEmentaCurso(ementaCurso);
        
     
        // salva o contato
      CriarCursoDao dao = new  CriarCursoDao();
    
      Curso curso1 = dao.GetCurso(nomeCurso);
			

    
        	 
        	if(curso1!=null) {
        		 System.out.println("Passei denovo " );
        	        
        	HttpSession sessao = request.getSession();
			sessao.setAttribute("nomeCoordenador", curso1.getNomeCoordenador());
			sessao.setAttribute("nomeProfessor", curso1.getNomeProfessor());
			sessao.setAttribute("nomeCurso", curso1.getNomeCurso());
			sessao.setAttribute("cargaHoraria", curso1.getCargaHoraria());
			sessao.setAttribute("dtInicio", curso1.getDtInicio());
			sessao.setAttribute("requisitos", curso1.getRequisitos());
			sessao.setAttribute("ementaCurso", curso1.getEmentaCurso());
			
        	
        	RequestDispatcher rd1 = request.getRequestDispatcher("/ListaContatos.jsp");
	        rd1.forward(request, response);
        	 } 
        	 
        		HttpSession sessao = request.getSession();
        		sessao.setAttribute("nomeCoordenador","****************");
				sessao.setAttribute("nomeProfessor","****************");
				sessao.setAttribute("nomeCurso","****************");
				sessao.setAttribute("cargaHoraria","****************");
				sessao.setAttribute("dtInicio","****************");
				sessao.setAttribute("requisitos","****************");
				sessao.setAttribute("ementaCurso","****************");
			
            	
				RequestDispatcher rd1 = request.getRequestDispatcher("/ListaContatos.jsp");
		        rd1.forward(request, response);
        	
        	
    }

    
}


