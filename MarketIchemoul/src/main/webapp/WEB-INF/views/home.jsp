<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    <%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
    <%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<!DOCTYPE html>
<html>
<head>
<c:if test="${empty aemail}">
	<c:redirect url="${pageContext.request.contextPath}/user/sign-in"/>  
</c:if>
	<title>Admin Home </title>
	<jsp:include page="layouts/header.jsp"></jsp:include>
<link rel="stylesheet" href="${pageContext.request.contextPath}/css/style2.css" />
</head>
<body>
	<jsp:include page="layouts/adm_menu.jsp"></jsp:include>
	<div class="page-head_agile_info_w3l"></div>
	<!-- page -->
	<div class="services-breadcrumb">
		<div class="agile_inner_breadcrumb">
			<div class="container">
				<ul class="w3_short">
					<li>
						<a href="${pageContext.request.contextPath}/admin/home">Home</a>
						<i>|</i>
					</li>
					<li>Admin Home</li>
				</ul>
			</div>
		</div>
	</div>
	<!-- //page -->
 <section></section>
	<jsp:include page="layouts/footer.jsp"></jsp:include>
	<!-- Bootstrap core JavaScript-->
<!-- Page level plugin JavaScript-->
<script src="https://cdn.datatables.net/1.10.20/js/jquery.dataTables.min.js"></script>
<script src="https://cdn.datatables.net/1.10.20/js/dataTables.bootstrap4.min.js"></script>

</body>
</html>
