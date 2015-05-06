package empleadosCumple

class Regalo {
	
	String titulo
	String wer
	Date fechaRegalo

	static belongsTo = Empleado

    static constraints = {    	
		titulo nullable:false	
		url nullable:false
    }
}
//JuanPablo