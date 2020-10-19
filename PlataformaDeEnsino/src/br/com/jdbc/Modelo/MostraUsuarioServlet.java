
package br.com.jdbc.Modelo;

import javax.servlet.RequestDispatcher;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import br.com.jdbc.dao.Usuario;
import br.com.jdc.Cadastro.dao.UsuarioDao;

public class MostraUsuarioServlet implements Logica {
	
	
	
	@Override
	public String executa(HttpServletRequest req, HttpServletResponse res) throws Exception {

	

		        
		        return "/EditarUsuario.jsp";

}

	

}