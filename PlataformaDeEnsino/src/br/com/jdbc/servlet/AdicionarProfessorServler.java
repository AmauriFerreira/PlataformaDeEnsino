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


@WebServlet("/adicionaProfessor")
public class AdicionarProfessorServler  extends HttpServlet {
    protected void service(HttpServletRequest request,HttpServletResponse response)
                        throws IOException, ServletException {
        // busca o writer
        PrintWriter out = response.getWriter();

        // buscando os parâmetros no request
        String nome = request.getParameter("nome");
        String nomeMae = request.getParameter("nomeMae");
        String dtNascimento = request.getParameter("dtNascimento");
        String cpf = request.getParameter("cpf");
        String telefoneFixo = request.getParameter("telefoneFixo");
        String telefoneCelular = request.getParameter("telefoneCelular");
        String cep = request.getParameter("cep");
        String tipo = request.getParameter("tipo");
        String nomeLogradouro = request.getParameter("nomeLogradouro");
        String numero = request.getParameter("numero");
        String bairro = request.getParameter("bairro");
        String complemento = request.getParameter("complemento");
        String cidade = request.getParameter("cidade");
        String estado = request.getParameter("estado");
        
        String diploma = request.getParameter("diploma");
        String nomeCurso= request.getParameter("nomeCurso");
        String nomeInstituicao= request.getParameter("nomeInstituicao");
        String tipoCurso= request.getParameter("tipoCurso");
        String cargaHoraria= request.getParameter("cargaHoraria");
        String dtInicio= request.getParameter("dtInicio");
        String dtTermino= request.getParameter("dtTermino");
       
        String email = request.getParameter("email");
        String senha = request.getParameter("senha");
               
        // fazendo a conversão da data
        
       

        // monta um objeto contato
        Professor professor = new  Professor();
        professor.setNome(nome);
        professor.setNomeMae(nomeMae);
        professor.setDtNascimento(dtNascimento);
        professor.setCpf(cpf);
        professor.setTelefoneFixo(telefoneFixo);
        professor.setTelefoneCelular(telefoneCelular);
        professor.setCep(cep);
        professor.setTipo(tipo);
        professor.setNomeLogradouro(nomeLogradouro);
        professor.setNumero(numero);
        professor.setBairro(bairro);
        professor.setComplemento(complemento);
        professor.setCidade(cidade);
        professor.setEstado(estado);
        
        professor.setDiploma(diploma);
        professor.setNomeCurso(nomeCurso);
        professor.setNomeInstituicao(nomeInstituicao);
        
        professor.setTipoCurso(tipoCurso);
        professor.setCargaHoraria(cargaHoraria);
        professor.setDtInicio(dtInicio);
        professor.setDtTermino(dtTermino);
        
    
    
        professor.setEmail(email);
        professor.setSenha(senha);

        // salva o contato
        ProfessorDao dao = new ProfessorDao();
        dao.adiciona(professor);

     
        
    	RequestDispatcher rd1 = request.getRequestDispatcher("/CadastroProfissao.html");
        rd1.forward(request, response);
	
}


}