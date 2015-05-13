<!DOCTYPE html>
<html>
	<head>
		<meta name="layout" content="main"/>
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
		<meta name="layout" content="empleadosLayout" />
	</head>
	<body> 
		<article>
			<header class="header-ficha">
				<h1>AGREGAR EMPLEADO</h1>
			</header>
								<g:form method="post" controller="empleado" action="crearEmpleado"  onsubmit="return validarForm();">
						<div class="row-form">
							<h3>Nombre:</h3>
							<g:textField pattern="[A-Za-z\\s]*" placeholder="Ingrese el nombre" id="campoNombre" name="nombre" value="${myValue}" />
						</div>
						<div class="row-form">
						    <h3>Apellido:</h3>
						    <g:textField pattern="[A-Za-z]+" placeholder="Ingrese el apellido" id="campoApellido" name="apellido" value="${myValue}" />
						</div>
						<div class="row-form">
						    <h3>Legajo: </h3>
							<g:textField placeholder="Ingrese el numero de legajo" id="campoLegajo" name="legajo" value="${myValue}" />
						</div>		
						<div class="row-form">
						    <h3>Fecha: </h3>
							<g:datePicker id="campoFecha" name="fecha" precision="day"></g:datePicker>
						</div>				
						<div class="row-form">
						    <h3>Empresa: </h3>
							<g:select name="selectEmpresa"
          							  from="${empresas}"          							  
         							  value="${empresas.nombre}"
         							  optionValue="nombre"
         							  optionKey="id" />
						</div>	
					</g:form>
			<footer>
				<button id="botonAgregarEmpleado"><img src="http://vignette3.wikia.nocookie.net/roblox/images/5/57/Very-Basic-Checkmark-icon.png/revision/latest?cb=20131125154354">Agregar</button>	
			</footer>
		</article>
	</body>
</html>
