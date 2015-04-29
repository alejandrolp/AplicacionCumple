class UrlMappings {

	static mappings = {
        "/$controller/$action?/$id?(.$format)?"{
            constraints {
                // apply constraints here
            }
        }
		
		"/"(controller:"/empleado/index")

//        "/"(view:"/index")
        "500"(view:'/error')
	}
}