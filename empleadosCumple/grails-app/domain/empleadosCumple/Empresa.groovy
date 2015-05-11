package empleadosCumple

class Empresa {

	String nombre
	String cuit
	User user /* UNA user <maneja> MUCHAS empresas */

    static constraints = {
    }
}
