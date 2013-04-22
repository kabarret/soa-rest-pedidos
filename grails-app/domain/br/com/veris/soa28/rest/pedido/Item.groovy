package br.com.veris.soa28.rest.pedido

class Item {

    BigDecimal preco
    Produto produto
    Long quantidade

    static belongsTo = [Pedido]

    static constraints = {
    }

    public String toString(){
        "${this.produto.nome} x ${this.quantidade}"
    }
}
