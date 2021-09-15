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
<title>check list</title>
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
                    <h3>Chequeos</h3>
                </div>
            </div>
            <div class="row">
                <div class="col-12">
                    <table class="table table-striped">
                        <thead>
                            <tr>
                                <th scope="col">Nombre </th>
                                <th scope="col">Descripción</th>
                                <th scope="col">Seleccione</th>
                            </tr>
                        </thead>

                        <tbody>
                            <tr>
                                <td class="inif">chequeo 1</td>
                                <td>chequeo normal</td>
                                <td><input type="checkbox" name="chequeo 1" id=""></td>
                            </tr>
                            <tr>
                                <td class="inif">chequeo 2</td>
                                <td>chequeo medio</td>
                                <td><input type="checkbox" name="chequeo 2" id=""></td>
                            </tr>
                            <tr>
                                <td class="inif">chequeo 3</td>
                                <td>chequeo avanzado</td>
                                <td><input type="checkbox" name="chequeo 3" id=""></td>
                            </tr>
                        </tbody>

                    </table>
                </div>
            </div>
            <div class="row">
                <div class="col-12">
                    <button id="btn-ver-det" type="button" class="btn btn-dark" onclick="detalle()">Ver detalle</button>
                    <!-- <input type="button" value="Ver detalle" onclick="detalle()"> -->
                </div>
            </div>
            <div class="row">
                <div class="col-12">
                    <div id="detalle">

                    </div>
                </div>
            </div>
        </div>
    </section>

</body>
</html>