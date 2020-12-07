<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt" %>


<%@	page import="java.util.*,
  br.com.jdc.Cadastro.dao.*,br.com.jdbc.Modelo.*,
 br.com.jdbc.dao.*"	%>


<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>

<!DOCTYPE html>
<html>

  <head>
    <meta charset="utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <!-- The above 3 meta tags *must* come first in the head; any other head content must come *after* these tags -->
    <title>atualizar Tarefa</title>

    <!-- Bootstrap -->
    <link rel="stylesheet" href="bootstrap/css/bootstrap.min.css">

    <link rel="stylesheet" type="text/css" href="css/tela-meuCurso.css">

    
    <!-- HTML5 shim and Respond.js for IE8 support of HTML5 elements and media queries -->
    <!-- WARNING: Respond.js doesn't work if you view the page via file:// -->
    <!--[if lt IE 9]>
      <script src="https://oss.maxcdn.com/html5shiv/3.7.3/html5shiv.min.js"></script>
      <script src="https://oss.maxcdn.com/respond/1.4.2/respond.min.js"></script>
    <![endif]-->
  </head>
<h:body>
     <nav class="navbar navbar-inverse navbar-fixed-top">
      <div class="container">
        <div class="navbar-header">
          
        </div>
         <div id="navbar" class="collapse navbar-collapse">
          <ul class="nav navbar-nav">
           <ul class="nav navbar-nav">
          
        <a class="navbar-brand" href="tela-homeProfessor.jsp">Home</a>
      
           <a class="navbar-brand" href="tela-meuCurso.jsp">Meus Cursos</a>
           
           
           <a class="navbar-brand" href="tela-TarefasDoCurso.jsp">Tarefas</a>
    
        <li class="active"><a href="">Atualizar Tarefas</a></li>
        
          <a class="navbar-brand" href="entrada?acao=Logout">Sair</a>
        
          
          </ul>
          </ul>
        </div><!--/.nav-collapse -->
      </div>
    </nav>

<br /><br />
<div class="text-center">
<br>
<h1>Atualizar Tarefas </h1>
</div>
<hr />


 

			<%
				HttpSession sessao = request.getSession();
			
			
			           
			            
						String temaTarefa = (String)sessao.getAttribute("temaTarefa");

						String avaliacaoTarefa =(String)sessao.getAttribute("avaliacaoTarefa");

						String conteudoTarefa = (String)sessao.getAttribute("conteudoTarefa");

						String objetivoTarefa = (String)sessao.getAttribute("objetivoTarefa");

						String dtInicioTarefa = (String)sessao.getAttribute("dtInicioTarefa");

						String dtTerminoTarefa = (String)sessao.getAttribute("dtTerminoTarefa");

						String materialTarefa = (String)sessao.getAttribute("materialTarefa");
						
			%>


 <div class="container">

  <form action=" "> 

       
<div class="row">

  <div class="form-group">
                   <label for="inputTemaTarefa" class="col-sm-1 control-label">Título:</label>
                     <div class="col-sm-8">
                        <input type="text" name="temaTarefa" value=<%=temaTarefa%> id="inputTemaTarefa"   class="form-control" >
                     </div>
                     <label for="inputAvaliacaoTarefa" class="col-sm-1 control-label">Valor:</label>
                     <div class="col-sm-2">
                        <input type="text" name="avaliacaoTarefa" value=<%=avaliacaoTarefa%> id="inputAvaliacaoTarefa" class="form-control">
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
<input type="text" name="conteudoTarefa" value=<%=conteudoTarefa%> id="inputConteudoTarefa" class="form-control">
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
<input type="text" name="objetivoTarefa" id="inputObjetivoTarefa" value=<%=objetivoTarefa%> class="form-control">
        </div>   

            
          </div>
          
        </div> <!--fim da row -->

          <br> <br>

 <div class="row">

      <div class="form-group">

                <label for="inputDtInicioTarefa" class="col-sm-1 control-label">Data Início:</label>
                    <div class="col-sm-5">
                   <input type="date" name="dtInicioTarefa" value=<%=dtInicioTarefa%>  id="inputDtInicioTarefa">
                 </div>
  

                <label for="inputDtTerminoTarefa" class="col-sm-1 control-label">Data Término:</label>
                   <div class="col-sm-5">
                   <input type="date" name="dtTerminoTarefa" value=<%=dtTerminoTarefa%> id="inputDtTerminoTarefa" >
                 </div>
             
  </div>
                   

     
 </div> <!-- fim da row-->


  <br>
      
      
      <br>

          <div class="row">

      <div class="form-group">

                <label for="inputMaterialTarefa" class="col-sm-1 control-label">Arquivo da Tarefa:</label>
                   <div class="col-sm-11">
                     <input type="file" name="materialTarefa" value=<%=materialTarefa%> id="inputMaterialTarefa" >
                    </div>
                  </div>
           </div> <!-- fim da row -->

           <br>
           <br>

     
           

  <div class="row">

     <div class="text-center">      
  

    <input type="hidden" name="acao" value="Atualizar">
	<input type="submit"  value="Atualizar" class="btn btn-primary" name="temaTarefa" formaction="atualizarTarefa"/>
      
      
      </div>
    

  </div>  <!-- fim da row -->

  <br>
  <br>

   

  </form > 
   </h:body> 
    <c:import	url="rodape.jsp"/>
</html>

<script>
function funcao1(){
	
	alert("Tarefa atualizada com sucesso");
	
};

function funcao2(){
	
	alert("Tarefa excluida com sucesso");
	
};
</script>