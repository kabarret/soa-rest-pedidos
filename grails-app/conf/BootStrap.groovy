import br.com.veris.soa28.rest.pedido.*

class BootStrap {

    def init = { servletContext ->
        environments {
            development {
                def produto = new Produto(nome: "telefone", descricao: "telefone", preco: 25).save(flush: true, failOnError: true)
                def pedido = new Pedido(cliente: "casa bahia", codigo: "5", situacao: SituacaoPedido.EM_PROCESSAMENTO )
                pedido.addToItens(produto: produto , quantidade: 2, preco: 20).save(flush: true, failOnError: true)
            }
        }

    }
    def destroy = {
    }
}
