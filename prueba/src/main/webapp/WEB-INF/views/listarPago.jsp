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
<title>Listado Pago</title>
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
                    <h3>Listado de pagos</h3>
                </div>
            </div>
            <div class="row">
                <div class="col-12">

                </div>
            </div>




            <div id="cont-nuevo-pago">
                <a href="crearpago.html"> <button type="button" class="btn btn-link"><i class="far fa-plus-square"></i> Crear Pago</button></a>
            </div>
            <table class="table table-striped">
                <thead>
                    <tr>
                        <th scope="col">ID Pago </th>
                        <th scope="col">Mes</th>
                        <th scope="col">Año</th>
                        <th scope="col">Rut Cliente</th>
                    </tr>
                </thead>

                <tbody>
                   <c:forEach var="p" items="${Pago}">
				               <tr>
					              
					              <td><c:out value="${p.getIdpago()}"></c:out>
					              <td><c:out value="${p.getPagmes()}"></c:out></td>
					              <td><c:out value="${p.getPagano()}"></c:out></td>
					              <td><c:out value="${p.getCliente_rutcliente()}"></c:out></td>
					              

				               </tr>
			              </c:forEach>
                </tbody>

            </table>

        </div>
    </section>
    

</body>
</html>