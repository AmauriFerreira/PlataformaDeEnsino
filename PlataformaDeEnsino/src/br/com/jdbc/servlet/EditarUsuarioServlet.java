package br.com.jdbc.servlet;

import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import br.com.jdbc.dao.Usuario;
import br.com.jdc.Cadastro.dao.UsuarioDao;


/**
 * Servlet implementation class EditarUsuarioServlet
 */
@WebServlet("/EditarUsuarioServlet")
public class EditarUsuarioServlet extends HttpServlet {
	protected void service(HttpServletRequest request,
			HttpServletResponse response)
			throws ServletException, IOException {
        // busca o writer
        PrintWriter out = response.getWriter();

        // buscando os parâmetros no request
        String nome = request.getParameter("nome");
        String email = request.getParameter("email");
        String senha = request.getParameter("senha");
      
               
        // fazendo a conversão da data
        
       

        // monta um objeto contato
        Usuario usuario = new Usuario();
		usuario.setNome(nome);
		usuario.setSenha(senha);
		usuario.setEmail(email);
		
		UsuarioDao dao = new UsuarioDao();
     
		
        dao.atualiza(usuario);
        
        HttpSession sessao = request.getSession();
	    sessao.setAttribute("usuarioLogadoNome",nome);

        RequestDispatcher rd1 = request
        		.getRequestDispatcher("/ListaContatos.jsp");
        rd1.forward(request, response);
	}
}
