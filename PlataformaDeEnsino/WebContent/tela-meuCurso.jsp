
<%@	page import="java.util.*,
									br.com.jdc.Cadastro.dao.*,
									br.com.jdbc.Modelo.*,
									br.com.jdbc.dao.*"	%>
									
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
      <a class="navbar-brand" href="tela-homeProfessor.jsp">Home</a>
      
      
        <li class="active"><a href="">Meus Cursos</a></li>
            
          
            <a class="navbar-brand" href="entrada?acao=Logout">Sair</a>
          </ul>
          </ul>
        </div><!--/.nav-collapse -->
      </div>
    </nav>

<br /><br />
<div class="text-center">
<h1>Meus Cursos</h1>
</div>
<hr />


 <br>
 

<form action="buscaCurso">
<div class="text-center">
Pesquisar Curso: <input type="text" size="60" placeholder="nome do curso"  name="nomeCurso"/> 
<input type="hidden" name="acao" value="nomeCurso">		
<button input type="submit"  value="Pesquisar">Pesquisar</button>	

<input type="submit" onclick="funcao1()"  value="Adcionar Curso"  name="direcionarCriarCurso" formaction="direcionarCriarCurso"/>
</div>
</form>

<%@	taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"	%>
<!--	cria	a	lista	-->
<jsp:useBean	id="dao" class="br.com.jdc.Cadastro.dao.CriarCursoDao"/>


<table>
<!--	percorre	contatos	montando	as	linhas	da	tabela	-->
<c:forEach	var="curso" items="${dao.lista}">


       
<div class="container">
 
     
       <br>  
         
     <hr/><h2>Curso: ${curso.id}</h2><hr/>

        
       <div class="row">
      

      <div class="form-group">

                <label for="inputCoordenador" class="col-sm-2 control-label">Nome do Coordenador:</label>
                   <div class="col-sm-4">
                     <input type="text" name="nomeCoordenador" value=${curso.nomeCoordenador} id="inputCoordenador"class="form-control" >
                    
                    </div>

                <label for="inputProfessor" class="col-sm-2 control-label">Nome do Professor:</label>
                  <div class="col-sm-4">
                     <input type="text" name="nomeProfessor" value=${curso.nomeProfessor} id="inputProfessor"class="form-control" >
                  </div>
  </div>

     
 </div> <!-- fim da row-->
<br>

 <div class="row">

      <div class="form-group">

                <label for="inputNomeCurso" class="col-sm-1 control-label">Nome do Curso:</label>
                   <div class="col-sm-4">
                     <input type="text" name="nomeCurso" value=${curso.nomeCurso}  id="inputNomeCurso"class="form-control" >
                    </div>
                 

                <label for="inputCargaHoraria" class="col-sm-1 control-label">Carga Horária:</label>
                  <div class="col-sm-2">
                     <input type="text" name="cargaHoraria" value=${curso.cargaHoraria}  id="inputCargaHoraria"class="form-control" >
                  </div>

                    <label for="inputDataInicio" class="col-sm-1 control-label">Data Início:</label>
                    <div class="col-sm-3">
                   <input type="text" name="dtInicio"  value=${curso.dtInicio} id="inputDataInicio" class="form-control">
                   
                 </div>
  </div>

     
 </div> <!-- fim da row-->
 <hr />  
        <div class="row">

          <div class="form-group">

             <label for="requisitos" class="col-sm-2 control-label">Requisito do Curso:</label>
                 </div>
 
 <div class="col-sm-11">

        <div class="col-sm-14">
<input type="text" name="requisitos"  value=${curso.requisitos} id="inputRequisitos" class="form-control">
        </div>

            
          </div>
          
        </div> <!--fim da row -->

  <br> <hr />  
        <div class="row">

          <div class="form-group">

             <label for="ementaCurso" class="col-sm-2 control-label">Ementa do Curso:</label>
                 </div>
 
 <div class="col-sm-11">
   
        <div class="col-sm-14">
<input type="text" name="ementaCurso"  value=${curso.ementaCurso} id="inputEmentaCurso" class="form-control">
        </div>   

            
          </div>
          
        </div> <!--fim da row -->

<br> 
<br>
<div class="row">

<div class="text-center">


<a href="excluirCurso?logica=ExcluirCursoServlet&id=${curso.id}"class="btn btn-primary" target="_self">Excluir</a>
<button class="btn btn-primary" onclick="limpar();">Editar</button>
<a href="tela-AulasDoCurso.jsp"class="btn btn-primary" target="_self">Aulas</a>
<a href="tela-TarefasDoCurso.jsp"class="btn btn-primary" target="_self">Tarefas</a>
       
        
</div> 
</div>  <!-- fim da row -->
		
</c:forEach>
</table>


 </body> 
 <c:import	url="rodape.jsp"/>
</html>



