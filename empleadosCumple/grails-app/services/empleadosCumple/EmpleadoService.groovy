package empleadosCumple


import java.text.DateFormat


class EmpleadoService {
	
	def agregar(nombre, apellido,legajo, fecha){
		def nuevoEmpleado = new Empleado (nombre: nombre, apellido:apellido,legajo:legajo, fechaCumple: Date.parse("yyyy-MM-dd",fecha));
		nuevoEmpleado.save(flush:true);
	}
	
	
	def listarEmpleados(){			
		int mesActual=new Date().month +1		
		def empleadosMesActual = Empleado.where {
			month(fechaCumple) == mesActual
		}		
		return empleadosMesActual
	}
	
	def buscar(legajo){
		def empleadoLegajo = Empleado.findByLegajo(legajo);
	}

}