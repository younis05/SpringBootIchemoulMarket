<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
  <%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%> 
  <%@ page import="java.util.Date"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/functions" prefix="fn" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Home</title>
<jsp:include page="layouts/header.jsp"></jsp:include>
<link rel="stylesheet" href="${pageContext.request.contextPath}/css/style2.css" />
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
<div class="container">
  <div class="row">
   <h3 class="text-center" style="color:white;top:5px;text-align: center;">welcome to ichemoul market</h3>
  </div>
</div>
	<!-- top Products -->
	<div class="ads-grid py-sm-5 py-4">
		<div class="container-fluid py-xl-4 py-lg-2">
			<div class="row">
				<!-- product left -->
				<div class="agileinfo-ads-display col-lg-12">
					<div class="wrapper">
						<!-- first section -->
						<div class="px-sm-4 px-3 py-sm-5 py-3 mb-4">
							<c:if test="${not empty products}"><h3 class="heading-tittle text-center font-italic">All Products</h3></c:if>
							<div class="row">
							
				<c:choose>	
					<c:when test="${not empty products}">
					<c:forEach var="product"  items="${products}" >
					<div class="col-md-3 product-men mt-5" style="width:100%;">
									<div class="men-pro-item simpleCart_shelfItem">
										<div class="men-thumb-item text-center">
											<img src="${pageContext.request.contextPath}${product.image}" style="width:100px;height:80px" class="img-fluid">
											
										</div>
										<div class="item-info-product text-center border-top mt-4">
											<h4 class="pt-1">
												<a href="${pageContext.request.contextPath}/product/productdetails?code=${product.code}">${product.name}</a>
											</h4>
											<div class="info-product-price my-2">
												<span class="item_price">&#x20b9;${product.price}</span>
												<del>&#x20b9;${product.mrpPrice}</del>
											</div>
										    
											<div class="info-product-price my-2">
												<span class="item_price"><fmt:formatDate pattern="dd-MM-yyyy"  value="${product.createDate}"/></span>
											</div>
											
											<div class="info-product-price my-2">
												<span class="item_price"> Days: ${product.day} -Hour:${product.hour} -Minute:${product.minute}</span>
											</div>
								           
											<div class="info-product-price my-2">
										<a href="${pageContext.request.contextPath}/product/productdetails?code=${product.code}">	
										<input type="button" class="btn btn-outline-success" value="Details"/> </a>
											</div>
										</div>
									</div>
								</div>
								
								</c:forEach>
					</c:when>	
					<c:otherwise>
						<c:if test="${empty products}"><div class="col-12 text-center"><h1>THERE IS NO ITEMS</h1></div></c:if>
				</c:otherwise>
			</c:choose>
					</div>
						</div>
						<c:choose>
					<c:when test="${count > product_size}">
						<div class="col-12 text-center">
							<b><a class="btn btn-success" style="color:white;border-radius: 15px;" href="${pageContext.request.contextPath}/products/1">... LOAD MORE ITEMS...</a></b>
						</div>
					</c:when>
					<c:otherwise>
					<c:if test="${pageNo > 0}">
						<div class="col-sm-12 text-center">
							<b><a class="btn btn-success" style="color: white;border-radius: 15px;" href="${nextUrl}">... LOAD MORE ITEMS ...</a></b>&nbsp;
							<b><a class="btn btn-danger" href="${backUrl}" style="color: white;border-radius: 15px;">... GO BACK ...</a></b>
						</div>
					</c:if>
					<c:if test="${empty products}">
						<div class="col-12 text-center">
							<b><a class="btn btn-danger" href="${header.referer}" style="color: white;border-radius: 15px;">... GO BACK ...</a></b>
						</div>
					</c:if>
					</c:otherwise>
				</c:choose>
					</div>
				</div>
			</div>
		</div>
	</div>

<section></section>

<jsp:include page="layouts/footer.jsp"></jsp:include> 
</body>
</html>