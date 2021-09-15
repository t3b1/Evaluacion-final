<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@ taglib prefix="sec"
    uri="http://www.springframework.org/security/tags"%>
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
    <link href="/css/estilo.css" rel="stylesheet">
<link
	href="${pageContext.request.contextPath}/resources/css/estilo.css"
	rel="stylesheet" type="text/css">
<title>Crear Usuario</title>
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
                <div class="col-sm-12 col-lg-6">
                    <h3>Crear usuario</h3>
                    <form action="${pageContext.request.contextPath}/crearUsuario" method="post">

                        <div class="mb-3">
                            <label for="runusuario" class="form-label">Run</label>
                            <input class="form-control" name="runusuario" id="runusuario" type="number" placeholder="Ej: 11111111-1">
                        </div>

                        <div class="mb-3">
                            <label for="usunombre" class="form-label">Nombre</label>
                            <input class="form-control" name="usunombre" id="usunombre" type="text" placeholder="Ej: brian felipe">
                        </div>
                        <div class="mb-3">
                            <label for="usuapellido" class="form-label">Apellido</label>
                            <input class="form-control" name="usuapellido" id="usuapellido" type="text">
                        </div>

                        <div class="mb-3">
                            <select class="form-select" name="tipousuario" aria-label="Default select example">
                            <option value="0" selected>Seleccione tipo de usuario</option>
                            <option value="1">Administrador</option>
                            <option value="2">profesional</option>
                            <option value="3">cliente</option>
                          </select>
                        </div>

                        <button type="submit" class="btn btn-success">Crear</button>
                    </form>
                </div>
                <div class="contenedor-img col-sm-12 col-lg-6">
                    <img src="https://www.ipnie.com/wp-content/uploads/2021/02/profile.jpeg" alt="" srcset="">
                </div>
            </div>
        </div>
    </section>

</body>
</html>