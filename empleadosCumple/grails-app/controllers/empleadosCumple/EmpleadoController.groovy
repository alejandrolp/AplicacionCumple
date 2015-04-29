package empleadosCumple

import org.springframework.web.servlet.ModelAndView

class EmpleadoController {
		
//	static allowedMethods = [agregarEmpleado: 'POST']
	
	def empleadoService;
	
    def index={		
		def results=empleadoService.listarEmpleados();
		new ModelAndView("/empleado/index",[empleados:results])
	}
	
	def crearEmpleado() {
		def nombre = params.nombre;
		def apellido = params.apellido;
		def legajo = params.legajo;
		def fecha = params.fecha;
		empleadoService.agregar(nombre, apellido,legajo, fecha);
//		new ModelAndView("/empleado/crearEmpleado")
		redirect(controller: "Empleado", action:"index");
	}
	
	def agregarEmpleado() {

	}
	
	def buscarEmpleado (){
		
	}
	
	def buscarEmpleadoPorLegajo (){
		def legajo = params.legajo;
		def empleadoLegajo = empleadoService.buscar(legajo);
		new ModelAndView("/empleado/gestionarEmpleado",[unEmpleado:empleadoLegajo])
		
	}
}
