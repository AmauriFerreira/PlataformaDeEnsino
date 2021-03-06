
<%@	page import="java.util.*,
									br.com.jdc.Cadastro.dao.*,
									br.com.jdbc.Modelo.*,
									br.com.jdbc.dao.*"	%>

<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt" %>	
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
 <h:head>
     <link rel="stylesheet" href="bootstrap/css/bootstrap.min.css">
 <link rel="stylesheet" type="text/css" href="css/estiloLogin.css">
</h:head>

<body>
    <nav class="navbar navbar-inverse navbar-fixed-top">
      <div class="container">
        <div class="navbar-header">
          
        </div>
         <div id="navbar" class="collapse navbar-collapse">
          <ul class="nav navbar-nav">
           <ul class="nav navbar-nav">
      <a class="navbar-brand" href="ListaContatos.jsp">Home</a>
      
        <a class="navbar-brand" href="tela-listaDeCurso.jsp">Lista de Curso</a>
  
         
         <li class="active"><a href="">Lista de Aluno</a></li>
         
         
          <a class="navbar-brand" href="tela-listaProfessor.jsp">Lista de Professor</a>
         
         
         <a class="navbar-brand" href="tela-meuCurso.jsp">�rea do Professor </a>
             
            
        <a class="navbar-brand" href="tela-meusCursosAluno.jsp">�rea do Aluno</a>
        
        
          <a class="navbar-brand" href="entrada?acao=Logout">Sair</a>
          
          </ul>
          </ul>
        </div><!--/.nav-collapse -->
      </div>
    </nav>

<br /><br />
<div class="text-center">
<h1>Lista de Aluno</h1>
</div>
<hr />


 <br>
 

<form action="buscaCurso">
<div class="text-center">
Pesquisar Curso: <input type="text" size="60" placeholder="nome do curso"  name="nomeCurso"/> 
<input type="hidden" name="acao" value="nomeCurso">		
<button input type="submit"  value="Pesquisar">Pesquisar</button>	

<input type="submit" onclick="funcao1()"  value="Adcionar Aluno"  name="adicionaListaAluno" formaction="adicionaListaAluno"/>
</div>
</form>

<%@	taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"	%>
<!--	cria	a	lista	-->
<jsp:useBean	id="dao" class="br.com.jdc.Cadastro.dao.AlunoDao"/>


<table>
<!--	percorre	contatos	montando	as	linhas	da	tabela	-->
<c:forEach	var="aluno" items="${dao.lista}">


       
<div class="container">
 
     
       <br>  
         
     <hr/><h2>RA do Aluno: ${aluno.id_aluno}</h2><hr/>

 <div class="row">

  <div class="form-group">
                   <label class="col-sm-1 control-label">Nome:</label>
                     <div class="col-sm-11">
                       <input type="text" name="nome" value=${aluno.nome}  class="form-control" id="inputNome" placeholder="Nome:">
                     </div>

            
        
  </div>

     
 </div> <!-- fim da row-->

<br>

  <br>

           <div class="row">

              <div class="form-group"> 
                <label for="inputNomeMae" class="col-sm-1 control-label">Nome da M�e:</label>
                  <div class="col-sm-5">
                   <input type="text" name="nomeMae" value=${aluno.nomeMae}  class="form-control" id="inputNomeMae" placeholder="Nome:">
               
                 </div>
   
                   <label for="inputDataNacimento" class="col-sm-1 control-label">Data de Nascimento:</label>
               
                 <div class="col-sm-5">
                   
                   <input type="text" name="dtNascimento" value=${aluno.dtNascimento} id="inputDataNacimento" name="DataNacimento">
                 </div>
    </div> 
           </div> <!-- fim da row--> 

<br>
           <div class="row">

        <div class="form-group"> 
                <label for="inputCPF" class="col-sm-1 control-label">CPF:</label>
                  <div class="col-sm-3">
                    <input type="text"  name="cpf" value=${aluno.cpf} id="inputCPF"class="form-control" >
                  </div>
    
                  <label for="inputTelefoneFixo" class="col-sm-1 control-label">Telefone Fixo:</label>
                    <div class="col-sm-3">
                      <input type="text" name="TelefoneFixo" value=${aluno.telefoneFixo} id="inputTelefoneFixo" class="form-control" >
                    </div>

      
              <label for="inputTelefoneCelular" class="col-sm-1 control-label">Telefone Celular:</label>
            <div class="col-sm-3">
              <input type="text" name="TelefoneCelular" value=${aluno.telefoneCelular} id="inputTelefoneCelular"  class="form-control" >
            </div>

        </div> 

             </div> <!--fim da row-->

<br>

<br> 
<br>
<div class="row">

<div class="text-center">


<a href="excluirAula?logica=ExcluirAlunoServlet&id=${aluno.id}"class="btn btn-primary" target="_self">Excluir</a>
<button class="btn btn-primary" onclick="limpar();">Editar</button>


        
</div> 
</div>  <!-- fim da row -->
		
</c:forEach>
</table>


 </body> 
 <c:import	url="rodape.jsp"/>
</html>



