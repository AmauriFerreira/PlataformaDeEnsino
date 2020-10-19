package br.com.jdbc.servlet;

import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import br.com.jdbc.dao.Curso;
import br.com.jdc.Cadastro.dao.CriarCursoDao;

@WebServlet("/adicionaCurso")
public class CriarCursoServler   extends HttpServlet {
    protected void service(HttpServletRequest request,HttpServletResponse response)
                        throws IOException, ServletException {
        
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
       
			dao.salvar(curso);
		

        // imprime o nome do contato que foi adicionado
        out.println("<html>");
        out.println("<body>");
        out.println("Curso criado com sucesso!!!");
        
               
        out.println("</body>");
        out.println("</html>");
        
        
    
}


}
