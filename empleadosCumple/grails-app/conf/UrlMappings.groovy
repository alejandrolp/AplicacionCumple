class UrlMappings {

	static mappings = {
        "/$controller/$action?/$id?(.$format)?"{
            constraints {
                // apply constraints here
            }
        }
		
		"/"(controller:'/empleado/index')
/*
        "/empleado/agregarEmpleado"(controller: 'empleado', view: 'agregarEmpleado')
        "/empleado/buscarEmpleado"(controller: 'empleado', view: 'buscarEmpleado')
*/

//        "/"(view:"/index")
        "500"(view:'/error')
	}
}