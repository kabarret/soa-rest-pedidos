<%@ page import="br.com.veris.soa28.rest.pedido.Pedido" %>



<div class="fieldcontain ${hasErrors(bean: pedidoInstance, field: 'cliente', 'error')} ">
	<label for="cliente">
		<g:message code="pedido.cliente.label" default="Cliente" />
		
	</label>
	<g:textField name="cliente" value="${pedidoInstance?.cliente}"/>
</div>

<div class="fieldcontain ${hasErrors(bean: pedidoInstance, field: 'codigo', 'error')} ">
	<label for="codigo">
		<g:message code="pedido.codigo.label" default="Codigo" />
		
	</label>
	<g:textField name="codigo" value="${pedidoInstance?.codigo}"/>
</div>

<div class="fieldcontain ${hasErrors(bean: pedidoInstance, field: 'itens', 'error')} ">
	<label for="itens">
		<g:message code="pedido.itens.label" default="Itens" />
		
	</label>
	<g:select name="itens" from="${br.com.veris.soa28.rest.pedido.Item.list()}" multiple="multiple" optionKey="id" size="5" value="${pedidoInstance?.itens*.id}" class="many-to-many"/>
</div>

<div class="fieldcontain ${hasErrors(bean: pedidoInstance, field: 'situacao', 'error')} required">
	<label for="situacao">
		<g:message code="pedido.situacao.label" default="Situacao" />
		<span class="required-indicator">*</span>
	</label>
	<g:select name="situacao" from="${br.com.veris.soa28.rest.pedido.SituacaoPedido?.values()}" keys="${br.com.veris.soa28.rest.pedido.SituacaoPedido.values()*.name()}" required="" value="${pedidoInstance?.situacao?.name()}"/>
</div>

