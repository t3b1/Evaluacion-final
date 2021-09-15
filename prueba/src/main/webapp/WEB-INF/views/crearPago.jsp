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
<title>Crear Pago</title>
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
                    <h3>Crear Pago</h3>

                    <form action="${pageContext.request.contextPath}/crearPago" method="post">

                        <div class="mb-3">
                            <label for="monto" class="form-label">Monto a Pagar</label>
                            <input class="form-control" name="pagmonto" id="pagmonto" type="number" required>
                        </div>

                        <div class="mb-3">
                            <select name="pagano" id="pagano" class="form-select">
                                <option value=0>-- Selecciona un mes --</option>
                                <option value=1>Enero</option>
                                <option value=2>Febrero</option>
                                <option value=3>Marzo</option>
                                 <option value=4>Abril</option>
                                  <option value=5>Mayo</option>
                                   <option value=6>Junio</option>
                                    <option value=7>Julio</option>
                                     <option value=8>Agosto</option>
                                      <option value=9>Septiembre</option>
                                       <option value=10>Octubre</option>
                                        <option value=11>Noviembre</option>
                                         <option value=12>Diciembre</option>
                              </select>
                        </div>

                        <div class="mb-3">
                            <select name="pagmes" id="pagmes" class="form-select">
                                <option value=0>-- Selecciona un mes --</option>
                                <option value=2015>2015</option>
                                <option value=2016>2016</option>
                                <option value=2017>2017</option>
                                 <option value=2018>2018</option>
                                  <option value=2019>2019</option>
                                   <option value=2020>2020</option>
                                    <option value=2021>2021</option>
                                     <option value=2022>2022</option>
                                      <option value=2023>2023</option>
                                       <option value=2024>2024</option>
                                        <option value=2025>2025</option>
                                         <option value=2026>2026</option>
                              </select>
                        </div>

                        <div class="mb-3">
                            <label for="cliente_rutcliente" class="form-label">Rut Cliente</label>
                            <input class="form-control" name="cliente_rutcliente id="cliente_rutcliente" type="text" required>
                        </div>

                        <div class="mb-3">
                            <label for="fecha" class="form-label">Fecha Actual</label>
                            <input id="fecha" class="form-control" type="date" >
                        </div>

                        <button type="submit" class="btn btn-success" onclick="alerta()">Guardar</button>

                    </form>
                </div>
            </div>
     </div>
    </section>

</body>
</html>