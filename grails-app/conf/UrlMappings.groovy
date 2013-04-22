class UrlMappings {

	static mappings = {
		"/$controller/$action?/$id?"{
			constraints {
				// apply constraints here
			}
		}

        "/servicos/pedido/rastreio/${codigo}"(controller:"pedidoRestServices"){
                action = [GET:"rastreio"]
        }

        "/servicos/pedido/novos"(controller:"pedidoRestServices"){
            action = [GET:"novosPedidos"]
        }

		"/"(view:"/index")
		"500"(view:'/error')
	}
}
