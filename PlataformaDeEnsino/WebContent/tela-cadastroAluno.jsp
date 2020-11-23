
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>

<!DOCTYPE html>
<html>

  <head>
    <meta charset="utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <!-- The above 3 meta tags *must* come first in the head; any other head content must come *after* these tags -->
  
      <title>Dados do aluno</title>


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

        </div>
        <div id="navbar" class="collapse navbar-collapse">
          <ul class="nav navbar-nav">
          
          
                <a class="navbar-brand" href="ListaContatos.jsp">Home</a>
                
                
          <a class="navbar-brand" href="tela-listaDeCurso.jsp">Lista de Curso</a>
           
    
         <li class="active"><a href="">Lista de Aluno</a></li>
         
         
          <a class="navbar-brand" href="tela-listaProfessor.jsp">Lista de Professor</a>
         
         
         <a class="navbar-brand" href="tela-meuCurso.jsp">Área do Professor </a>
             
            
        <a class="navbar-brand" href="tela-meusCursosAluno.jsp">Área do Aluno</a>
            
            
          </ul>
          </ul>
        </div><!--/.nav-collapse -->
      </div>
    </nav>
 
           <div class="container">
         
         <div class="page-header">

          <h2>Dados Pessoais:</h2>
           
         </div>

        
           
 <form action="adicionaAluno"> 

<div class="row">

  <div class="form-group">
                   <label for="inputNome" class="col-sm-1 control-label">Nome:</label>
                     
                     <div class="col-sm-8">
                      <input type="text" name="nome"  class="form-control" id="inputNome" placeholder="Nome:">
                     </div>

                      <label for="inputFoto" class="col-sm-1 control-label">Foto:</label>
                   <div class="col-sm-2">
                     <input type="file" id="inputFoto" name="foto"  required>
                    </div>

        
  </div>

     
 </div> <!-- fim da row-->

<br>

  <br>

           <div class="row">

              <div class="form-group"> 
                <label for="inputNomeMae" class="col-sm-1 control-label">Nome da Mãe:</label>
                  <div class="col-sm-5">
                    <input type="text"  id="inputNomeMae" name="nomeMae"  class="form-control" minlength="3" maxlength="25" pattern="([a-zA-Z]+|[a-zA-Z]+\s[a-zA-Z]+)" required >
                 </div>
   
                   <label for="inputDtNascimento" class="col-sm-1 control-label">Data de Nascimento:</label>
               
                 <div class="col-sm-5">
                   <input type="date" id="inputDtNascimento" name="dtNascimento" required>
                 </div>
    </div> 
           </div> <!-- fim da row--> 

<br>
           <div class="row">

        <div class="form-group"> 
                <label for="inputCpf" class="col-sm-1 control-label">CPF:</label>
                  <div class="col-sm-3">
                    <input type="text"  id="inputCpf"class="form-control" name="cpf" placeholder="xxx.xxx.xxx-xx" minlength="13" maxlength="14" pattern="([0-9]{3}.[0-9]{3}.[0-9]{3}-)([0-9]{2}|[a-zA-Z]+)" required>
                  </div>
    
                  <label for="phone"" class="col-sm-1 control-label">Telefone Fixo:</label>
                    <div class="col-sm-3">
                      <input type="tel" name="telefoneFixo" id="phone" name="phone" placeholder="xx-xxxx-xxxx" minlength="12" maxlength="12"  pattern="[0-9]{2}-[0-9]{4}-[0-9]{4}" class="form-control" required>
                    </div>

      
              <label for="phoneCelular" class="col-sm-1 control-label">Telefone Celular:</label>
            <div class="col-sm-3">
              <input type="tel"  name="telefoneCelular" id="phoneCelular" name="phone" placeholder="xx-xxxxx-xxxx" minlength="13" maxlength="13"   pattern="[0-9]{2}-[0-9]{5}-[0-9]{4}" class="form-control" required>
            </div>

        </div> 

             </div> <!--fim da row-->

<br>

          <div class="row">
            <div class="form-group"> 
              <label for="inputCEP" class="col-sm-1 control-label">CEP:</label>
                <div class="col-sm-3">
                  <input type="text" name="cep" id="inputCEP class="form-control" placeholder="xxxxx-xxx" minlength="9" maxlength="9" pattern="[0-9]{5}-[0-9]{3}" required>
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
             <select class="form-control"  name="tipo" id="inputLogradouroTipo">
                  <option value="1">Rua</option>
                  <option value="2">Avenida</option>
                  <option value="3">Praça</option>
                  <option value="4">Viela</option>
                  <option value="5">Beco</option>
             </select>
         </div>

         <label for="inputLogradouroNome" class="col-sm-1 control-label">Nome do Logradouro:</label>
               <div class="col-sm-6">
                 <input type="text" name="nomeLogradouro" id="inputLogradouroNome" class="form-control" minlength="3" maxlength="25" pattern="([a-zA-Z]+|[a-zA-Z]+\s[a-zA-Z]+)" required>
               </div>

         <label for="inputLogradouroNumero" class="col-sm-1 control-label">Número:</label>
               <div class="col-sm-1">
                 <input type="text"  name="numero" id="inputLogradouroNumero" class="form-control" minlength="1" maxlength="5" pattern="[0-9]+" required>
               </div>
       </div>

        </div> <!--fim da row-->

<br>
<div class="row">

  <div class="form-group">
                   <label for="inputBairro" class="col-sm-1 control-label">Bairro:</label>
                     <div class="col-sm-5">
                        <input type="text"   name="bairro" id="inputBairro" class="form-control" minlength="3" maxlength="25" pattern="([a-zA-Z]+|[a-zA-Z]+\s[a-zA-Z]+|[a-zA-Z]+\s[a-zA-Z]+\s[a-zA-Z])+)" required>
                     </div>

          
               <label for="inputComplemento" class="col-sm-1 control-label">Complemento:</label>
      <div class="col-sm-5">
                  <input type="text"  name="complemento" id="inputComplemento" class="form-control" minlength="4" maxlength="15" )" required>
      </div>
  </div>

     
 </div> <!-- fim da row-->

 <br>

 <div class="row">
    <div class="form-group"> 
     
          
          <label for="inputCidade" class="col-sm-1 control-label">Cidade:</label>

         <div class="col-sm-7">
           <input list="browsers" name="cidade" id="inputComplemento" class="form-control" minlength="4" maxlength="25" pattern="([a-zA-Z]+|[a-zA-Z]+\s[a-zA-Z]+|[a-zA-Z]+\s[a-zA-Z]+\s[a-zA-Z])+)" required>
            <datalist id="browsers">
              <option value="Santo André"></option>
              <option value="São Bernardo do Sul"></option>
              <option value="Diadema"></option>
              <option value="São Caetano do Sul"></option>
              <option value="Campinas"></option>
           </datalist>

        </div>

         <label for="inputEstado" class="col-sm-1 control-label">Estado:</label>

           <div class="col-sm-3">
             <select class="form-control"  name="estado"  id="inputEstado" required>
                  <option value="1">SP</option>
                  <option value="2">RJ</option>
                  <option value="3">MG</option>
                  <option value="4">ES</option>
                  <option value="5">BH</option>
             </select>

         </div>

     </div>

           </div> <!--fim da row-->




 

 <br>
     <div class="row">
        <div class="form-group">
          <label for="inputEmail" class="col-sm-1 control-label">Login:</label>
 
             <div class="input-group col-sm-5"> 
  <input type="email" class="form-control " name="email" id="inputEmail"   placeholder="Digite seu email:" aria-describedby="basic-addon2" minlength="8" maxlength="25" pattern="^([\w-]+(\.[\w-]+)*)@(([\w-]+\.)*\w[\w-]{0,66})\.([a-z]{2,6}(\.[a-z]{2})?)$" required>
                <span class="input-group-addon" id="basic-addon2">@exemplo.com</span>
            
            </div> 

         </div>  

 
      <label for="inputPassword" class="col-sm-1 control-label">Senha:</label>
   
       <div class="input-group col-sm-5" >
          <input type="password" id="inputPassword" name="senha" class="form-control" placeholder="Digite sua senha:" minlength="8" maxlength="25" pattern="^(?=.*[A-Z])(?=.*[a-z])(?=.*[$*&@#])(?=.*\d)[0-9a-zA-Z$*&@#]{8,}$" required>
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

        <button class="btn btn-primary" onclick="limpar();">Limpar</button>
        
                     <input type="hidden" name="acao" value="Aluno">		
<button type="submit"  value="CriarAluno"  class="btn btn-primary" onclick="funcao1()">Criar</button>

        
        
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
    
  
    </h:body>
      <c:import	url="rodape.jsp"/>
  </html>