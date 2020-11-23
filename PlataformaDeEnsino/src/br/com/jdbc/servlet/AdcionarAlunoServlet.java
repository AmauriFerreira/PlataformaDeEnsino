package br.com.jdbc.servlet;

import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import br.com.jdbc.dao.Aluno;
import br.com.jdbc.dao.Professor;
import br.com.jdc.Cadastro.dao.AlunoDao;



@WebServlet("/adicionaAluno")
public class AdcionarAlunoServlet  extends HttpServlet {
    protected void service(HttpServletRequest request,HttpServletResponse response)
                        throws IOException, ServletException {
        
    	
    	// busca o writer
        PrintWriter out = response.getWriter();

        // buscando os parâmetros no request
   
        String nome = request.getParameter("nome");
        String foto = request.getParameter("foto");
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
        
      
       
        String email = request.getParameter("email");
        String senha = request.getParameter("senha");
               
        // fazendo a conversão da data
        
       

        // monta um objeto contato
       Aluno aluno = new  Aluno();
       
       
        aluno.setNome(nome);
        aluno.setFoto(foto);
        aluno.setNomeMae(nomeMae);
        aluno.setDtNascimento(dtNascimento);
        aluno.setCpf(cpf);
        aluno.setTelefoneFixo(telefoneFixo);
        aluno.setTelefoneCelular(telefoneCelular);
        aluno.setCep(cep);
        aluno.setTipo(tipo);
        aluno.setNomeLogradouro(nomeLogradouro);
        aluno.setNumero(numero);
        aluno.setBairro(bairro);
        aluno.setComplemento(complemento);
        aluno.setCidade(cidade);
        aluno.setEstado(estado);
        
        aluno.setEmail(email);
        aluno.setSenha(senha);
 
        System.out.println("passei aqui aluno sevelet");
        System.out.println(aluno.getNome());
        System.out.println( aluno.getFoto());
        System.out.println(aluno.getNomeMae());
        System.out.println(aluno.getDtNascimento());
        System.out.println(aluno.getCpf());
        System.out.println(aluno.getTelefoneFixo());
        System.out.println(aluno.getEmail());
        System.out.println(aluno.getSenha());

    	
     
        // salva o contato
        AlunoDao dao = new AlunoDao();
        dao.adiciona(aluno);

     
        
    	RequestDispatcher rd1 = request.getRequestDispatcher("/tela-listaDeAluno.jsp");
        rd1.forward(request, response);
	
}


}