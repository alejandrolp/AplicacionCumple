<!DOCTYPE html>
<html>
	<head>
		<title>Crear Empleado</title>
	</head>
	<body>
		    <div>
				<p>Crear Empleado</p>
			</div>

        	<div>
				<g:form method="post" controller="empleado" action="crearEmpleado">
					<div>
						<h2>Nombre:</h2>
						<g:textField pattern="[A-Za-z]+" placeholder="Ingrese el nombre" id="campoNombre" name="nombre" value="${myValue}" />
					</div>
					<div>
					    <h2>Apellido:</h2>
					    <g:textField pattern="[A-Za-z]+" placeholder="Ingrese el apellido" id="campoApellido" name="apellido" value="${myValue}" />
					</div>
					<div>
					    <h2>Legajo: </h2>
						<g:textField placeholder="Ingrese el numero de legajo" id="campoLegajo" name="legajo" value="${myValue}" />
					</div>		
					<div>
					    <h2>Fecha: </h2>
						<input type="date" name="fecha">
					</div>				
					<br>
					<br>			
					<button id="botonAgregarEmpleado"><a>Agregar Empleado</a> </button>		
				</g:form>
			<div>
	  
	</body>
</html>
