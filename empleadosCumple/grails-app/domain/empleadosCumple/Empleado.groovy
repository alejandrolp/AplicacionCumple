package empleadosCumple
import java.util.Date

class Empleado {
	String nombre
	String apellido
	Date fechaCumple
	String legajo
	static hasMany = [regalos: Regalo]

    static constraints = {    	
		nombre nullable:false
		apellido nullable:false
		fechaCumple nullable:false
		legajo nullable:false
    }    
}
