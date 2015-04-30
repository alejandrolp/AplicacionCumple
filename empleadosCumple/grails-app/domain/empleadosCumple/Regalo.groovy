package empleadosCumple

class Regalo {
	
	String titulo
	String url

	static belongsTo = Empleado

    static constraints = {    	
		titulo nullable:false	
		url nullable:false
    }
}
