package empleadosCumple

class Regalo {
	
	String descripcion
	String titulo
	String url

	static belongsTo = Empleado

    static constraints = {    	
		descripcion nullable:false		
    }
}
