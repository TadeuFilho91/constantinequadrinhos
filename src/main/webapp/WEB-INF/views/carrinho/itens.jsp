<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib uri="http://www.springframework.org/tags" prefix="s"%>

<!DOCTYPE html>
<html>
<head>

<c:url value="/" var="contextPath" />
<meta charset="utf-8" />
<meta http-equiv="X-UA-Compatible" content="IE=edge,chrome=1" />
<meta name="viewport" content="width=device-width, initial-scale=1, maximum-scale=1" />

<title>Hq's nacionais e internacionais (Vários tipos de formatos) - Constantine Quadrinhos</title>


</head>
<body>

	<header id="layout-header">
		<div class="clearfix container">
			<a href="/" id="logo"> </a>
			<div id="header-content">
				<nav id="main-nav">
					
				</nav>
			</div>
		</div>
	</header>
	
	<nav class="categories-nav">
		
	</nav>

	<section class="container middle">
		<h2 id="cart-title">Seu carrinho de compras</h2>
		<table id="cart-table">
			<colgroup>
				<col class="item-col" />
				<col class="item-price-col" />
				<col class="item-quantity-col" />
				<col class="line-price-col" />
				<col class="delete-col" />
			</colgroup>
			<thead>
				<tr>
					<th class="cart-img-col"></th>
					<th width="65%">Item</th>
					<th width="10%">Preço</th>
					<th width="10%">Quantidade</th>
					<th width="10%">Total</th>
					<th width="5%"></th>
				</tr>
			</thead>
			<tbody>
				<c:forEach items="${carrinhoCompras.itens }" var="item">
					<tr>
						<td class="cart-img-col"><img src="http://cdn.shopify.com/s/files/1/0155/7645/products/css-eficiente-featured_large.png?v=1435245145"
							width="71px" height="100px" />
						</td>
						<td class="item-title">${item.produto.titulo }</td>
						<td class="numeric-cell">${item.preco }</td>
						<td class="quantity-input-cell">
								<input type="number" min="0" id="quantidade" name="quantidade" value="${carrinhoCompras.getQuantidade(item) }" />
						</td>
						<td class="numeric-cell">${carrinhoCompras.getTotal(item) }</td>
						<td class="remove-item">
							<form action="${s:mvcUrl('CCC#remover').arg(0, item.produto.id).arg(1,item.tipoPreco).build() }" method="POST">
								<input type="image" src="${contextPath }/resources/imagens/excluir.png" 
									alt="Excluir" title="Excluir" />
							</form>	
						</td>
					</tr>
				</c:forEach>
			</tbody>
			<tfoot>
				<tr>
					<td colspan="3">
						<form action="${s:mvcUrl('PC#finalizar').build() }" method="post">
							<input type="submit" class="checkout" name="checkout" value="Finalizar compra" /></td>
						</form>					
					<td class="numeric-cell">${carrinhoCompras.total }</td>
					<td></td>
				</tr>
			</tfoot>
		</table>

		<h2>Você já conhece os outros livros da Constantine Quadrinhos?</h2>
		<ul id="collection" class="related-books">
			
		</ul>

		<h2>
			<a href="${contextPath}produtos">Veja todos os livros que publicamos!</a>
		</h2>
	</section>

	<footer id="layout-footer">
		<div class="clearfix container">
			<div id="collections-footer">
				<!-- cdc-footer -->
				<p class="footer-title">Coleções de Preacher</p>
				<ul class="footer-text-links">
					
					<li><a href="/collections/livros-desenvolvimento-web">Hellblazer</a></li>
					
				</ul>
				<p class="footer-title">Outros Assuntos</p>
				<ul class="footer-text-links">
				
					
				</ul>
			</div>
			
			<div id="newsletter-footer">
				<!-- social-footer -->
				<p class="footer-title">Receba as Novidades e Lançamentos</p>
				<div id="form-newsletter">
					<form action="" method="POST" id="ss-form" class="form-newsletter">
						<ul>
							<li><input type="hidden" name="pageNumber" value="0" /><input type="hidden" name="backupCache" value="" /><input type="email"
								name="entry.0.single" value="" class="ss-q-short" id="entry_0" placeholder="seu@email.com" /></li>
							<li><input type="submit" name="submit" value="Quero Receber!" id="submit-newsletter" /></li>
						</ul>
					</form>
					<ul>
						<li class="ie8"><a href="" rel="nofollow">Receba as Novidades e Lançamentos</a></li>
					</ul>
				</div>
				<ul class="footer-payments">
					<li></li>
					<li></li>
				</ul>
			</div>
		</div>
	</footer>
</body>
</html>