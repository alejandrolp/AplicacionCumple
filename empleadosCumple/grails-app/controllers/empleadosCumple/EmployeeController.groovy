package empleadosCumple

import grails.rest.*
import grails.converters.JSON
import grails.plugin.springsecurity.annotation.Secured

@Secured(['ROLE_API_ADMIN'])
class EmployeeController extends RestfulController {
	
	def empleadoService
	static responseFormats = ['json', 'xml']


	public EmployeeController(){
		super(Empleado)
	}

	def listGifts(){
		def empleado = Empleado.findById(params.id)
		if(empleado){
			render empleado.regalos as JSON
		}
		render JSON.parse('[]') 
	}
}