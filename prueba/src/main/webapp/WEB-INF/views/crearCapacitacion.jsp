<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    <%@ taglib prefix="sec"
    uri="http://www.springframework.org/security/tags"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<meta name="description" content="">
    <meta name="author" content="Mark Otto, Jacob Thornton, and Bootstrap contributors">
    <meta name="generator" content="Hugo 0.87.0">
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.1.1/dist/css/bootstrap.min.css" rel="stylesheet" 
    integrity="sha384-F3w7mX95PdgyTmZZMECAngseQB83DfGTowi0iMjiWaeVhAn4FJkqJByhZMI3AhiU" crossorigin="anonymous">
<link
	href="${pageContext.request.contextPath}/resources/css/estilo.css"
	rel="stylesheet" type="text/css">
<title>Crear Capacitacion</title>
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
                    <h3>Crear capacitación</h3>
                    <form action="${pageContext.request.contextPath}/crearCapacitacion" method="post">

                        <div class="mb-3">
                            <label for="fecha" class="form-label">Fecha</label>
                            <input class="form-control" id="capfecha" name="capfecha" type="date">
                        </div>

                        <div class="mb-3">
                            <label for="hora" class="form-label">Hora de la capacitación</label>
                            <input class="form-control" id="caphora" name="caphora" type="time" required>
                        </div>

                        <div class="mb-3">
                            <label for="lugar" class="form-label">Lugar</label>
                            <input class="form-control" id="caplugar" name="caplugar" type="text" placeholder="Ej: Sede Awakelab">
                        </div>

                        <div class="mb-3">
                            <label for="duracion" class="form-label">Duración (Minutos)</label>
                            <input class="form-control" id="capduracion" name="capduracion" type="number">
                        </div>

                        <div class="mb-3">
                            <label for="nombreCliente" class="form-label">Rut Cliente</label>
                            <input class="form-control" id="cliente_rutcliente" name="cliente_rutcliente" type="text" placeholder="Ej: 7788997">
                        </div>

                        <button type="submit" class="btn btn-success">Crear</button>

                    </form>

                </div>
                <div class="contenedor-img col-sm-12 col-lg-6">
                    <img src="https://enlinea.santotomas.cl/wp-content/uploads/sites/2/2019/12/capacitacion-inhouse.png" alt="" srcset="">
                </div>
            </div>
        </div>
    </section>
</body>
</html>