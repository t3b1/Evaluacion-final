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
                    <h3>Editar Cliente</h3>
                    <form id="form-edit" action="${pageContext.request.contextPath}/editarCliente">

                        <div class="mb-3">
                            <label for="rut" class="form-label">Rut</label>
                            <input class="form-control" name="rutcliente" id="rutcliente" type="text" placeholder="Ej: 11111111-1" minlength="9" maxlength="10" required>
                        </div>

                        <div class="mb-3">
                            <label for="direccion" class="form-label">Dirección</label>
                            <input class="form-control" name="clidireccion" id="clidireccion" type="text" placeholder="Ej: Av. Siempre viva" minlength="4" required>
                        </div>

                        <div class="mb-3">
                            <label for="Comuna" class="form-label">Comuna</label>
                            <input class="form-control" name="clicomuna" id="clicomuna" type="text" placeholder="Ej: Santiago" minlength="4" required>
                        </div>

                        <div class="mb-3">
                            <label for="cant_e" class="form-label">Cantidad de empleados</label>
                            <input class="form-control" name="clicantidadempleado" id="clicantidadempleado" type="number" min="1" required>
                        </div>

                        <div class="mb-3">
                            <label for="tel_c" class="form-label">Teléfono</label>
                            <input class="form-control" name="clitelefono" id="clitelefono" type="text" minlength="9" required placeholder="Ej: 9 87654321">
                        </div>

                        <div class="mb-3">
                            <label for="razon" class="form-label">Razón social</label>
                            <input class="form-control" name="clirazonsocial" id="clirazonsocial" type="text" minlength="4" required>
                        </div>
                        <button type="submit" class="btn btn-success">Guardar</button>
                    </form>
                </div>
                <div class="contenedor-img col-sm-12 col-lg-6">
                    <img src="https://www.comunicarme.com/wp-content/uploads/2019/07/atencion-al-cliente6.jpg" alt="" srcset="">
                </div>
            </div>
        </div>
    </section>

</body>
</html>