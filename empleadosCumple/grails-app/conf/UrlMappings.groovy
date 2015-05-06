class UrlMappings {

	static mappings = {
        "/$controller/$action?/$id?(.$format)?"{
            constraints {
                // apply constraints here
            }
        }
		
		"/"(controller:"/empleado/index")
        "/agregarEmpleado"(url:"agregarEmpleado.gsp")
        "/buscarEmpleado"(url:"buscarEmpleado.gsp")

        

//        "/"(view:"/index")
        "500"(view:'/error')
	}
}