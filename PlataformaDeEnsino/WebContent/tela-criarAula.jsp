<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
  <head>
    <meta charset="utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <!-- The above 3 meta tags *must* come first in the head; any other head content must come *after* these tags -->
    <title>Criar Aula</title>

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
          
           <a class="navbar-brand" href="tela-homeProfessor.jsp">Home</a>
      

           <a class="navbar-brand" href="tela-meuCurso.jsp">Meus Cursos</a>
         
         <a class="navbar-brand" href="tela-AulasDoCurso.jsp">Aulas</a>
    
        <li class="active"><a href="">Criar Aula</a></li>
          

          </ul>
          </ul>
        </div><!--/.nav-collapse -->
      </div>
    </nav>
  <br>  <br>
    <div class="container">
    

<div class="page-header">
     <div class="row">
       <div class="col-sm-10 text-center">
          <p>NOME: NEWDECYR CARLOS MOTTA JÚNIOR       RF: 32953</p>
          <p>CARGO / FUNÇÃO: PROFESSOR DE MATEMÁTICA - NÍVEL II</p>
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
      <div class="row">
      <div class="text-center col-sm-12">
        <h3>Criar Aula</h3>
      </div>
   
   </div> <!--fim da row -->


 <form action="CriarAula">     
 
       <div class="row">

  <div class="form-group">
  
                   <label for="inputTemaAula" class="col-sm-1 control-label">Tema:</label>
                     <div class="col-sm-11">
                        <input type="text" name="temaAula" class="form-control"  id="inputTemaAula">
                     </div>

          
        
  </div>

     
 </div> <!-- fim da row-->

 <br>
      
       <div class="row">

          <div class="form-group">

             <label for="inputConteudoAula" class="col-sm-1 control-label">Conteúdo:</label>
              <div class="col-sm-11">
            <textarea name="conteudoAula" id="inputConteudoAula" class="form-control"  rows="10" cols="12" required>
                
               </textarea>
             </div>

            
          </div>
          
        </div> <!--fim da row -->

        <br>
      
       <div class="row">

          <div class="form-group">

             <label for="inputObjetivoAula" class="col-sm-1 control-label">Objetivo:</label>
              <div class="col-sm-11">
            <textarea name="objetivoAula" id="inputObjetivoAula" class="form-control"  rows="10" cols="12" required>
                
               </textarea>
             </div>

            
          </div>
          
        </div> <!--fim da row -->

 <br>
 <br>

 <div class="row">

      <div class="form-group">

                <label for="inputDtInicioAula" class="col-sm-1 control-label">Data Início:</label>
                    <div class="col-sm-5">
                   <input type="date"  name="dtInicioAula" id="inputDtInicioAula">
                 </div>
    

                <label for="inputDtTerminoAula" class="col-sm-1 control-label">Data Término:</label>
                   <div class="col-sm-5">
                   <input type="date" name="dtTerminoAula" id="inputDtTerminoAula" >
                 </div>
             
  </div>

     
 </div> <!-- fim da row-->


  <br>
      
       <div class="row">

          <div class="form-group">

             <label for="inputAvaliacaoAula" class="col-sm-1 control-label">Avaliação:</label>
              <div class="col-sm-11">
            <textarea name="avaliacaoAula" id="inputAvaliacaoAula" class="form-control"  rows="10" cols="12" required>
                
               </textarea>
             </div>

            
          </div>
          
        </div> <!--fim da row -->


        <br>
      
       <div class="row">

          <div class="form-group">

             <label for="inputBibliografiaAula" class="col-sm-1 control-label">Referência Bibliográfica:</label>
              <div class="col-sm-11">
            <textarea name="bibliografiaAula" id="inputBibliografiaAula" class="form-control"  rows="10" cols="12" required>
                
               </textarea>
             </div>

            
          </div>
          
        </div> <!--fim da row -->

         <br>
         <br>

          <div class="row">

      <div class="form-group">

                <label for="inputMaterialAula" class="col-sm-1 control-label">Material:</label>
                   <div class="col-sm-11">
                     <input type="file" name="materialAula" id="inputMaterialAula" >
                    </div>
                  </div>
           </div> <!-- fim da row -->

           <br>
           <br>

            <div class="row">

      <div class="form-group">

                <label for="inputVideoAula" class="col-sm-1 control-label">Vídeo:</label>
                   <div class="col-sm-11">
                     <input type="text" name="videoAula" class="form-control" id="inputVideoAula" placeholder="Insira o link do video aqui" >
                   
                    </div>
                  </div>
           </div> <!-- fim da row -->

           <br>
           <br>

  <div class="row">

     <div class="text-center">

        <button class="btn btn-primary" onclick="limpar();">Limpar</button>
        <button class="btn btn-primary" onclick="limpar();">Editar</button>
        <button class="btn btn-primary" onclick="limpar();">Excluir</button>

            	
<button type="submit"  class="btn btn-primary" onclick="funcao1()">Criar</button>

        
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
   
  </body>
</html>

<script>
function funcao1(){
	
	alert("Aula criada com sucesso");
	
};
</script>