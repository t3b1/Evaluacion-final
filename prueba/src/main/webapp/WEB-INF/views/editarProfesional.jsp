<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>editar profesional</title>
</head>
<body>
   <section>
        <div class="container">
            <div class="row">
                <div class="col-sm-12 col-lg-6">
                    <h3>Editar Profesional</h3>

                    <form action="${pageContext.request.contextPath}/editarProfesional">

                        <div class="mb-3">
                            <label for="anios_exp" class="form-label">Años de experiencia</label>
                            <input class="form-control" name="profanoexp" id="anios_exp" type="number">
                        </div>


                        <div class="mb-3">
                            <label for="departamento" class="form-label">Departamento</label>
                            <input class="form-control" name="profdepto" id="departamento" type="text">
                        </div>

                        <div class="mb-3">
                            <label for="titulo" class="form-label">Titulo</label>
                            <input class="form-control" name="proftitulo" id="titulo" type="text">
                        </div>

                        <div class="mb-3">
                            <label for="fecha_in" class="form-label">Fecha de ingreso</label>
                            <input class="form-control" name="proffechaingreso" id="fecha_in" type="date">
                        </div>

                        <button type="submit" class="btn btn-success">Guardar</button>
                    </form>
                </div>


                <div class="contenedor-img col-sm-12 col-lg-6">
                    <img src="https://www.muypymes.com/wp-content/uploads/2012/04/profesionales.jpg" alt="" srcset="">
                </div>
            </div>
        </div>
    </section>
</body>
</html>