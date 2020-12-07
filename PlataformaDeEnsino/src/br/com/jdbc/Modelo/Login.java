package br.com.jdbc.Modelo;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import br.com.jdbc.dao.Aluno;
import br.com.jdbc.dao.Usuario;
import br.com.jdc.Cadastro.dao.UsuarioDao;
public class Login implements Acao {

	@Override
	public String executa(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		
	
	
		
	        String email = request.getParameter("email");
	        String senha = request.getParameter("senha");
	        String funcao = request.getParameter("funcao");
	       
	        UsuarioDao usuarioDao = new UsuarioDao();
	        Usuario usuariosProfessor = usuarioDao.existeUsuarioProfessor(email,senha);
	        LoginUsuario loginUsuario = usuarioDao.existeUsuario(email,senha);
	        Aluno loginUsuarioAluno = usuarioDao.existeUsuarioAluno(email,senha);
	        
	        System.out.println("passai aqui122212");
	        System.out.println(usuariosProfessor.getFuncao());
		
	        if(usuariosProfessor.getFuncao()=="Professor") {
				System.out.println("Usuario existe111");
				HttpSession sessao = request.getSession();
				sessao.setAttribute("usuarioLogado",usuariosProfessor);
				return "redirect:entrada?acao=Homeprofessor";
			}else if(loginUsuario!=null) {
			System.out.println("Usuario existe111");
			HttpSession sessao = request.getSession();
			sessao.setAttribute("usuarioLogado",loginUsuario);
			return "redirect:entrada?acao=Home";
		}else {
			
			return "redirect:entrada?acao=LoginForm";
		}
		
		
	}

}
