class UrlMappings {

	static mappings = {
        "/$controller/$action?/$id?(.$format)?"{
            constraints {
                // apply constraints here
            }
        }

        "/"(view:"/index")
        "/lostAnimal" (controller: 'search', action: 'index')
        "500"(view:'/error')
	}
}
