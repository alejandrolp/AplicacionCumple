package empleadosCumple


import org.springframework.web.servlet.ModelAndView

class RegaloController {
	def regaloService;
	
	def index={
//		redirect(action : volver)
	}
	
	def agregarRegalo (){
		[idEmpleado: params.id];
		
		
	}
	
	def agregarRegaloEmpleado (){
		def legajoEmpleado= params.idEmpleado
		def empleado = params.nombreProducto;
		def nombreProducto = params.nombreProducto;
		def urlProducto = params.urlProducto;
		regaloService.agregarRegaloEmpleado(legajoEmpleado,nombreProducto, urlProducto);
		redirect(controller: "Empleado", action:"index");
	}
}

