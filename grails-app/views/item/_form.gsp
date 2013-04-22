<%@ page import="br.com.veris.soa28.rest.pedido.Item" %>



<div class="fieldcontain ${hasErrors(bean: itemInstance, field: 'preco', 'error')} required">
	<label for="preco">
		<g:message code="item.preco.label" default="Preco" />
		<span class="required-indicator">*</span>
	</label>
	<g:field type="number" name="preco" required="" value="${fieldValue(bean: itemInstance, field: 'preco')}"/>
</div>

<div class="fieldcontain ${hasErrors(bean: itemInstance, field: 'produto', 'error')} required">
	<label for="produto">
		<g:message code="item.produto.label" default="Produto" />
		<span class="required-indicator">*</span>
	</label>
	<g:select id="produto" name="produto.id" from="${br.com.veris.soa28.rest.pedido.Produto.list()}" optionKey="id" required="" value="${itemInstance?.produto?.id}" class="many-to-one"/>
</div>

<div class="fieldcontain ${hasErrors(bean: itemInstance, field: 'quantidade', 'error')} required">
	<label for="quantidade">
		<g:message code="item.quantidade.label" default="Quantidade" />
		<span class="required-indicator">*</span>
	</label>
	<g:field type="number" name="quantidade" required="" value="${fieldValue(bean: itemInstance, field: 'quantidade')}"/>
</div>

