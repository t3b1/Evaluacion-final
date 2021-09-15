<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    <%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
    <%@ taglib prefix="sec"
    uri="http://www.springframework.org/security/tags"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <script src="https://kit.fontawesome.com/8d20d6c8c4.js" crossorigin="anonymous"></script>
    <!-- <link rel="stylesheet" href="css/estilos.css"> -->
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-EVSTQN3/azprG1Anm3QDgpJLIm9Nao0Yz1ztcQTwFspd3yD65VohhpuuCOmLASjC" crossorigin="anonymous">
    <link
	href="${pageContext.request.contextPath}/resources/css/estilo.css"
	rel="stylesheet" type="text/css">
<title>Lista Capacitacion</title>
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
                    <h3>Listado de capacitaciones</h3>
                </div>
            </div>
            <div class="row">
                <div class="col-12">
                    <table class="table table-striped">
                        <thead>
                            <tr>
                                <th scope="col">ID </th>
                                <th scope="col">Fecha</th>
                                <th scope="col">Hora</th>
                                <th scope="col">Rut Cliente</th>
                            </tr>
                        </thead>
                        <tbody>
                            <c:forEach var="c" items="${Capacitacion}">
				               <tr>
					              
					              <td><c:out value="${c.getIdcapacitacion()}"></c:out>
					              <td><c:out value="${c.getCapfecha()}"></c:out></td>
					              <td><c:out value="${c.getCaphora()}"></c:out></td>
					              <td><c:out value="${c.getCliente_rutcliente()}"></c:out></td>
					              

				               </tr>
			              </c:forEach>
                        </tbody>
                    </table>
                </div>
            </div>
        </div>
    </section>
    <div class="container">
    <footer class="py-5">
      <div class="row">
        <div class="col-2">
          <h5 class="text-primary">Section</h5>
          <ul class="nav flex-column">
            <li class="nav-item mb-2"><a href="#" class="nav-link p-0 text-muted">Home</a></li>
            <li class="nav-item mb-2"><a href="#" class="nav-link p-0 text-muted">Features</a></li>
            <li class="nav-item mb-2"><a href="#" class="nav-link p-0 text-muted">Pricing</a></li>
            <li class="nav-item mb-2"><a href="#" class="nav-link p-0 text-muted">FAQs</a></li>
            <li class="nav-item mb-2"><a href="#" class="nav-link p-0 text-muted">About</a></li>
          </ul>
        </div>
  
        <div class="col-2">
          <h5>Section</h5>
          <ul class="nav flex-column">
            <li class="nav-item mb-2"><a href="#" class="nav-link p-0 text-muted">Home</a></li>
            <li class="nav-item mb-2"><a href="#" class="nav-link p-0 text-muted">Features</a></li>
            <li class="nav-item mb-2"><a href="#" class="nav-link p-0 text-muted">Pricing</a></li>
            <li class="nav-item mb-2"><a href="#" class="nav-link p-0 text-muted">FAQs</a></li>
            <li class="nav-item mb-2"><a href="#" class="nav-link p-0 text-muted">About</a></li>
          </ul>
        </div>
  
        <div class="col-2">
          <h5>Section</h5>
          <ul class="nav flex-column">
            <li class="nav-item mb-2"><a href="#" class="nav-link p-0 text-muted">Home</a></li>
            <li class="nav-item mb-2"><a href="#" class="nav-link p-0 text-muted">Features</a></li>
            <li class="nav-item mb-2"><a href="#" class="nav-link p-0 text-muted">Pricing</a></li>
            <li class="nav-item mb-2"><a href="#" class="nav-link p-0 text-muted">FAQs</a></li>
            <li class="nav-item mb-2"><a href="#" class="nav-link p-0 text-muted">About</a></li>
          </ul>
        </div>
  
        <div class="col-4 offset-1">
         <img src="/img/Logo EMAPESA.PNG"  class="img-fluid border rounded-3 shadow-lg mb-4" alt="Example image" width="900" height="500" loading="lazy">
        </div>
      </div>
  
      <div class="d-flex justify-content-between py-4 my-4 border-top">
        <p>Copyright 2021 &copy; Mr. Segurito</p>
        <ul class="list-unstyled d-flex">
          <li class="ms-3"><a class="link-dark" href="#"><svg class="bi" width="24" height="24"><use xlink:href="#twitter"/></svg></a></li>
          <li class="ms-3"><a class="link-dark" href="#"><svg class="bi" width="24" height="24"><use xlink:href="#instagram"/></svg></a></li>
          <li class="ms-3"><a class="link-dark" href="#"><svg class="bi" width="24" height="24"><use xlink:href="#facebook"/></svg></a></li>
        </ul>
      </div>
    </footer>
  </div>
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.6.0/jquery.min.js"></script>
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/js/bootstrap.bundle.min.js" integrity="sha384-MrcW6ZMFYlzcLA8Nl+NtUVF0sA7MsXsP1UyJoMp4YLEuNSfAP+JcXn/tWtIaxVXM" crossorigin="anonymous"></script>

</body>
</html>