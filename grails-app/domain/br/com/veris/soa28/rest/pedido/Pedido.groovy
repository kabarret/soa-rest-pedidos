package br.com.veris.soa28.rest.pedido

class Pedido {

    String cliente
    String codigo
    SituacaoPedido situacao

    static hasMany = [itens:Item]

    static constraints = {
    }
}
