package empleadosCumple

import java.text.DateFormat
import grails.transaction.Transactional

@Transactional
class EmpleadoService {
	
	def agregar(nombre, apellido,legajo, fecha){
		if(!Empleado.findByLegajo(legajo)){
			def nuevoEmpleado = new Empleado (nombre: nombre, apellido:apellido,legajo:legajo, fechaCumple: Date.parse("yyyy-MM-dd",fecha));
			nuevoEmpleado.save(flush:true);
			true
		}else{false}
	}
	
	def eliminar(legajo){
		def empleadoLegajo = Empleado.findByLegajo(legajo);
		for (int i = 0; i < empleadoLegajo.regalos.size(); i++){
			Regalo regalo = empleadoLegajo.regalos[i];
			empleadoLegajo.regalos.remove(regalo);
			regalo.delete(flush:true);
		}
		empleadoLegajo.delete(flush:true);
	}
	
	
	def listarEmpleados(){		

		int mesActual=new Date().month +1		
		println 'mesActual: ' + mesActual
		def empleadosMesActual = Empleado.where {
			month(fechaCumple) == mesActual
		}		
		return empleadosMesActual
	}
	
	def buscar(legajo){
		def empleadoLegajo = Empleado.findByLegajo(legajo)		
	}
}
