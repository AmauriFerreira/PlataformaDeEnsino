
package br.com.jdbc.servlet;



import java.io.IOException;
import java.io.PrintWriter;
import java.text.ParseException;
import java.text.SimpleDateFormat;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import br.com.jdbc.dao.Professor;
import br.com.jdc.Cadastro.dao.ProfessorDao;


@WebServlet("/adicionaListaAluno")
public class CramaTelaCriarAluno  extends HttpServlet {
    protected void service(HttpServletRequest request,HttpServletResponse response)
                        throws IOException, ServletException {


    
        
    	RequestDispatcher rd1 = request.getRequestDispatcher("/tela-cadastroAluno.jsp");
        rd1.forward(request, response);
	
}


}