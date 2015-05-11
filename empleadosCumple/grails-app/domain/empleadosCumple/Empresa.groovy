package empleadosCumple

class Empresa {

	String nombre
	String cuit
	User user /* UN user <maneja> MUCHAS empresas */

    static constraints = {
    }

    String toString() {
    	return id + " " + nombre + " " + cuit
    }
}
