package empleados.cumple

class Regalo {
	String descripcion

	static belongsTo = Empleado

    static constraints = {    	
		descripcion nullable:false		
    }

    
}
