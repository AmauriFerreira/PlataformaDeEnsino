package br.com.jdbc.Modelo;

import java.io.IOException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import javax.swing.JOptionPane;

import br.com.jdbc.dao.Curso;
import br.com.jdc.Cadastro.dao.CriarCursoDao;
import br.com.jdc.Cadastro.dao.UsuarioDao;

	
	public class Login implements Acao{

	    @Override
	    public String executa(HttpServletRequest request, HttpServletResponse response)
	            throws ServletException, IOException {
	    	

	        String email = request.getParameter("email");
	        String senha = request.getParameter("senha");
	        
	        System.out.println("Logando " + email);
	        
	        UsuarioDao usuarioDao = new UsuarioDao();
	        LoginUsuario loginUsuario = usuarioDao.existeUsuario(email,senha);
	        
	        if(loginUsuario !=null) {
	        	System.out.println("Usuario  existe");
	        	HttpSession sessao = request.getSession();
				sessao.setAttribute("usuarioLogadoNome", loginUsuario.getNome());
				sessao.setAttribute("usuarioLogadoEmail", loginUsuario.getEmail());
				sessao.setAttribute("usuarioLogadoSenha", loginUsuario.getSenha());
				
				sessao.setAttribute("nomeCoordenador","****************");
				sessao.setAttribute("nomeProfessor","****************");
				sessao.setAttribute("nomeCurso","****************");
				sessao.setAttribute("cargaHoraria","****************");
				sessao.setAttribute("dtInicio","****************");
				sessao.setAttribute("requisitos","****************");
				sessao.setAttribute("ementaCurso","****************");
				
				  System.out.println("Logando " );
	        	RequestDispatcher rd1 = request
		        		.getRequestDispatcher("/ListaContatos.jsp?nome"+loginUsuario.getNome());
		        rd1.forward(request, response);
	        	
	        }
	        
	        
	        return "redirect:ListaContatos.jsp";
	        
	        
	    }

	

}
