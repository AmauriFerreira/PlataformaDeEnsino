
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
  <head>
    <meta charset="utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <!-- The above 3 meta tags *must* come first in the head; any other head content must come *after* these tags -->
    <title>meusCursos</title>

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
   <h:head>
  <link rel="stylesheet" href="bootstrap/css/bootstrap.min.css">

    <link rel="stylesheet" type="text/css" href="css/tela-meuCurso.css">
</h:head>
  
    
<body>
    <nav class="navbar navbar-inverse navbar-fixed-top">
      <div class="container">
        <div class="navbar-header">
          
        </div>
         <div id="navbar" class="collapse navbar-collapse">
          <ul class="nav navbar-nav">
           <ul class="nav navbar-nav">
           
           <li class="active"><a href="">Home</a></li>  </ul>
           
            <a class="navbar-brand" href="tela-meusCursosAluno.jsp">Meus Cursos</a>
            
            
      <a class="navbar-brand" href="entrada?acao=Logout">Sair</a>
         
          
          </ul>
          </ul>
        </div><!--/.nav-collapse -->
      </div>
    </nav>

<br /><br />
<div class="text-center">
<h2>Home do Aluno</h2>
</div>
<hr />


 <br>
 
<table>

 <h1>
.Atendimento personalizado para aulas online <img src='<c:url value="/imagem.png"/>' /><br>




.Ambiente interativo &nbsp;&nbsp;&nbsp; <img src='<c:url value="/ambinetInterativo.png"/>'/><br><br>

       

.Aulas Gravadas  &nbsp;&nbsp;&nbsp;<img src='<c:url value="/aulasGravas.png"/>'/><br><br>






</h1>



    <!-- jQuery (necessary for Bootstrap's JavaScript plugins) -->
    <script src="https://code.jquery.com/jquery-1.12.4.min.js" integrity="sha384-nvAa0+6Qg9clwYCGGPpDQLVpLNn0fRaROjHqs13t4Ggj3Ez50XnGQqc/r8MhnRDZ" crossorigin="anonymous"></script>
    <!-- Include all compiled plugins (below), or include individual files as needed -->
    <script src="bootstrap/js/bootstrap.min.js" ></script>
  </body>

</table>
   <c:import	url="rodape.jsp"/>
</html>