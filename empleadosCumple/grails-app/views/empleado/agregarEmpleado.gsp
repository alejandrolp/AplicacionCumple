<!DOCTYPE html>
<html>
	<head>
		<title>Crear Empleado</title>
		<asset:stylesheet src="bootstrap.css"/>
		<asset:javascript src="jquery-2.1.3.js"/>
		<asset:javascript src="bootstrap.js"/>
		
	</head>
	<body>
  		<div class="container">	    
			<div class="panel panel-default">
				<div class="panel-heading">Crear Empleado</div>
		
		       	<div>
					<g:form method="post" controller="empleado" action="crearEmpleado">
						<div>
							<h3>Nombre:</h3>
							<g:textField pattern="[A-Za-z]+" placeholder="Ingrese el nombre" id="campoNombre" name="nombre" value="${myValue}" />
						</div>
						<div>
						    <h3>Apellido:</h3>
						    <g:textField pattern="[A-Za-z]+" placeholder="Ingrese el apellido" id="campoApellido" name="apellido" value="${myValue}" />
						</div>
						<div>
						    <h3>Legajo: </h3>
							<g:textField placeholder="Ingrese el numero de legajo" id="campoLegajo" name="legajo" value="${myValue}" />
						</div>		
						<div>
						    <h3>Fecha: </h3>
							<input type="date" name="fecha">
						</div>				
						<br>
						<br>			
						<button id="botonAgregarEmpleado"><a>Agregar Empleado</a> </button>		
					</g:form>
				</div>
			</div>	
		</div>	
	</body>
</html>
