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
		"/empleados"(resources: 'employee')
        //"/employees" (controller: "employee" , action: "index", method: "GET")
        "/empleados/$id/listarRegalos"(controller: 'employee', action: 'listGifts')

//        "/"(view:"/index")
        "500"(view:'/error')
	}
}