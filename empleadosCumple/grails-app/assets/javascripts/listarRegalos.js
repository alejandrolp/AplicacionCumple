$(document).ready(function(){

		$("#idEmpleado").keypress(search);

		function search(){
			_this = this;

			$("#listaRegalos").empty();

			setTimeout(function(){
				
				if(_this.value != ""){
					var url = "http://localhost:8080/empleadosCumple/empleados/" + _this.value + "/listarRegalos";	
				} else {
					$("#idEmpleado").value("");	
				}

				var promise = $.get(url);

				promise.done(processResult);

				promise.error(processError)

			}, 0);
			
		}

		function processResult(data){
			

			data.forEach(function(item, index){
				var div_row = $("<div id=row-" + item.id +"></div>");
				var link_url =  $("<a id=row-link-" + item.idEmpleado +"></a>");

				link_url.html(item.titulo);
				link_url.attr("href", item.url);
				
				div_row.append(link_url);

				$("#listaRegalos").append(div_row);
			});
			
		}

		function processError(e){

			$("#listaRegalos").append($("<p></p>").html(e));
		}
		
});