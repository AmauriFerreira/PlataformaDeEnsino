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

import br.com.jdbc.Modelo.LoginUsuario;
import br.com.jdbc.dao.Aluno;
import br.com.jdbc.dao.Usuario;
import br.com.jdbc.dao.Funcionario;
import br.com.jdc.Cadastro.dao.UsuarioDao;


	
@WebServlet("/loginSistema")
public class LoginSistema   extends HttpServlet {
    protected void service(HttpServletRequest request,HttpServletResponse response)
                        throws IOException, ServletException {
     
    	List<LoginUsuario> usuarios = new ArrayList<LoginUsuario>();
    	// busca o writer
       // PrintWriter out = response.getWriter();

	        String email = request.getParameter("email");
	        String senha = request.getParameter("senha");
	        String funcao = request.getParameter("funcao");
	       
	        UsuarioDao usuarioDao = new UsuarioDao();
	        Usuario usuariosProfessor = usuarioDao.existeUsuarioProfessor(email,senha);
	        LoginUsuario loginUsuario = usuarioDao.existeUsuario(email,senha);
	        Aluno loginUsuarioAluno = usuarioDao.existeUsuarioAluno(email,senha);
	       
	      
	       
	        if (loginUsuarioAluno !=null) {
	        	 
	        	 System.out.println("Aluno Logando aqui " + email);
	        	RequestDispatcher rd1 = request
		        		.getRequestDispatcher("/tela-homeDoAluno.jsp");
		        rd1.forward(request, response);
	        	 
		        
	           }else if(loginUsuario  !=null ){
		        	
	   	        
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
		        	
		        }else if(usuariosProfessor !=null && usuariosProfessor.getFuncao()!="Admin") {
	        	  
	        		   HttpSession sessao = request.getSession();
	        	RequestDispatcher rd2 = request
        			.getRequestDispatcher("/tela-homeProfessor.jsp");
                rd2.forward(request, response);
               }else {
	        	HttpSession sessao = request.getSession();
	        	sessao.invalidate();
	     	RequestDispatcher rd3 = request
	        		.getRequestDispatcher("/tela-login.html");
	        rd3.forward(request, response);
	        
	        }
	        
	        
	      
	     }
	        

}