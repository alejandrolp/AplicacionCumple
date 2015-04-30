<!DOCTYPE html>
<html>
	<head>
  		<asset:stylesheet src="bootstrap.css"/>
		<asset:javascript src="jquery-2.1.3.js"/>
		<asset:javascript src="bootstrap.js"/>
	</head>
	<body>

		<div class="container">	    
			<div class="panel panel-default">
			  <!-- Default panel contents -->
			  <div class="panel-heading">Gestionar empleado</div>
			
			  <!-- Table -->
			  <table class="table table-bordered">
			     <tr>
		            <th>Empleado</th> 
		            <th>Fecha cumple</th>  
		            <th>Legajo</th> 
		            <th>Opciones</th>            
		        </tr>
		        <tr >
		            <td>${unEmpleado.nombre}</td>
		            <td>${unEmpleado.fechaCumple}</td>
		            <td>${unEmpleado.legajo}</td>
		            <td>
		            	<input type="hidden" name="idEmpleado" value="${idEmpleado}"/>
		           		<a href="${createLink(controller:"regalo", action:"agregarRegalo",id:"${unEmpleado.legajo}")}">Agregar regalo</a></br>
		           		<a href="${createLink(controller:"regalo", action:"cambiarRegalo")}">Cambiar regalo</a></br>
		           		<a href="${createLink(controller:"empleado", action:"eliminarEmpleado")}">Eliminar empleado</a>
		            </td>
		        </tr>
			  </table>
		</div>	    

	    </div>
	</body>
</html>
