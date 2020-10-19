
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt" %>



<%@	page import="java.util.*,
  br.com.jdc.Cadastro.dao.*,br.com.jdbc.Modelo.*,
 br.com.jdbc.dao.*"	%>

<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    


<!DOCTYPE html>
<html>

 <h:head>
    <h:outputStylesheet library="css" name="bootstrap.min.css" /> <!-- JÁ TINHA -->
    <h:outputStylesheet library="css" name="style-admin.css" />      <!-- ADICIONAMOS AGORA -->
</h:head>

<h:body>
    <nav class="navbar navbar-inverse navbar-fixed-top">
      <div class="container">
        <div class="navbar-header">
          
        </div>
         <div id="navbar" class="collapse navbar-collapse">
          <ul class="nav navbar-nav">
           <ul class="nav navbar-nav">
           <a class="navbar-brand" href="ListaContatos.jsp">Home</a>
           <a class="navbar-brand" href="CriarCurso.html">Criar Curso</a>
          
        <a class="navbar-brand" href="CadastroDeProfessor.html">Cadatrar Professor</a>
          
          </ul>
          </ul>
        </div><!--/.nav-collapse -->
      </div>
    </nav>

<br /><br />
<div class="text-center">
<h2>Administração do Sistema</h2>
</div>
<hr />
 <link rel="stylesheet" href="bootstrap/css/bootstrap.min.css">
    <link rel="stylesheet" type="text/css" href="css/estiloLogin.css">



<table>		
			<%
				HttpSession sessao = request.getSession();
				
			String nome = (String)sessao.getAttribute("usuarioLogadoNome");
			String email = (String)sessao.getAttribute("usuarioLogadoEmail");
			String senha= (String)sessao.getAttribute("usuarioLogadoSenha");
				        UsuarioDao	dao	=	new	 UsuarioDao();
						List<UsuarioNaoTem>	usuarios	=	dao.lista();
						
						String nomeCoordenador = (String)sessao.getAttribute("nomeCoordenador");
						String nomeProfessor = (String)sessao.getAttribute("nomeProfessor");
						String nomeCurso = (String)sessao.getAttribute("nomeCurso");
						String cargaHoraria = (String)sessao.getAttribute("cargaHoraria");
						String dtInicio = (String)sessao.getAttribute("dtInicio");
						String requisitos = (String)sessao.getAttribute("requisitos");
						String ementaCurso = (String)sessao.getAttribute("ementaCurso");
						
						//CriarCursoDao	dao2	=	new	CriarCursoDao();
						//List<Curso> listaDados = new ArrayList<Curso>();
			%>
			
		
	
	<div class="text-center">		
<tr>
 
<label for="inputEmail" class="col-sm-3 control-label">Nome:  <%=nome%></label>
							
<label for="inputEmail" class="col-sm-3 control-label">Email: <%=email%> </label>

     
	  <div class="row">
  		
</div>
	

</tr>
	</div>						
	
		</table>

 <div class="container">
         
         <div class="page-header">

         
           
         </div>

         
<form action="buscaCurso">

          <div class="row">

      <div class="form-group">

                <label for="inputCoordenador" class="col-sm-2 control-label">Nome do Coordenador:</label>
                   <div class="col-sm-4">
                     <input type="text" name="nome" value=<%=nomeCoordenador%> id="inputCoordenador"class="form-control" >
                    
                    </div>

                <label for="inputProfessor" class="col-sm-2 control-label">Nome do Professor:</label>
                  <div class="col-sm-4">
                     <input type="text" name="nome" value=<%=nomeProfessor%> id="inputProfessor"class="form-control" >
                  </div>
  </div>

     
 </div> <!-- fim da row-->
<br>

 <div class="row">

      <div class="form-group">

                <label for="inputNomeCurso" class="col-sm-1 control-label">Nome do Curso:</label>
                   <div class="col-sm-4">
                     <input type="text" name="nome" value=<%=nomeCurso%>  id="inputNomeCurso"class="form-control" >
                    </div>

                <label for="inputCargaHoraria" class="col-sm-1 control-label">Carga Horária:</label>
                  <div class="col-sm-2">
                     <input type="text" name="cargaHoraria" value=<%=cargaHoraria%>  id="inputCargaHoraria"class="form-control" >
                  </div>

                    <label for="inputDataInicio" class="col-sm-1 control-label">Data Início:</label>
                    <div class="col-sm-3">
                   <input type="text" name="dtInicio"  value=<%=dtInicio%> id="inputDataInicio" >
                   
                 </div>
  </div>

     
 </div> <!-- fim da row-->

  <br><br><br>

        <div class="row">

          <div class="form-group">

             <label for="requisitos" class="col-sm-1 control-label">Requisitos:</label>
              <div class="col-sm-11">
<hr />       
    <p>
        <%=requisitos%>
    </p>
             
             </div>

            
          </div>
          
        </div> <!--fim da row -->

  <br><br><br><br>
        <div class="row">

          <div class="form-group">

             <label for="ementaCurso" class="col-sm-2 control-label">Ementa do Curso:</label>
 <hr />
<p>
<%=ementaCurso%>
</p>
             </div>

            
          </div>
          
        </div> <!--fim da row -->
</form>
          <br><br><br><br>


</h:body>
     <div class="text-center">
     <input type="hidden" name="acao" value="Curso">		
<button  input type='reset'   value="Cadastrar"  class="btn btn-primary" target="_self">Limpar</button>
         <a href="#" class="btn btn-primary" target="_blank">Atualizar</a> 
          <a href="#" class="btn btn-primary" target="_blank">Escluir</a>  
          <a href="mvc?logica=Limpa"class="btn btn-primary" target="_self">Remover</a>
        
      </div>
<c:import	url="rodape.jsp"/>

</html>

<script lang="javascript">

