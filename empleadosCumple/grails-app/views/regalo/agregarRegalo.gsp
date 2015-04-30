<!DOCTYPE html>
<html>
	<head>
  		<asset:stylesheet src="bootstrap.css"/>
		<asset:javascript src="jquery-2.1.3.js"/>
		<asset:javascript src="bootstrap.js"/>
		
<%--		<script type="text/javascript">--%>
<%--			$(function() {--%>
<%--				$("#meliquery").keypress( enviarConsulta );--%>
<%--	--%>
<%--				function enviarConsulta() {--%>
<%--					setTimeout(function() {--%>
<%--						var query = "https://api.mercadolibre.com/sites/MLA/search?q=" + $("#meliquery").val();	--%>
<%--						var promise = $.get(query);--%>
<%--						promise.done( recibirResultados );--%>
<%--					}, 0);--%>
<%--				}--%>
<%--	--%>
<%--				function recibirResultados( json ) {--%>
<%--					$("#resultadoBusqueda").empty();--%>
<%--					json.results.forEach(function(item) {--%>
<%--						var str = $("#templateItem").text()--%>
<%--						str = str.replace(/#url#/g, item.permalink);--%>
<%--						str = str.replace(/#title#/g, item.title);--%>
<%--						str = str.replace(/#price#/g, item.price);--%>
<%--	--%>
<%--						$("#resultadoBusqueda").append(str);--%>
<%--						--%>
<%--					})--%>
<%--				}--%>
<%--			});--%>
<%--		</script>--%>		
	</head>
	<body>
<%----%>
<%--		<div class="container">	    --%>
<%--			<div class="panel panel-default">--%>
<%--			  <!-- Default panel contents -->--%>
<%--			  <div class="panel-heading">Agregar regalo</div>--%>
<%----%>
<%--				<p>Busqueda <input type="text" id="meliquery" name="query" placeholder="Busque aqui..." /></p>--%>
<%--				<ul id="resultadoBusqueda">--%>
<%--				</ul>--%>
<%--	--%>
<%--	--%>
<%--				<script type="text/template" id="templateItem">--%>
<%--					<li>--%>
<%--						<a href="#url#">#title#</a> Precio: #price#--%>
<%--					</li>--%>
<%--				</script>--%>
<%--	--%>
<%--		</div>	--%>
<%--	    </div>--%>

	<body>
	    <nav class="navbar navbar-default">
	      <div class="container">
	        <div id="navbar" class="navbar-collapse collapse">
	          <ul class="nav navbar-nav navbar-right">
	            <li class="active"><a href="/cumplesMeli/empleados/index">Home<span class="sr-only">(current)</span></a></li>
	          </ul>
	        </div><!--/.nav-collapse -->
	      </div>
	    </nav>
	    
	    <div class="container">
		    <div class="row">
			    <div class="input-group">
			      <input type="text" class="form-control" placeholder="Buscar regalo..." id="inputBuscar">
			      <span class="input-group-btn">
			        <button class="btn btn-default" id="botonBuscar">Buscar</button>
			      </span>
	  		  	</div><!-- /input-group -->
	  		</div>
  		</div>
  		
  		<div class="container marketing">
  			<div id="template_respuesta_busqueda" style="display: none">
				<div class="container marketing">
					<hr class="featurette-divider">
					<div class="row featurette">
						<div class="col-md-7">
							<h2 class="featurette-heading"> #tituloItem# <span class="text-muted"> $ #precioItem#</span></h2>
							<form action="${createLink(controller:"regalo", action:"agregarRegaloEmpleado")}" method="post">
								<input type="hidden" name="idEmpleado" value="${idEmpleado}"/>
								<input type="hidden" name="nombreProducto" value="#tituloItem#"/>
								<input type="hidden" name="urlFotoProducto" value="#urlImagen#"/>
								<input type="hidden" name="urlProducto" value="#urlProducto#"/>
								<input type="hidden" name="precioProducto" value="#precioItem#"/>
								<button class="btn btn-primary" style="color: white">Regalar</button>
							</form>
						</div>
						<div class="col-md-5">
							<img class="featurette-image img-responsive" src="#urlImagen#" alt="Generic placeholder image" width="300"/>
						</div>
					</div>
				</div>'
  			</div>
  			<div id="respuesta_busqueda"></div>
  		</div>

  		<script type="text/javascript">
  			$("#botonBuscar").click(funcionBuscar);
  			$("#inputBuscar").keypress(funcionBuscarEnter);
  			
  			function funcionBuscarEnter(param) {
  				if (param.keyCode == 13) {
  					funcionBuscar();
  				}
  			}

  			function funcionBuscar() {
				var search = $.get("https://api.mercadolibre.com/sites/MLA/search", {q: $("#inputBuscar").val(), offset: 0, limit: 5});
				search.done(mostrarResultado);
				search.fail(mostrarError);
			}

			function mostrarResultado(data) {
				$.each(data.results, agregarResultado);
			}
			
			function agregarResultado (index, item) {
				$("#respuesta_busqueda").empty();
				var search_item = $.get("https://api.mercadolibre.com/items/"+item.id);
				search_item.done(mostrarItem);
			}
			
			function mostrarItem (item) {
				var contenido = $("#template_respuesta_busqueda").html();
				contenido = contenido.replace("#tituloItem#", item.title);
				contenido = contenido.replace("#tituloItem#", item.title);
				contenido = contenido.replace("#precioItem#", item.price);
				contenido = contenido.replace("#precioItem#", item.price);
				contenido = contenido.replace("#urlProducto#", item.permalink);				
				contenido = contenido.replace("#urlImagen#", item.pictures[0].url);
				contenido = contenido.replace("#urlImagen#", item.pictures[0].url);
				$("#respuesta_busqueda").append(contenido);
			}
			
			function mostrarError() {
				$("#respuesta_busqueda").html( "<li>Se produjo un errors</li>" );
			}

		</script>

	</body>
	</body>
</html>
