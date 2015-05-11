package empleadosCumple

import java.util.Date

class Empleado {
	String nombre
	String apellido
	Date fechaCumple
	String legajo

	Empresa empresa /* UNA empresa <posee> MUCHOS empleados */
	User user

	static hasMany = [Regalo]

    static constraints = {    	
		nombre nullable:false
		apellido nullable:false
		fechaCumple nullable:false
		legajo nullable:false
    }

}
