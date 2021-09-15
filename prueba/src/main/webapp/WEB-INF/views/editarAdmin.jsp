<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
</head>
<body>

<section>
        <div class="container">
            <div class="row">
                <div class="col-sm-12 col-lg-6">
                    <h3>Editar Administrativo</h3>

                    <form action="${pageContext.request.contextPath}/editarAdministrativo">

                        <div class="mb-3">
                            <label for="nombre_sup" class="form-label">Nombre superior</label>
                            <input class="form-control" name="admnombresup" id="nombre_sup" type="text" placeholder="Ej: Brian Guzmán">
                        </div>

                        <div class="mb-3">
                            <label for="area" class="form-label">Area</label>
                            <input class="form-control" name="admarea_1" id="admarea_1" type="text" placeholder="Ej: Desarrollo">
                        </div>

                        <div class="mb-3">
                            <label for="exp_prev" class="form-label">Experiencia previa</label>
                            <input class="form-control" name="admexpprev" id="admexpprev" type="text" placeholder="Ej: Sin experiencia">
                        </div>

                        <div class="mb-3">
                            <label for="funcion" class="form-label">Función</label>
                            <input class="form-control" name="admfuncion" id="admfuncion" type="text" placeholder="Ej: Desarrollador">
                        </div>

                        <button type="submit" class="btn btn-success">Guardar</button>
                    </form>
                </div>

                <div class="contenedor-img col-sm-12 col-lg-6">
                    <img src="https://www.aicad.es/asset//img/2/habilidades-de-un-asistente-administrativo-02.jpg" alt="" srcset="">
                </div>
            </div>
            <div class="box1">



            </div>
    </section>
</body>
</html>