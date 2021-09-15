<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
 <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <meta name="description" content="">
    <meta name="author" content="Mark Otto, Jacob Thornton, and Bootstrap contributors">
    <meta name="generator" content="Hugo 0.87.0">
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.1.1/dist/css/bootstrap.min.css" rel="stylesheet" 
    integrity="sha384-F3w7mX95PdgyTmZZMECAngseQB83DfGTowi0iMjiWaeVhAn4FJkqJByhZMI3AhiU" crossorigin="anonymous">
    <link href="/css/estilo.css" rel="stylesheet">
<title>Menu Cliente</title>
</head>
<body>

<h1 class="visually-hidden">Menu Cliente</h1>

  <div class="container">
    <header class="d-flex flex-wrap justify-content-center py-3 mb-4 border-bottom">
      <a href="${pageContext.request.contextPath}/home" class="d-flex align-items-center mb-3 mb-md-0 me-md-auto text-dark text-decoration-none">
        <svg class="bi me-2" width="40" height="32"><use xlink:href="#bootstrap"/></svg>
        <span class="fs-4">Mr. Segurito</span>
      </a>

      <ul class="nav nav-pills">
        <li class="nav-item"><a href="${pageContext.request.contextPath}/home" class="nav-link active bg-dark" aria-current="page">Home</a></li>
        <li class="nav-item"><a href="${pageContext.request.contextPath}/listarCapacitacion" class="nav-link text-dark">Listar Capacitacion</a></li>
        <li class="nav-item"><a href="${pageContext.request.contextPath}/crearCapacitacion" class="nav-link text-dark">Crear Capacitacion</a></li>
        <li class="nav-item"><a href="${pageContext.request.contextPath}/contacto" class="nav-link text-dark">Contacto</a></li>
        <li class="nav-item"><a href="${pageContext.request.contextPath}/logout"" class="nav-link text-dark">Cerrar Sesion</a></li>
      </ul>
    </header>
  </div>
</body>
</html>