
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
           
           
        <a class="navbar-brand" href="tela-homeDoAluno.jsp">Home</a>
         
 

           <a class="navbar-brand" href="tela-meusCursosAluno.jsp">Meus Cursos</a>
           
           
           <a class="navbar-brand" href="tela-tarefaAluno.jsp">Tarefas</a>
           
           
              <li class="active"><a href="">Visualizar Tarefas</a></li>  </ul>
              
                <a class="navbar-brand" href="entrada?acao=Logout">Sair</a>
          
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
                    
  </div>

     
 </div> <!-- fim da row-->


<div class="row">

<div class="text-center">
<button>
		<iframe src="Química-da-Vida-P1" style="width: 300%;height: 200%;border: none;">Download do material2</iframe>
		</button>

  <br>  <br>
		<a href="Química-da-Vida-P1" class="btn btn-primary" target="_blank">Download do material</a>
        
</div> 
</div>  <!-- fim da row -->
		
		


  <br>
  <br>

		
</c:forEach>
</table>


 </body> 
  <c:import	url="rodape.jsp"/>
</html>



