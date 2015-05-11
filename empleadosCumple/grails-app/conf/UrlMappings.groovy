class UrlMappings {

	static mappings = {
        "/$controller/$action?/$id?(.$format)?"{
            constraints {
                // apply constraints here
            }
        }
		
		"/"(controller:'/empleado/index')

        "/empleado/agregarEmpleado"(view: '/empleado/agregarEmpleado')
        "/empleado/buscarEmpleado"(view: '/empleado/buscarEmpleado')

      "/listadoDeRegalos"(view: '/listadoDeRegalos/listarRegalos')
		
        "/empleados"(resources: 'employee')
        //"/employees" (controller: "employee" , action: "index", method: "GET")
        "/empleados/$id/listarRegalos"(controller: 'employee', action: 'listGifts')

//        "/"(view:"/index")
        "500"(view:'/error')
	}
}