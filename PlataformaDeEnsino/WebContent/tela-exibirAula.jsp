<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt" %>


<%@	page import="java.util.*,
									br.com.jdc.Cadastro.dao.*,
									br.com.jdbc.Modelo.*,
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
     <title>Exibição de Aula</title>

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
  <body>
 <nav class="navbar navbar-inverse navbar-fixed-top">
      <div class="container">
        <div class="navbar-header">
     
        </div>
        <div id="navbar" class="collapse navbar-collapse">
          <ul class="nav navbar-nav">
        
          <a class="navbar-brand" href="tela-meusCursosAluno.jsp">Meus Cursos</a>
           
           
           <a class="navbar-brand" href="tela-aulasDoCursoAluno.jsp">Aulas</a>
           
           
              <li class="active"><a href="">Assistir Aula</a></li>  </ul>
              
              
              
                <a class="navbar-brand" href="entrada?acao=Logout">Sair</a>

          </ul>
          </ul>
        </div><!--/.nav-collapse -->
      </div>
    </nav>
  <br>  <br>
   
<table>		
			<%
				HttpSession sessao = request.getSession();
			

					
			String nometemaAula = (String)sessao.getAttribute("temaAula");
			
			String nomeconteudoAula = (String)sessao.getAttribute("conteudoAula");
			
			String nomeavaliacaoAula = (String)sessao.getAttribute("avaliacaoAula");
			
			
			String nomeobjetivoAula = (String)sessao.getAttribute("objetivoAula");
				
			String nomeVideoAula = (String)sessao.getAttribute("videoAula");
			
						
			%>
			
			
			
    <div class="container">
   

<div class="page-header">
     <div class="row">
       <div class="col-sm-10 text-center">
          <p>NOME: NEWDECYR CARLOS MOTTA JÚNIOR       RF: 32953</p>
          <p>CARGO / FUNÇÃO: PROFESSOR DE MATEMÁTICA – NÍVEL II</p>
          <p>ESCOLA MUNICIPAL DE ENSINO FUNDAMENTAL APRENDA MAIS</p>
        </div>
          <div class="col-sm-2 text-right">
           <button type="button"  dropdown-toggle" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false" style="background-color: #FFFFFF">
    
          <img src="imagem/usuario.jpg" class="img-circle">
            </button>
   <ul class="dropdown-menu">
     <li><a href="#">Aula</a></li>
     <li><a href="#">Tarefa</a></li>
    <li><a href="#">Projeto</a></li>
    <li role="separator" class="divider"></li>
    <li><a href="tela-login.html">Sair</a></li>
  </ul>
          </div>

    </div> <!--fim da row -->
           
</div>
  

  
  <form action="">  


<br>
      



 <div class="container">
         
	
<br>  


   <div class="row">
      <div class="text-center col-sm-11">
        <h1>AULA DE <%=nometemaAula%> </h1>
      </div>
   
   </div> <!--fim da row -->
  

<br> 
<hr/>  
     
<div class="row">
     
<div class="form-group">
 <h2>
        <label for="inputConteudoAula" class="col-sm-1 control-label">Conteúdo:</label>         
         <div class="col-sm-12">
         <br>
         
                   <%=nomeconteudoAula%> 
         </div>
   </h2>
</div>        

</div> <!--fim da row -->


 <br> <hr />  
        
        
<div class="row">
     
<div class="form-group">
<h2>
          <label for="inputObjetivoAula" class="col-sm-1 control-label">Objetivo:</label>      
         <div class="col-sm-12">
         <br>
            
             <%=nomeobjetivoAula%> 
            
         </div>
</h2>
</div>        

</div> <!--fim da row -->


<br> 
<hr/> 
  
  <div class="row">
     
<div class="form-group">
 <h2>
        <label for="inputConteudoAula" class="col-sm-1 control-label">Conteúdo:</label>         
         <div class="col-sm-12">
         <br>
         
                   <%=nomeavaliacaoAula%> 
         </div>
   </h2>
</div>        

</div> <!--fim da row -->              



<br> 
<hr/> 
  
   
   </div> <!--fim da row -->
        
 <div class="row">

	<div class="form-group" align= "center" >
	  <div class="row">
      <div class="text-center col-sm-11">
        <h2>Exibir aula </h2>
      </div>
	  
		
		<iframe width="560" height="315" src=<%=nomeVideoAula%> frameborder="0" allow="accelerometer; autoplay; clipboard-write; encrypted-media; gyroscope; picture-in-picture" allowfullscreen></iframe>
	
	</div>

   
</div> <!-- fim da row-->       


<br> 
<br>  


        
 </form>  
    
	
    </table>
  </body>
   <c:import	url="rodape.jsp"/>
</html>

<script>

function funcao1(){
		alert("Anotação salva com sucesso");
};
</script>