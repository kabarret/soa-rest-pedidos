package br.com.veris.soa28.rest.pedido

/**
 * Created with IntelliJ IDEA.
 * User: Kaue
 * Date: 06/04/13
 * Time: 14:34
 * To change this template use File | Settings | File Templates.
 */
public enum SituacaoPedido {

    EM_PROCESSAMENTO("Em processamento"),
    AGUARDANDO_LIBERACAO("Aguardando liberação"),
    LIBERADO("Liberado para entrega"),
    ENTREGUE("Entregue")

    String rotulo

    public SituacaoPedido(rotulo){
        this.rotulo = rotulo
    }

}