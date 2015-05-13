<!DOCTYPE html>
<html>
	<head>
  		<asset:stylesheet src="bootstrap.css"/>
		<asset:javascript src="jquery-2.1.3.js"/>
		<asset:javascript src="bootstrap.js"/>
		<meta name="layout" content="empleadosLayout" />
	</head>
	<body>

		<div class="container">	    
			<div class="panel panel-default">
			  <!-- Default panel contents -->
			  <div class="panel-heading">Cumpleaños del mes</div>
		        <g:if test="${empleados}">
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
				            <td>${empleado.nombre} ${empleado.apellido} </td>
				            <td><g:formatDate format="dd-MM-yyyy" date="${empleado.fechaCumple}"/></td>
				            <td>${empleado.legajo}</td>
		 					<td>
						      <g:each in="${empleado.regalos}" var="regalo">						          
						           <a href="${regalo.url}">${regalo.url}</a>
						      </g:each>   
					        </td>
				        </tr>
			        </g:each>
			      </table>
			      </br>
			      <a href="${createLink(controller:"empleado", action:"agregarEmpleado")}">Agregar empleado
                  <br>
				  <a href="${createLink(controller:"empleado", action:"buscarEmpleado")}">Buscar empleado</a>
		        </g:if>
		        <g:else>
						<p>No hay empleados</p>
						</br>
						<a href="${createLink(controller:"empleado", action:"agregarEmpleado")}">Agregar empleado</a>	        
		        </g:else>
		</div>	
	    </div> 

	</body>
</html>
