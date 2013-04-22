<%@ page import="br.com.veris.soa28.rest.pedido.Produto" %>



<div class="fieldcontain ${hasErrors(bean: produtoInstance, field: 'descricao', 'error')} ">
	<label for="descricao">
		<g:message code="produto.descricao.label" default="Descricao" />
		
	</label>
	<g:textField name="descricao" value="${produtoInstance?.descricao}"/>
</div>

<div class="fieldcontain ${hasErrors(bean: produtoInstance, field: 'nome', 'error')} ">
	<label for="nome">
		<g:message code="produto.nome.label" default="Nome" />
		
	</label>
	<g:textField name="nome" value="${produtoInstance?.nome}"/>
</div>

<div class="fieldcontain ${hasErrors(bean: produtoInstance, field: 'preco', 'error')} required">
	<label for="preco">
		<g:message code="produto.preco.label" default="Preco" />
		<span class="required-indicator">*</span>
	</label>
	<g:field type="number" name="preco" required="" value="${fieldValue(bean: produtoInstance, field: 'preco')}"/>
</div>

