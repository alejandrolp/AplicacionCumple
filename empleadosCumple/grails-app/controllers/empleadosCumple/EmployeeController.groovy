package empleadosCumple

import grails.rest.*
import grails.converters.JSON

class EmployeeController extends RestfulController {
	
	def empleadoService
	static responseFormats = ['json', 'xml']


	public EmployeeController(){
		super(Empleado)
	}

	def listGifts(){
		def empleado = Empleado.findById(params.id)
		render empleado.regalos as JSON
	}
}