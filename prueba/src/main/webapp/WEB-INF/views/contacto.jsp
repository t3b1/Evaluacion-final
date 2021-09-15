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
    <link
	href="${pageContext.request.contextPath}/resources/css/estilo.css"
	rel="stylesheet" type="text/css">
<title>Contacto</title>
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
                    <h3>Contacto</h3>
                    <form action="">
                        <div class="mb-3">
                            <label for="nombre" class="form-label">Nombre</label>
                            <input class="form-control" id="nombre" type="text" placeholder="Ej: Brian Guzmán">
                        </div>

                        <div class="mb-3">
                            <label for="email" class="form-label">Correo</label>
                            <input type="email" class="form-control" id="email" placeholder="brian@awakelab.com">
                        </div>
                        <label for="telefono" class="form-label">Teléfono</label>
                        <input class="form-control" id="telefono" type="tel" placeholder="Ej: 9 87654321">
                        <div class="mb-3">
                            <label for="mensaje" class="form-label">Mensaje</label>
                            <textarea class="form-control" id="mensaje" rows="3"></textarea>
                        </div>
                        <button type="button" class="btn btn-success">Enviar</button>
                    </form>
                </div>
                <div class="contenedor-img col-sm-12 col-lg-6">
                    <img src="https://www.ctisoluciones.com/sites/default/files/import/article/2018/05/callCenter.jpg" alt="" srcset="">
                </div>
            </div>

        </div>
    </section>
</body>
</html>