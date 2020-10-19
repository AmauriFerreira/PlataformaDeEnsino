package br.com.jdbc.servlet;

	

	import java.io.IOException;
	import java.io.PrintWriter;
	import java.text.ParseException;
	import java.text.SimpleDateFormat;
	

	import javax.servlet.ServletException;
	import javax.servlet.annotation.WebServlet;
	import javax.servlet.http.HttpServlet;
	import javax.servlet.http.HttpServletRequest;
	import javax.servlet.http.HttpServletResponse;

import br.com.jdc.Cadastro.dao.UsuarioNaoTem;
import br.com.jdc.Cadastro.dao.UsuarioDao;


	@WebServlet("/adicionaUsuario")
	public class AdicionaUsuarioServler  extends HttpServlet {
	    protected void service(HttpServletRequest request,HttpServletResponse response)
	                        throws IOException, ServletException {
	        // busca o writer
	        PrintWriter out = response.getWriter();

	        // buscando os parâmetros no request
	        String nome = request.getParameter("nome");
	        String email = request.getParameter("email");
	        String senha = request.getParameter("senha");
	               
	        // fazendo a conversão da data
	        
	       

	        // monta um objeto contato
	        UsuarioNaoTem usuario = new UsuarioNaoTem();
	        usuario.setNome(nome);
	        usuario.setEmail(email);
	        usuario.setSenha(senha);

	        // salva o contato
	        UsuarioDao dao = new UsuarioDao();
	        dao.adiciona(usuario);

	        // imprime o nome do contato que foi adicionado
	        out.println("<html>");
	        out.println("<body>");
	        out.println("Contato " + usuario.getNome() +
	                " adicionado com sucesso");
	        out.println("</body>");
	        out.println("</html>");
	        
	        
	    
	}

	
}
