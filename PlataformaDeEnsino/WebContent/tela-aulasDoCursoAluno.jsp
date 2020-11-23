
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
           
           
              <li class="active"><a href="">Aulas</a></li>  </ul>
           
   
     
          </ul>
          </ul>
        </div><!--/.nav-collapse -->
      </div>
    </nav>

<br /><br />


<div class="text-center">

<h1>Aulas do Curso</h1>   
</div>

<hr />
<br>  

<form action="buscaCurso">
<div class="text-center">
Pesquisar Aula: <input type="text" size="60" placeholder="Tema da aula"  name="temaAula"/> 

<input type="hidden" name="acao" value="nomeCurso">		
<button input type="submit"  value="Pesquisar">Pesquisar</button>

</div>
</form>

<%@	taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"	%>
<!--	cria	a	lista	-->
<jsp:useBean	id="dao" class="br.com.jdc.Cadastro.dao.CriarAulaDao"/>




<table>
<!--	percorre	contatos	montando	as	linhas	da	tabela	-->

<c:forEach	var="aula" items="${dao.lista}">


 <div class="container">
         
	
<br>  

<hr/><h2>Aula Número: ${aula.id} </h2><hr/>
  
  
<div class="row">

<div class="form-group">
  
             <label for="inputTemaAula" class="col-sm-1 control-label" onclick="funcao1()">Tema:</label>
              <div class="col-sm-11">
                  <input type="text" name="temaAula" value=${aula.temaAula} class="form-control"  id="inputTemaAula">
             </div>
                
</div>
    
</div> <!-- fim da row-->

<br> 
<hr/>  
     
<div class="row">
     
<div class="form-group">

        <label for="inputConteudoAula" class="col-sm-1 control-label">Conteúdo:</label>         
         <div class="col-sm-11">
            <input type="text" name="conteudoAula"  value=${aula.conteudoAula} id="inputconteudoAula" class="form-control">
         </div>
</div>        

</div> <!--fim da row -->


 <br> <hr />  
        
        
<div class="row">
     
<div class="form-group">

          <label for="inputObjetivoAula" class="col-sm-1 control-label">Objetivo:</label>      
         <div class="col-sm-11">
            <input type="text" name="objetivoAula"  value=${aula.conteudoAula} id="inputobjetivoAula" class="form-control">
         </div>

</div>        

</div> <!--fim da row -->


<br> 
<hr/> 

 <div class="row">

 <div class="form-group">

                <label for="inputDtInicioAula" class="col-sm-1 control-label">Data Início:</label>
                    <div class="col-sm-5">
                   <input type="date"  value=${aula.dtInicioAula} name="dtInicioAula" id="inputDtInicioAula">
                 </div>
    

                <label for="inputDtTerminoAula" class="col-sm-1 control-label">Data Término:</label>
                   <div class="col-sm-5">
                   <input type="date" name="dtTerminoAula" value=${aula.dtTerminoAula}  id="inputDtTerminoAula" >
                 </div>
             
 </div>

     
 </div> <!-- fim da row-->


<br> 
<hr/> 
                
<div class="row">
     
<div class="form-group">

          <label for="inputAvaliacaoAula" class="col-sm-1 control-label">Avaliação:</label>  
         <div class="col-sm-11">
            <input type="text" name="avaliacaoAula"  value=${aula.avaliacaoAula} id="inputAvaliacaoAula" class="form-control">
         </div>

</div>        

</div> <!--fim da row -->


<br> 
<hr/> 
        
        

<br> 
<br>  

 
<div class="row">

<div class="text-center">

<a href="exibirAulas?logica=ExibirAulasServlet&id=${aula.id}"class="btn btn-primary" target="_self">Assistir Aula</a>
<a href="tela-tarefaAluno.jsp"class="btn btn-primary" target="_self">Tarefas</a>


        
</div> 
</div>  <!-- fim da row -->

	
</c:forEach>
</table>


 </body> 
  <c:import	url="rodape.jsp"/>
</html>





