<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt"%>
<%@ taglib uri="http://www.springframework.org/tags" prefix="s"%>

<!DOCTYPE html>
<html>
<head>
<c:url value="/" var="contextPath" />
<meta charset="utf-8" />
<meta http-equiv="X-UA-Compatible" content="IE=edge,chrome=1" />
<meta name="viewport" content="width=device-width, initial-scale=1, maximum-scale=1" />
<link rel="icon" href="//cdn.shopify.com/s/files/1/0155/7645/t/177/assets/favicon.ico?11981592617154272979" type="image/ico" />
<link href="https://plus.googlecom/108540024862647200608" rel="publisher" />

<title>Hq's nacionais e internacionais (Vários tipos de formatos) - Constantine Quadrinhos</title>


</head>
<body>

	<header id="layout-header">
		<div class="clearfix container">
			<a href="/" id="logo"> </a>
			<div id="header-content">
				<nav id="main-nav">

					<ul class="clearfix">
						<li>
							<a href="/carrinho" rel="nofollow">
								Carrinho (${carrinhoCompras.quantidade })
							</a>
						</li>
						<li><a href="/pages/sobre-a-casa-do-codigo" rel="nofollow">Sobre Nós</a></li>
						<li><a href="/pages/perguntas-frequentes" rel="nofollow">Perguntas Frequentes</a></li>
					</ul>
				</nav>
			</div>
		</div>
	</header>
	

	<article id="livro-css-eficiente">
		<header id="product-highlight" class="clearfix">
			
		</header>

		<section class="buy-options clearfix">
			<form action='<c:url value="/carrinho/add" />' method="post" class="container">
				<input type="hidden" value="${produto.id }" name="produtoId" >
				<ul id="variants" class="clearfix">
					<c:forEach items="${produto.precos }" var="preco">
						<li class="buy-option">
							<input type="radio" name="tipoPreco" class="variant-radio" id="tipoPreco" value="${preco.tipo }" checked="checked" /> 
							<label class="variant-label" >${preco.tipo }</label> 
							
							<p class="variant-price">${preco.valor }</p>
						</li>
					</c:forEach>
				</ul>
				<button type="submit" class="submit-image icon-basket-alt" title="Compre Agora ${produto.titulo }"></button>
			</form>
		</section>

		<div class="container">
			<section class="summary">
				<ul>
					<li>
						<h3>E muito mais... <a href='/pages/sumario-java8'>veja o sumário</a>.</h3>
					</li>
				</ul>
			</section>

			<section class="data product-detail">
				<h2 class="section-title">Dados do livro:</h2>
				<p>
					Número de páginas: <span>${produto.paginas}</span>
				</p>
				<p></p>
				<p>Data de publicação: 
					<span><fmt:formatDate value="${produto.dataLancamento.time }" pattern="dd/MM/yyyy"/></span>
				</p>
				<p>
					Encontrou um erro? <a href='/submissao-errata' target='_blank'>Submeta uma errata</a>
				</p>
			</section>
		</div>
	</article>

	<footer id="layout-footer">
		<div class="clearfix container">

			<div id="collections-footer">
				<!-- cdc-footer -->
				
				
				<p class="footer-title">Outros Assuntos</p>
				
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