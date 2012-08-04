class UrlMappings {

	static mappings = {
		"/$controller/$action?/$id?"{
			constraints {
				// apply constraints here
			}
		}
		
		"/" {
			controller = "ViajanteMultiple"
			action = "index"
		}
		"500"(view:'/error')
		
	}
}
