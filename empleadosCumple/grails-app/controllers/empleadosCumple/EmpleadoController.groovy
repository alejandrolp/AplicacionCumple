package empleadosCumple

import org.springframework.web.servlet.ModelAndView
import grails.plugin.springsecurity.annotation.Secured
import grails.plugin.springsecurity.SpringSecurityUtils

@Secured(['ROLE_ADMIN'])
class EmpleadoController {   
		  
//	static allowedMethods = [agregarEmpleado: 'POST']
	  
	def empleadoService

    def index () {		 
		def user = org.springframework.security.core.userdetails.User
		def results=empleadoService.listarEmpleados();
		new ModelAndView("/empleado/index",[empleados:results, user: user])  
	}
	     
	def crearEmpleado() {
		def nombre = params.nombre;
		def apellido = params.apellido;
		def legajo = params.legajo;
		def fecha = params.fecha;
		if(empleadoService.agregar(nombre, apellido,legajo, fecha)){
			redirect(controller: "Empleado", action:"index")
		}else{
			new ModelAndView("/empleado/error", [mje:"Error al crear empleado"])
		}
		
	} 
	
	def buscarEmpleadoPorLegajo (){ 
		def legajo = params.legajo;
		def empleadoLegajo=empleadoService.buscar(legajo)
		if(empleadoLegajo){
			new ModelAndView("/empleado/gestionarEmpleado",[unEmpleado:empleadoLegajo])
		}else{
			new ModelAndView("/empleado/error", [mje:"No existe empleado"])
		}
	}
	  
	 
	def eliminarEmpleado(){
		def legajoEmpleado= params.id
		empleadoService.eliminar(legajoEmpleado)
		redirect(controller: "Empleado", action:"index") 
	}

	def agregarEmpleado() {}   
 
	def buscarEmpleado() {}
 
 	@Secured(['ROLE_ADMIN', 'ROLE_USER'])
	def logout() {
		session.invalidate()
		println SpringSecurityUtils.securityConfig.logout.filterProcessesUrl
		redirect uri: SpringSecurityUtils.securityConfig.logout.filterProcessesUrl
	}

}
