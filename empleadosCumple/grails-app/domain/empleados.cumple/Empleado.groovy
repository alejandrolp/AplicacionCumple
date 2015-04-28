package empleados.cumple

class Empleado {
	String nombre
	String apellido
	Date fechaCumple
	static hasMany = [regalos: Regalo]

    static constraints = {    	
		nombre nullable:false
		apellido nullable:false
		fechaCumple nullable:false
    }

    
}
