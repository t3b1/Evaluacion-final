<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ page session="false" %>
<%@ taglib prefix="sec"
    uri="http://www.springframework.org/security/tags"%>
<html>
<head>
     <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <meta name="description" content="">
    <meta name="author" content="Mark Otto, Jacob Thornton, and Bootstrap contributors">
    <meta name="generator" content="Hugo 0.87.0">
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.1.1/dist/css/bootstrap.min.css" rel="stylesheet" 
    integrity="sha384-F3w7mX95PdgyTmZZMECAngseQB83DfGTowi0iMjiWaeVhAn4FJkqJByhZMI3AhiU" crossorigin="anonymous">
     <link
	href="${pageContext.request.contextPath}/resources/css/estilo.css"
	rel="stylesheet" type="text/css">

	<title>Home</title>
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
   <div id="carouselExampleCaptions" class="carousel slide" data-bs-ride="carousel">
  <div class="carousel-indicators">
    <button type="button" data-bs-target="#carouselExampleCaptions" data-bs-slide-to="0" class="active" aria-current="true" aria-label="Slide 1"></button>
    <button type="button" data-bs-target="#carouselExampleCaptions" data-bs-slide-to="1" aria-label="Slide 2"></button>
    <button type="button" data-bs-target="#carouselExampleCaptions" data-bs-slide-to="2" aria-label="Slide 3"></button>
  </div>
  <div class="carousel-inner">
    <div class="carousel-item active">
      <img src="https://images.unsplash.com/photo-1469389335181-2198b4caa734?ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&ixlib=rb-1.2.1&auto=format&fit=crop&w=666&q=80" class="d-block w-100 h-50" alt="...">
      <div class="carousel-caption d-none d-md-block">
        <h1 class="display-4 fw-bold lh-1 mb-3">Mr. Segurito</h1>
        <p>Un Servicio de Calidad, Lo que Nuestro clientes Necesitan</p>  
      </div>
    </div>
    <div class="carousel-item">
      <img src="https://images.unsplash.com/photo-1509390288171-ce2088f7d08e?ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&ixlib=rb-1.2.1&auto=format&fit=crop&w=750&q=80" class="d-block w-100 h-50" alt="...">
      <div class="carousel-caption d-none d-md-block">
        <h2 class="display-4 fw-bold lh-1 mb-3">Conoce Una de las Mejores Empresa del Pais</h2>
        <p>Muchos Clientes ya Estan Satisfecho</p>
      </div>
    </div>
    <div class="carousel-item">
      <img src="https://images.unsplash.com/photo-1496247749665-49cf5b1022e9?ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&ixlib=rb-1.2.1&auto=format&fit=crop&w=753&q=80" class="d-block w-100 h-50" alt="...">
      <div class="carousel-caption d-none d-md-block">
        <h2 class="display-4 fw-bold lh-1 mb-3">Contactanos</h2>
        <p>Para Mayor Informacion no Dudes en Contactar</p>
      </div>
    </div>
  </div>
  <button class="carousel-control-prev" type="button" data-bs-target="#carouselExampleCaptions" data-bs-slide="prev">
    <span class="carousel-control-prev-icon" aria-hidden="true"></span>
    <span class="visually-hidden">Previous</span>
  </button>
  <button class="carousel-control-next" type="button" data-bs-target="#carouselExampleCaptions" data-bs-slide="next">
    <span class="carousel-control-next-icon" aria-hidden="true"></span>
    <span class="visually-hidden">Next</span>
  </button>
</div>
   

  <div class="b-example-divider"></div>

  <div class="container col-xl-10 col-xxl-8 px-4 py-5">
    <div class="row align-items-center g-lg-5 py-5">
      <div class="col-lg-7 text-center text-lg-start">
        <h2 class="display-4 fw-bold lh-1 mb-3">Mr. Segurito, Empresa del Area de Prevencion de Riesgo</h2>
        <p class="col-lg-10 fs-4">Somos una Gran Empresa Enfocada en el Sector Industrial Dando Servicios de Asesoria y Capacitacion Para Nuestro Distintos Clientes. Nos Caracterizamos por ser Una Consultoria de Excelencia la Cual se ve Reflejado en Cada Proyectos que LLevamos a Acabo </p>
      </div>
      <div class="contenedor-img col-sm-12 col-lg-6">
                    <img src="https://www.malagamicro.com/wp-content/uploads/2017/02/servidores.png" alt="">
                </div>
      
    </div>
  </div>
  
  <section>

        <div class="container">
            <div class="row">
                <div class="contenedor-texto col-sm-12 col-lg-6">
                    <h3>¿Cuál es el objetivo del sistema de información?</h3>
                    <p>
                        El objetivo del sistema es permitir a la empresa llevar un orden y control sobre sus trabajadores, ya que es dificil saber que actividad se encuentra realizando cada trabajador si no se cuenta con un registro de dichas actividades.
                    </p>
                </div>
                <div class="contenedor-img col-sm-12 col-lg-6">
                    <img src="http://proikos.pe/wp-content/uploads/2015/11/PLAN-011.png" alt="">
                </div>
            </div>

            <div class="row">
                <div class="contenedor-texto col-sm-12 col-lg-6">
                    <h3>¿Quienes deberían usarlo?</h3>
                    <p>
                        Cualquier empresa de prevención de riesgos que necesite gestionar tanto a sus trabajadores como a sus clientes. El uso de esta plataforma le perimitirá tener un mayor control sobre las actividades (Capacitaciones, visitas a terreno, etc) realizadas por
                        su Empresa, entregando información actualizada en cualquier momento cuando sea requerida.
                    </p>
                </div>
                <div class="contenedor-img col-sm-12 col-lg-6">
                    <img src="https://suonper.com/examples/clima/images/clima_order_2.png" alt="">
                </div>
            </div>

            <div class="row">
                <div class="contenedor-texto col-sm-12 col-lg-6">
                    <h3>¿Qué procesos considera actualmente la plataforma?</h3>
                    <p>
                        Actualmente la plataforma considera el registro de distintos tipos de usuarios (Cliente, Profesional y Administrativo), creación de capacitaciones, etc.
                    </p>
                </div>
                <div class="contenedor-img col-sm-12 col-lg-6">
                    <img src="https://www.malagamicro.com/wp-content/uploads/2017/02/servidores.png" alt="">
                </div>
            </div>
        </div>
    </section>
  
  <div class="container">
  <footer class="d-flex flex-wrap justify-content-between align-items-center py-3 my-4 border-top">
    <p class="col-md-4 mb-0 text-muted">&copy; 2021 Company, Inc</p>

    <a href="/" class="col-md-4 d-flex align-items-center justify-content-center mb-3 mb-md-0 me-md-auto link-dark text-decoration-none">
      <svg class="bi me-2" width="40" height="32"><use xlink:href="#bootstrap"/></svg>
    </a>
  </footer>
</div>
  
<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.1.1/dist/js/bootstrap.bundle.min.js" 
integrity="sha384-/bQdsTh/da6pkI1MST/rWKFNjaCP5gBSY4sEBT38Q/9RBh9AH40zEOg7Hlq2THRZ" crossorigin="anonymous"></script>
</body>
</html>
