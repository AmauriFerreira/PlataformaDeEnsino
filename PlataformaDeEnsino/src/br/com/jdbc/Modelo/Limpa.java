package br.com.jdbc.Modelo;


import javax.servlet.RequestDispatcher;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import br.com.jdbc.dao.Curso;
import br.com.jdbc.dao.Usuario;
import br.com.jdc.Cadastro.dao.CriarCursoDao;
import br.com.jdc.Cadastro.dao.UsuarioDao;



public class Limpa implements Logica{



	public String executa(HttpServletRequest request, HttpServletResponse res)
	
		throws Exception {
		
	    String email = request.getParameter("email");
        String senha = request.getParameter("senha");

        System.out.println("Logando " + email);
        
       UsuarioDao usuarioDao = new UsuarioDao();
        LoginUsuario loginUsuario = usuarioDao.existeUsuario(email,senha);
		  
		   
	        // buscando os parâmetros no request
	        String nomeCoordenador = request.getParameter("nomeCoordenador");
	        String nomeProfessor = request.getParameter("nomeProfessor");
	        String nomeCurso = request.getParameter("nomeCurso");
	        String cargaHoraria = request.getParameter("cargaHoraria");
	        String dtInicio = request.getParameter("dtInicio");
	        String requisitos = request.getParameter("requisitos");
	        String ementaCurso = request.getParameter("ementaCurso");
	        
	        Curso curso = new   Curso();
	        
	        curso.setNomeCoordenador(nomeCoordenador);
	        curso.setNomeProfessor(nomeProfessor);
	        curso.setNomeCurso(nomeCurso);
	        curso.setCargaHoraria(cargaHoraria);
	        curso.setDtInicio(dtInicio);
	        curso.setRequisitos(requisitos);
	        curso.setEmentaCurso(ementaCurso);
	        
	    	CriarCursoDao dao = new  CriarCursoDao();
		    
		  
	   
		   
		   if(nomeCurso !=null) {
	        	System.out.println("passei de novo");
	        	HttpSession sessao = request.getSession();
				sessao.setAttribute("nomeCurso", loginUsuario.getNome());
				sessao.setAttribute("usuarioLogadoEmail", loginUsuario.getEmail());
				sessao.setAttribute("curso", "");
	        	RequestDispatcher rd1 = request
		        		.getRequestDispatcher("/ListaContatos.jsp?nome"+loginUsuario.getNome());
		        rd1.forward(request, res);
	        	
	        }
		
	
		
		System.out.println("Campos limpos ...");
		HttpSession sessao = request.getSession();
		sessao.invalidate();
		
		return "ListaContatos.jsp";
	}

}
