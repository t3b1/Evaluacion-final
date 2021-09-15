<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@ taglib prefix="sec"
    uri="http://www.springframework.org/security/tags"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<meta name="viewport" content="width=device-width, initial-scale=1">
    <meta name="description" content="">
    <meta name="author" content="Mark Otto, Jacob Thornton, and Bootstrap contributors">
    <meta name="generator" content="Hugo 0.87.0">
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.1.1/dist/css/bootstrap.min.css" rel="stylesheet" 
    integrity="sha384-F3w7mX95PdgyTmZZMECAngseQB83DfGTowi0iMjiWaeVhAn4FJkqJByhZMI3AhiU" crossorigin="anonymous">
    <link
	href="${pageContext.request.contextPath}/resources/css/estilo.css"
	rel="stylesheet" type="text/css">
<title>Listar Visita</title>
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
                    <h3>Listado de visitas</h3>
                </div>
            </div>
            <div class="row">
                <div class="col-12">
                    <table id="list-visitas" class="table table-striped">
                        <thead>
                            <tr>
                                <th scope="col">ID </th>
                                <th scope="col">Fecha</th>
                                <th scope="col">Hora</th>
                                <th scope="col">Rut Cliente</th>
                                <th scope="col">Listado chequeos</th>
                            </tr>
                        </thead>

                        <tbody>
                             <c:forEach var="v" items="${Visita}">
				               <tr>
					              
					              <td><c:out value="${v.getIdvisita()}"></c:out>
					              <td><c:out value="${v.getVisfecha()}"></c:out></td>
					              <td><c:out value="${v.getVishora()}"></c:out></td>
					              <td><c:out value="${v.getCliente_rutcliente()}"></c:out></td>
                                  <td><a href="${pageContext.request.contextPath}/responderCheck" class="text-darck" onclick="return confirm(mensaje())"><i class="fas fa-eye"></i>checklist</a></td>

                               </tr>
                             </c:forEach>
                        </tbody>

                    </table>
                </div>
            </div>
            </div>

    </section>

</body>
</html>