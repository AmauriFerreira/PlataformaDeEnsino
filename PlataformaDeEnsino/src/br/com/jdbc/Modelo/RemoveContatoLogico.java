package br.com.jdbc.Modelo;


import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import br.com.jdbc.dao.Usuario;
import br.com.jdc.Cadastro.dao.UsuarioDao;

public class RemoveContatoLogico implements Logica {
	
	
	public String executa(HttpServletRequest req, HttpServletResponse res)
	
		throws Exception {
		
		String email = (String)(req.getParameter("email"));
		
		Usuario usuario = new Usuario();
		usuario.setEmail(email);
		
		UsuarioDao dao = new UsuarioDao();
		
		dao.exclui(usuario);
		
		System.out.println("Excluindo contato...");
		HttpSession sessao = req.getSession();
		sessao.invalidate();
		
		return "ListaContatos.jsp";
	}

}
