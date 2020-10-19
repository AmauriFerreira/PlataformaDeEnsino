
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt" %>



<%@	page import="java.util.*,
  br.com.jdc.Cadastro.dao.*,br.com.jdbc.Modelo.*,
 br.com.jdbc.dao.*"	%>


<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<body>



<table>
<form action="EditarUsuarioServlet">

    <%
				HttpSession sessao = request.getSession();
				
			String nome = (String)sessao.getAttribute("usuarioLogadoNome");
			String email = (String)sessao.getAttribute("usuarioLogadoEmail");
				        UsuarioDao	dao	=	new	 UsuarioDao();
						List<UsuarioNaoTem>	usuarios	=	dao.lista();
						
							
	 %>
	 <h1>Atualizar dados do Usuário   <%=nome%></h1>
     <hr />
	 <tr>
	 Nome: <input type="text" name="nome" value=<%=nome%>><br />
	<hr />
	 Senha: <input type="text" name="senha" value=""><br />
	 <input type="hidden" name="email" value=<%=email%>><br />
	<hr />
	
	
 
		<input type="submit"  value="Editar"/>
		</tr>
		
				<%
						
				%>
	</form>
			
		</table>

	
	</body>
</html>