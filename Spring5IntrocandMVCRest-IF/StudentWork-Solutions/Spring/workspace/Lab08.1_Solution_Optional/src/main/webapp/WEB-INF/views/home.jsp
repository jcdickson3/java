<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>

<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>

<!doctype html>
<html lang="en">

<head>
<meta charset="utf-8" />
<title>JavaTunes</title>
<link rel="stylesheet"
	href="${pageContext.servletContext.contextPath}/resources/style.css"
	type="text/css" />
<link href="http://fonts.googleapis.com/css?family=Copse:regular"
	rel="stylesheet" type="text/css">
</head>

<body>
	<div id="wrapper">
		<!-- start of #wrapper -->

		<nav>
			<!-- top nav -->
			<div class="menu">
				<ul>
					<li><a href="${pageContext.request.contextPath}">Home</a></li>
					<li><a href="#">Cart</a></li>
					<li><a href="#">Checkout</a></li>
				</ul>
			</div>
		</nav>
		<!-- end of top nav -->

		<header>
			<!-- header -->

			<h1>JavaTunes</h1>
		</header>
		<!-- end of header -->

		<section id="main">
			<!-- #main content area -->

			<!-- Search Form Section -->
			<section class="singlecol">
				<article>

					<p>
						<img
							src="${pageContext.servletContext.contextPath}/resources/images/music.png"
							width="64" height="64" alt="tag" class="alignleft">
					</p>

					<h2>Search</h2>

					<!-- DONE: Complete form tag to include form taglib, and set the model attribute properly -->
					<form:form modelAttribute="search">
			
	 			        <!-- DONE: Finish path attribute to bind to keyword property -->
						Keyword Search: <form:input size='20' path='keyword'/>  
						
		  				<%-- DONE Optional part --%>					     
						 Category Search: <form:select path="category" items="${categories}"/>
						
						<input type='submit' name='Submit' value='Go'/>
							
						 <!-- DONE: Complete form tag to include form taglib -->   
					</form:form>
					
				</article>
			</section>


			<!-- Search Results Section -->
			<section class="singlecol">
				<article>
					<table style="width: 100%;">
					
					    <!-- DONE: Finish items initialization to refer to matches property of search bean -->
						<c:forEach items="${search.matches}" var="i">
						
							<tr>
							<td>${i.id}</td>
							<td>${i.title}</td>
							<td>${i.artist}</td>
							<td>${i.price}</td>
							<td>${i.musicCategory.description}</td>
							</tr>
						</c:forEach>
					</table>
				</article>
			</section>

		</section>
		<!-- end of #main content -->

		<footer>
			<section id="footer-area">
					<aside class="footer-segment first">
						<h3>The Java-Powered Online Music Store</h3>
					</aside>
					
				<section id="footer-outer-block">

				</section>
				<!-- end of footer-outer-block -->

			</section>
			<!-- end of footer-area -->
		</footer>

	</div>
	<!-- end of #wrapper -->
</body>
</html>
