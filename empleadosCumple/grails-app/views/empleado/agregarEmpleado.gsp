<!DOCTYPE html>
<html>
	<head>
		<title>Crear Empleado</title>
		<asset:stylesheet src="bootstrap.css"/>
		<asset:javascript src="jquery-2.1.3.js"/>
		<asset:javascript src="bootstrap.js"/>
		<script type="text/javascript">
			function validarForm() {
			  if(document.getElementById("campoNombre").value=="") { //comprueba que no esté vacío
				  document.getElementById("campoNombre").focus();   
			    alert('No has escrito un nombre'); 
			    return false;
			  }
			  if(document.getElementById("campoApellido").value=="") { //comprueba que no esté vacío
				  document.getElementById("campoApellido").focus();   
				    alert('No has escrito un apellido'); 
				    return false;
			  }
			  if(document.getElementById("campoLegajo").value=="") { //comprueba que no esté vacío
				  document.getElementById("campoLegajo").focus();   
				    alert('No has escrito un legajo'); 
				    return false; 
			  }	
			  if(document.getElementById("campoLegajo").value=="") { //comprueba que no esté vacío
				  document.getElementById("campoLegajo").focus();   
				    alert('No has escrito una fecha de cumpleaños'); 
				    return false; 
			  }			 
			  return true;
			}
		</script>
	</head>
	<body>
  		<div class="container">	    
			<div class="panel panel-default">
			  <!-- Default panel contents -->
				<div class="panel-heading">Crear Empleado</div>
		
		       	<div>
					<g:form method="post" controller="empleado" action="crearEmpleado"  onsubmit="return validarForm();">
						<div>
							<h3>Nombre:</h3>
							<g:textField pattern="[A-Za-z\\s]*" placeholder="Ingrese el nombre" id="campoNombre" name="nombre" value="${myValue}" />
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
							<g:datePicker id="campoFecha" name="fecha" precision="day"></g:datePicker>
							
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
