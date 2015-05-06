package empleadosCumple

class Regalo {
	
	String titulo
	String nada //url
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
//JuanPablo
