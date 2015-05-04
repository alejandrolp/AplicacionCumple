package empleadosCumple

import grails.transaction.Transactional

@Transactional
class RegaloService {

	def agregarRegaloEmpleado(legajoEmpleado,nombreProducto, urlProducto){
		def empleadoLegajo = Empleado.findByLegajo(legajoEmpleado);
		def regalo= new Regalo(titulo:nombreProducto, url:urlProducto, fechaRegalo: new Date())

		def presente = empleadoLegajo.regalos.find{it.fechaRegalo.year == new Date().year};
		if(presente != null){
			empleadoLegajo.regalos.remove(presente);
			presente.delete(flush:true);
		}
		
		regalo.save(flush:true);		
		empleadoLegajo.regalos.add(regalo)
		empleadoLegajo.save(flush:true);		
	}
}
