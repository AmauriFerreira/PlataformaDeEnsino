
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt" %>

<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
 <!doctype html>
  
  <html lang="pt-br">
  
    <head>
      <meta charset="utf-8">
      <meta http-equiv="X-UA-Compatible" content="IE=edge">
      <meta name="viewport" content="width=device-width, initial-scale=1">
      <!-- The above 3 meta tags *must* come first in the head; any other head content must come *after* these tags -->
      <title>Dados-Pessoais</title>


    <link rel="stylesheet" href="bootstrap/css/bootstrap.min.css">
      <link rel="stylesheet" type="text/css" href="css/style-admin.css">
    
    </head>
  <h:head>
    <h:outputStylesheet library="css" name="bootstrap.min.css" /> <!-- JÁ TINHA -->
    <h:outputStylesheet library="css" name="style-admin.css" /> <!-- ADICIONAMOS AGORA -->
</h:head>



<h:body>
    <nav class="navbar navbar-inverse navbar-fixed-top">
      <div class="container">
        <div class="navbar-header">
          <a class="navbar-brand" href="ListaContatos.jsp">Home</a>
        </div>
        <div id="navbar" class="collapse navbar-collapse">
          <ul class="nav navbar-nav">
          
          
        <a class="navbar-brand" href="CriarCurso.html">Criar curso</a>
          
        <li class="active"><a href="">Cadastro de Professor</a></li>
             
          </ul>
          </ul>
        </div><!--/.nav-collapse -->
      </div>
    </nav>
 
      <div class="container">
         <div class="page-header">
          <h2>Dados Pessoais:</h2>
           
         </div>

         <form>
           


<div class="row">

  <div class="form-group">
                   <label for="inputNome" class="col-sm-1 control-label">Nome:</label>
                     <div class="col-sm-11">
                        <input type="text" name="nome" class="form-control" id="inputNome" >
                     </div>

          
        
  </div>

     
 </div> <!-- fim da row-->

<br>

  <br>

           <div class="row">

              <div class="form-group"> 
                <label for="inputNomeMae" class="col-sm-1 control-label">Nome da Mãe:</label>
                  <div class="col-sm-5">
                    <input type="text"  id="inputNomeMae"class="form-control" >
                 </div>
   
                   <label for="inputDataNacimento" class="col-sm-1 control-label">Data de Nascimento:</label>
               
                 <div class="col-sm-5">
                   <input type="date" id="inputDataNacimento" name="DataNacimento">
                 </div>
    </div> 
           </div> <!-- fim da row--> 

<br>
           <div class="row">

        <div class="form-group"> 
                <label for="inputCPF" class="col-sm-1 control-label">CPF:</label>
                  <div class="col-sm-3">
                    <input type="text"  id="inputCPF"class="form-control" >
                  </div>
    
                  <label for="phone" class="col-sm-1 control-label">Telefone Fixo:</label>
                    <div class="col-sm-3">
                      <input type="tel" id="phone" name="phone" placeholder="xx-xxxx-xxxx" pattern="[0-9]{2}-[0-9]{4}-[0-9]{4}" class="form-control">
                    </div>

      
              <label for="phoneCelular" class="col-sm-1 control-label">Telefone Celular:</label>
            <div class="col-sm-3">
              <input type="tel" id="phoneCelular" name="phone" placeholder="xx-xxxxx-xxxx" pattern="[0-9]{2}-[0-9]{5}-[0-9]{4}" class="form-control">
            </div>

        </div> 

             </div> <!--fim da row-->

<br>

          <div class="row">
            <div class="form-group"> 
              <label for="inputCEP" class="col-sm-1 control-label">CEP:</label>
                <div class="col-sm-3">
                  <input type="text" id="inputCEP" class="form-control">
                </div>
                <div class="col-sm-2">
                    <a href="http://www.buscacep.correios.com.br/sistemas/buscacep/buscaCepEndereco.cfm" class="btn btn-primary" target="_blank">pesquisar</a>  
              
                  </div>
            </div>

       </div> <!--fim da row-->

<br>
        
        <div class="row">
          
      <div class="form-group">
            <label for="inputLogradouroTipo" class="col-sm-1 control-label">Tipo:</label>
         <div class="col-sm-2">
             <select class="form-control"  id="inputLogradouroTipo">
                  <option value="1">1</option>
                  <option value="2">2</option>
                  <option value="3">3</option>
                  <option value="4">4</option>
                  <option value="5">5</option>
             </select>
         </div>

         <label for="inputLogradouroNome" class="col-sm-1 control-label">Nome do Logradouro:</label>
               <div class="col-sm-6">
                 <input type="text"  id="inputLogradouroNome" class="form-control" >
               </div>

         <label for="inputLogradouroNumero" class="col-sm-1 control-label">Número:</label>
               <div class="col-sm-1">
                 <input type="text"  id="inputLogradouroNumero" class="form-control" >
               </div>
       </div>

        </div> <!--fim da row-->

<br>
<div class="row">

  <div class="form-group">
                   <label for="inputBairro" class="col-sm-1 control-label">Bairro:</label>
                     <div class="col-sm-5">
                        <input type="text"  id="inputBairro"class="form-control" >
                     </div>

          
               <label for="inputComplemento" class="col-sm-1 control-label">Complemento:</label>
      <div class="col-sm-5">
                  <input type="text"  id="inputComplemento"class="form-control" >
      </div>
  </div>

     
 </div> <!-- fim da row-->

 <br>

 <div class="row">
    <div class="form-group"> 
     
          
          <label for="inputCidade" class="col-sm-1 control-label">Cidade:</label>

         <div class="col-sm-7">
           <input list="browsers" id="inputCidade" class="form-control">
            <datalist id="browsers">
              <option value="Internet Explorer"></option>
              <option value="Firefox"></option>
              <option value="Chrome"></option>
              <option value="Opera"></option>
              <option value="Safari"></option>
           </datalist>

        </div>

         <label for="inputCidade" class="col-sm-1 control-label">Estado:</label>

           <div class="col-sm-3">
             <select class="form-control"  id="inputCidade">
                  <option value="1">1</option>
                  <option value="2">2</option>
                  <option value="3">3</option>
                  <option value="4">4</option>
                  <option value="5">5</option>
             </select>

         </div>

     </div>

           </div> <!--fim da row-->




 

 <br>
     <div class="row">
        <div class="form-group">
          <label for="inputEmail" class="col-sm-1 control-label">Login:</label>
 
             <div class="input-group col-sm-5"> 
  <input type="email" class="form-control " id="inputEmail"   placeholder="Digite seu email:" aria-describedby="basic-addon2">
                <span class="input-group-addon" id="basic-addon2">@exemplo.com</span>
            
            </div> 

         </div>  

 
      <label for="inputPassword" class="col-sm-1 control-label">Senha:</label>
   
       <div class="input-group col-sm-5" >
          <input type="password" id="inputPassword" class="form-control" placeholder="Digite sua senha:">
            <span class="input-group-btn">
               <button class="btn btn-default" type="button" data-container="body" data-toggle="popover" data-placement="top" data-content="A senha deve ter no mínimo 8 dígitos e satisfazer o seguinte critério: Uma letra maiúscula, uma letra minúscula, um caracter especial e um número">
                   <span class="glyphicon glyphicon-question-sign"></span>
               </button>
           </span>

        </div>
    
  </div> <!--fim da row-->

  <br> 
  <br> 


  <div class="row">

     <div class="text-center">

    
         <a href="CadastroProfissao.html" class="btn btn-primary" target="_self">próximo</a>  

      </div>
    
  </div>  <!-- fim da row -->


       
             
         </form>


      </div>

 
         
      

      <!-- jQuery (necessary for Bootstrap's JavaScript plugins) -->
      <script src="https://code.jquery.com/jquery-1.12.4.min.js" integrity="sha384-nvAa0+6Qg9clwYCGGPpDQLVpLNn0fRaROjHqs13t4Ggj3Ez50XnGQqc/r8MhnRDZ" crossorigin="anonymous"></script>
      <!-- Include all compiled plugins (below), or include individual files as needed -->
      <script src="bootstrap/js/bootstrap.min.js" ></script>


       <!-- Função do Popover -->
  <script type="text/javascript">
    $(function () {
  $('[data-toggle="popover"]').popover()
})
  </script>
<c:import	url="rodape.jsp"/>
 </h:body>

  </html>