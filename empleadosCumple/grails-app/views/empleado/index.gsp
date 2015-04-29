<!DOCTYPE html>
<html>
	<head>

	</head>
	<body>
	    <div>
			<p>Cumpleaños del mes</p>
		</div>
	    <table border="1" width="50%">
	        <tr>
	            <th>Empleado</th> 
	            <th>Fecha cumple</th>  
	            <th>Legajo</th>            
	        </tr>
	        <g:each in="${empleados}" var="empleado">
		        <tr >
		            <td>${empleado.nombre}</td>
		            <td>${empleado.fechaCumple}</td>
		            <td>${empleado.legajo}</td>
		        </tr>
	        </g:each>        
	    </table>
	    </br></br>
	    <div>
<%--	    	<a href="agregarEmpleado">Agregar empleado</a> --%>
			<a href="${createLink(controller:"empleado", action:"agregarEmpleado")}">Agregar empleado</a>
<%--	    	<a href="/pruebasEmpleadoCumple/empleado/buscarEmpleado">Buscar empleado</a>--%>
			<a href="${createLink(controller:"empleado", action:"buscarEmpleado")}">Buscar empleado</a>
	    </div>
	</body>
</html>
