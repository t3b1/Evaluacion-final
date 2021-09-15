<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    <%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
    <%@ taglib prefix="sec"
    uri="http://www.springframework.org/security/tags"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Listar Usuario</title>
</head>
<body>

<sec:authentication property="principal.Authorities" var="user" scope="request" />
      <% 
      if (request.getAttribute("user") != null) {
          String userTipo = request.getAttribute("user").toString();
          if (userTipo.equals("[ADMIN]")){
        	  System.out.println("admin");
          
       %>
       <%@ include file="menuAdmin.jsp" %>
       <%
        } else if(userTipo.equals("[PROFESIONAL]")){
         %>
        <%@ include file="menuProfesional.jsp" %>
        <%
        System.out.println("profesional");
        } else if (userTipo.equals("[CLIENTE]")){
        %>
        <%@ include file="menuCliente.jsp" %>
        <%
        System.out.println("admin");
        }
          }
          %>

       <section>
        <div class="container">
            <div class="row">
                <div class="col-12">
                    <h3>Listado de usuarios</h3>
                </div>
            </div>
            <div class="row">
                <div class="col-12">
                    <table class="table table-striped">
                        <thead>
                            <tr>
                                <th scope="col">RUN </th>
                                <th scope="col">Nombre</th>
                                <th scope="col">Apellidos</th>
                                <th scope="col">Tipo de usuario</th>
                                <th scope="col">Acciones</th>
                            </tr>
                        </thead>

                        <tbody>
                            <tr>
                               <c:forEach var="u" items="${Usuario}">
				               <tr>
					              
					              <td><c:out value="${u.getRunusuario()}"></c:out>
					              <td><c:out value="${u.getUsunombre()}"></c:out></td>
					              <td><c:out value="${u.getUsuapellido()}"></c:out></td>
					              <td><c:out value="${u.getTipousuario()}"></c:out></td>
					              

				                </tr>
			                   </c:forEach>
                           </tr>
                        </tbody>

                    </table>
                </div>
            </div>
        </div>
    </section> 

</body>
</html>