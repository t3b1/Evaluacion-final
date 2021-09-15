<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Menu</title>
</head>
<body>

<h1 class="visually-hidden">Menu profesional</h1>

  <div class="container">
    <header class="d-flex flex-wrap justify-content-center py-3 mb-4 border-bottom">
      <a href="${pageContext.request.contextPath}/home" class="d-flex align-items-center mb-3 mb-md-0 me-md-auto text-dark text-decoration-none">
        <svg class="bi me-2" width="40" height="32"><use xlink:href="#bootstrap"/></svg>
        <span class="fs-4">Mr. Segurito</span>
      </a>

      <ul class="nav nav-pills">
        <li class="nav-item"><a href="${pageContext.request.contextPath}/home" class="nav-link active bg-dark" aria-current="page">Home</a></li>
        <li class="nav-item"><a href="${pageContext.request.contextPath}/listarVisita" class="nav-link text-dark">Listado Visista</a></li>
        <li class="nav-item"><a href="${pageContext.request.contextPath}/logout" class="nav-link text-dark">Cerrar Sesion</a></li>
      </ul>
    </header>
  </div>

</body>
</html>