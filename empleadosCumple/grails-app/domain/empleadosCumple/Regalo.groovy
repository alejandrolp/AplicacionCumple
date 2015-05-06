package empleadosCumple

class Regalo {
	
	String titulo
	String url
	Date fechaRegalo

	static belongsTo = Empleado

	// alejandro

    static constraints = {    	
		titulo nullable:false	
		url nullable:false
		// carlos
    }

    // amendola
}
