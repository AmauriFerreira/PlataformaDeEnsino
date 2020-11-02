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
  <body>
 <nav class="navbar navbar-inverse navbar-fixed-top">
      <div class="container">
        <div class="navbar-header">
          <a class="navbar-brand" href="ListaContatos.jsp">Home</a>
        </div>
        <div id="navbar" class="collapse navbar-collapse">
          <ul class="nav navbar-nav">
        
          <a class="navbar-brand" href="telaProfessor.html">Área do Professor</a>
             
          <a class="navbar-brand" href="tela-meuCurso.html">Meus Cursos</a>
         

          </ul>
          </ul>
        </div><!--/.nav-collapse -->
      </div>
    </nav>
  <br>  <br>
  




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
    
      <hr/>

 <form action="buscaTarefa">
<div class="text-center">
Pesquisar Tarefa: <input type="text" size="60" placeholder="nome do curso"  name="temaTarefa"/> 

<input type="hidden" name="acao" value="temaTarefa">		
<button input type="submit"  value="Pesquisar">Pesquisar</button>	
 
</div>
</form>       
        

           
</div>
      <div class="row">
      <div class="text-center col-sm-12">
        <h3>Atualizar Tarefa</h3>
      </div>
   
   </div> <!--fim da row -->

 <form action="buscaTarefa">  
       
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
                   <input type="text" name="dtInicioTarefa" value=<%=dtInicioTarefa%>  id="inputDtInicioTarefa">
                 </div>
  

                <label for="inputDtTerminoTarefa" class="col-sm-1 control-label">Data Término:</label>
                   <div class="col-sm-5">
                   <input type="text" name="dtTerminoTarefa" value=<%=dtTerminoTarefa%> id="inputDtTerminoTarefa" >
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
                
                
                
        <form action="buscaTarefa">  
        <a  href= "tela-updateTarefa.jsp" class="btn btn-primary" target="_self">Limpar</a>  
        </form> 
        
          <input type="hidden" name="acao" value="Atualizar">
      <input type="hidden" name="acao" value="Atualizar">
	<input type="submit" onclick="funcao1()"  value="Atualizar" class="btn btn-primary" name="atualizarTarefa" formaction="atualizarTarefa"/>
 

        <input type="hidden" name="acao" class="btn btn-primary"/>
	    <a href="excluirTarefa?logica=ExcluirTarefaServlet&temaTarefa=${param.temaTarefa}"class="btn btn-primary" onclick="funcao2()"  target="_self">Excluir</a>

      
      </div>
    

  </div>  <!-- fim da row -->

  <br>
  <br>

   </form>

        
</div>
    

    <!-- jQuery (necessary for Bootstrap's JavaScript plugins) -->
    <script src="https://code.jquery.com/jquery-1.12.4.min.js" integrity="sha384-nvAa0+6Qg9clwYCGGPpDQLVpLNn0fRaROjHqs13t4Ggj3Ez50XnGQqc/r8MhnRDZ" crossorigin="anonymous"></script>
    <!-- Include all compiled plugins (below), or include individual files as needed -->
    <script src="bootstrap/js/bootstrap.min.js" ></script>
    <script src="javascript/tela-updateTarefa.js"></script>
  </body>
</html>

<script>
function funcao1(){
	
	alert("Tarefa atualizada com sucesso");
	
};

function funcao2(){
	
	alert("Tarefa excluida com sucesso");
	
};
</script>