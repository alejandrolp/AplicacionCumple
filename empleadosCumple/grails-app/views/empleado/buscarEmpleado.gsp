<!DOCTYPE html>
<html>
	<head>
		<title>Buscar Empleado</title>
		<asset:stylesheet src="bootstrap.css"/>
		<asset:javascript src="jquery-2.1.3.js"/>
		<asset:javascript src="bootstrap.js"/>
		
		<script type="text/javascript">
			function validarForm() {
			  if(document.getElementById("campoLegajo").value=="") {			       
			    alert('No has escrito un legajo'); 
			    return false;
			  }			 	 
			  return true;
			}
		</script>
		
	</head>
	<body>
		<div class="container">	    
			<div class="panel panel-default">
			  <div class="panel-heading">Buscar Empleado</div>

			  <g:form method="post" controller="empleado" action="buscarEmpleadoPorLegajo" class="form-inline" onsubmit="return validarForm()">
				  <div class="form-group">
				    <label for="exampleInputName2">Legajo</label>
				    <g:textField class="form-control" id="campoLegajo" placeholder="Jane Doe" placeholder="Ingrese el numero de legajo" name="legajo" value="${myValue}" />
				  </div>
				  <button class="btn btn-default" id="botonAgregarEmpleado">Buscar</button>
			  </g:form>
		     </div>		
		</div>	  
	</body>
</html>
