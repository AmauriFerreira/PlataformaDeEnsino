
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
      
           <a class="navbar-brand" href="tela-meuCurso.jsp">Meus Cursos</a>
    
        <li class="active"><a href="">Tarefas</a></li>
        
          
          </ul>
          </ul>
        </div><!--/.nav-collapse -->
      </div>
    </nav>

<br /><br />
<div class="text-center">
<h1>Tarefas da Aula</h1>
</div>
<hr />

 <br>
 

<div class="text-center">

<form action="buscaCurso">
Pesquisar Curso: <input type="text" size="60" placeholder="nome do curso"  name="nomeCurso"/> 
<input type="hidden" name="acao" value="nomeCurso">		
<button input type="submit"  value="Pesquisar">Pesquisar</button>	

<input type="submit" onclick="funcao1()"  value="Adcionar Tarefa"  name="ChamarCriarTarefa" formaction="ChamarCriarTarefa"/>
 
</div>

<%@	taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"	%>
<!--	cria	a	lista	-->
<jsp:useBean	id="dao" class="br.com.jdc.Cadastro.dao.CriarTarefaDao"/>


<table>
<!--	percorre	contatos	montando	as	linhas	da	tabela	-->
<c:forEach	var="tarefa" items="${dao.lista}" >


        



 <div class="container">
 <br>
         
     <hr/><h2>Tarefa: ${tarefa.id}</h2><hr/>

        
    <div class="row">

  <div class="form-group">
                   <label for="inputTemaTarefa" class="col-sm-1 control-label">Título:</label>
                     <div class="col-sm-8">
                        <input type="text" name="temaTarefa" value=${tarefa.temaTarefa} id="inputTemaTarefa"   class="form-control" >
                     </div>
                     <label for="inputAvaliacaoTarefa" class="col-sm-1 control-label">Valor:</label>
                     <div class="col-sm-2">
                        <input type="text" name="avaliacaoTarefa" value=${tarefa.avaliacaoTarefa} id="inputAvaliacaoTarefa" class="form-control">
                     </div>
      
  </div>

     
 </div> <!-- fim da row-->

 <br>
      
<hr />  
        <div class="row">

          <div class="form-group">

             <label for="inputConteudoTarefa" class="col-sm-2 control-label">Conteúdo:</label>
                 </div>
 
 <div class="col-sm-11">

        <div class="col-sm-14">
<input type="text" name="conteudoTarefa" value=${tarefa.conteudoTarefa} id="inputConteudoTarefa" class="form-control">
        </div>

            
          </div>
          
        </div> <!--fim da row -->

  <br><br><br> <hr />  
        <div class="row">

          <div class="form-group">

             <label for="inputObjetivoTarefa"  class="col-sm-2 control-label">Objetivo:</label>
                 </div>
 
 <div class="col-sm-11">
   
        <div class="col-sm-14">
<input type="text" name="objetivoTarefa" id="inputObjetivoTarefa" value=${tarefa.objetivoTarefa} class="form-control">
        </div>   

           
          </div>
          
        </div> <!--fim da row -->

          <br> <br>

 <div class="row">

      <div class="form-group">

                <label for="inputDtInicioTarefa" class="col-sm-1 control-label">Data Início:</label>
                    <div class="col-sm-5">
                   <input type="text" name="dtInicioTarefa"   value=${tarefa.dtInicioTarefa}  id="inputDtInicioTarefa">
                 </div>
   

                <label for="inputDtTerminoTarefa" class="col-sm-1 control-label">Data Término:</label>
                   <div class="col-sm-5">
                   <input type="text" name="dtTerminoTarefa" value=${tarefa.dtTerminoTarefa} id="inputDtTerminoTarefa" >
                 </div>
             
  </div>
                   

     
 </div> <!-- fim da row-->


  <br>
      
      
      <br>

          <div class="row">

      <div class="form-group">

                <label for="inputMaterialTarefa" class="col-sm-1 control-label">Arquivo da Tarefa:</label>
                   <div class="col-sm-11">
                     <input type="file" name="materialTarefa" value=${tarefa.materialTarefa} id="inputMaterialTarefa" >
                    </div>
                  </div>
           </div> <!-- fim da row -->

           <br>
           <br>

   
<div class="row">

<div class="text-center">


<a href="excluirTarefa?logica=ExcluirTarefaServlet&id=${tarefa.id}"class="btn btn-primary" target="_self">Excluir</a>
<button class="btn btn-primary" onclick="limpar();">Editar</button>

        
</div> 
</div>  <!-- fim da row -->

  <br>
  <br>

		
</c:forEach>
</table>


 </body> 
  <c:import	url="rodape.jsp"/>
</html>



