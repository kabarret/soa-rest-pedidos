package br.com.veris.soa28.rest.pedido.service

import br.com.veris.soa28.rest.pedido.Pedido
import grails.converters.JSON
import br.com.veris.soa28.rest.pedido.SituacaoPedido

class PedidoRestServicesController {

    def rastreio() {

        Pedido pedido = Pedido.findByCodigo(params.codigo)

        if (pedido){
            render([pedido: pedido.codigo,
                    situacao : pedido.situacao.rotulo,
                    itens : [pedido.itens.collect {[produto : it.produto.nome, valor: it.preco, qtde : it.quantidade]}]
                    ] as JSON)
        }else{
            render("pedido não encontrado")
        }
    }

    def novosPedidos(){
        def pedidos = Pedido.findAllWhere(situacao: SituacaoPedido.EM_PROCESSAMENTO)
        def mapJson = [pedidos: [] ]

        println "serviço acessado"

        pedidos.each { pedido ->
            mapJson.pedidos << [pedido: pedido.codigo,
                    situacao : pedido.situacao.rotulo,
                    itens : pedido.itens.collect {[produto : it.produto.nome, valor: it.preco, qtde : it.quantidade]}
            ]

            //pedido.situacao = SituacaoPedido.AGUARDANDO_LIBERACAO
            //pedido.save(flush: true)
        }
        println mapJson as JSON
        render(mapJson as JSON)

    }
}
