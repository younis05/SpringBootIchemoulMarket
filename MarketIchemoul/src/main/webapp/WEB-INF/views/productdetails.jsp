<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    <%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html>
<html>
<head>
	<title>Dharmesh General Store | Product </title>
	<jsp:include page="layouts/header.jsp"></jsp:include>
	<link rel="stylesheet" href="${pageContext.request.contextPath}/css/flexslider.css" type="text/css" media="screen" />
</head>
<body>
<c:choose>
 <c:when test="${not empty email}">
 <jsp:include page="layouts/cus_menu.jsp"></jsp:include>
 </c:when>
 <c:otherwise>
 <jsp:include page="layouts/menu.jsp"></jsp:include>
 </c:otherwise>
</c:choose>
	<!-- banner-2 -->
	<div class="page-head_agile_info_w3l">

	</div>
	<!-- //banner-2 -->
	<!-- page -->
	<div class="services-breadcrumb">
		<div class="agile_inner_breadcrumb">
			<div class="container">
				<ul class="w3_short">
					<li>
						<a href="${pageContext.request.contextPath}/home">Home</a>
						<i>|</i>
					</li>
					<li>Product Details</li>
				</ul>
			</div>
		</div>
	</div>
	<!-- //page -->
	<!-- Single Page -->
	<div class="banner-bootom-w3-agileits py-5">
		<div class="container py-xl-4 py-lg-2">
			<!-- tittle heading -->
			<h3 class="tittle-w3l text-center mb-lg-5 mb-sm-4 mb-3">
				<span>P</span>roduct
				<span>V</span>iew</h3>
			<!-- //tittle heading -->
			<div class="row">
				<div class="col-lg-5 col-md-8 single-right-left ">
					<div class="grid images_3_of_2">
						<div class="flexslider">
						<div class="thumb-image">
							<img src="${pageContext.request.contextPath}${product.image}" 
							data-imagezoom="true" class="img img-responsive img-fluid" alt=""> 
						</div>
							<div class="clearfix"></div>
						</div>
					</div>
				</div>

				<div class="col-lg-7 single-right-left simpleCart_shelfItem">
					<h3 class="mb-3">${product.name}</h3>
					<p class="mb-3">
						<span class="item_price">&#x20b9;${product.price}</span>
						<del>&#x20b9;${product.mrpPrice}</del>
						<label>Discount</label>
					</p>
					<div class="product-single-w3l">
						<p class="my-sm-4 my-3">
							${product.description}
						</p>
					</div>
					<div class="single-infoagile">
						<ul>
							<li class="mb-3">
								info test1.
							</li>
							<li class="mb-3">
								info test2.
							</li>
						</ul>
					</div>
					 <div class="row">
                        <a href="${pageContext.request.contextPath}/home">
                        <input type="submit" class="btn btn-outline-success" value="Back"/> </a>
                     </div>
				</div>
			</div>
		</div>
	</div>
	<section></section>
	<jsp:include page="layouts/footer.jsp"></jsp:include>
	<!-- //Single Page -->
	<!-- imagezoom -->
	<script src="${pageContext.request.contextPath}/js/imagezoom.js"></script>
	<!-- //imagezoom -->
	<!-- flexslider -->
	<script src="${pageContext.request.contextPath}/js/jquery.flexslider.js"></script>
	<script>
		// Can also be used with $(document).ready()
		$(window).load(function () {
			$('.flexslider').flexslider({
				animation: "slide",
				controlNav: "thumbnails"
			});
		});
	</script>
	<!-- //FlexSlider-->
</body>
</html>