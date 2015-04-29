<!DOCTYPE html>
<html>
	<head>
		<title>Buscar Empleado</title>
	</head>
	<body>
		    <div>
				<p>Buscar Empleado</p>
			</div>

        	<div>
				<g:form method="post" controller="empleado" action="buscarEmpleadoPorLegajo">
					<div>
						<h2>Legajo:</h2>
						<g:textField placeholder="Ingrese el numero de legajo" id="campoLegajo" name="legajo" value="${myValue}" />
					</div>
					
					<br>
					<br>			
					<button id="botonAgregarEmpleado"><a>Buscar Empleado</a> </button>		
				</g:form>
			</div>
	  
	</body>
</html>
