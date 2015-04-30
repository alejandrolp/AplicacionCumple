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
			  <div class="panel-heading">Cumpleaños del mes</div>
			
			  <!-- Table -->
			  <table class="table table-bordered">
			     <tr>
		            <th>Empleado</th> 
		            <th>Fecha cumple</th>  
		            <th>Legajo</th>  
		            <th>Regalos</th>           
		        </tr>
		        <g:each in="${empleados}" var="empleado">
			        <tr >
			            <td>${empleado.nombre}</td>
			            <td>${empleado.fechaCumple}</td>
			            <td>${empleado.legajo}</td>
	 					<td>
					      <g:each in="${empleado.regalos}" var="regalo">						          
					           <a href="${regalo.url}">${regalo.url}</a>
					      </g:each>   
				        </td>
			        </tr>
		        </g:each>  
			  </table>
		</div>	    
<%--	    	<a href="agregarEmpleado">Agregar empleado</a> --%>
			<a href="${createLink(controller:"empleado", action:"agregarEmpleado")}">Agregar empleado</a>
<%--	    	<a href="/pruebasEmpleadoCumple/empleado/buscarEmpleado">Buscar empleado</a>--%>
			<a href="${createLink(controller:"empleado", action:"buscarEmpleado")}">Buscar empleado</a>
	    </div>
	</body>
</html>
