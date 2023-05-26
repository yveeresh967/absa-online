<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %> 
<html>
<head>
<link rel="stylesheet" type="text/css"
	href="${pageContext.request.contextPath}/resources/css/welcome.css" />
</head>
<body bgcolor="#FFCCFF">
<%@ include file="/WEB-INF/views/header.jsp" %>
	<%@ include file="/WEB-INF/views/menu.jsp" %>
		<div class="middlenav">
			<input type="text" name="search" id="search">
			<button class="btn btn-sm" color="black">Search</button>
		</div>
	</div>
	
	<div align="center" class="text">
		<h2>
			A warm Welcome to Elite Software Training Institute!! <b>Mr/Ms
				${firstname}</b>
		</h2>
		<p>Start your IT career with ELITE As Java FullStack Developer</p>

	</div>
	
	<div bgcolor="#FFCCFF" class="logo">
		<img
			src="${pageContext.request.contextPath}/resources/images/image1.jpg"
			width="100px" height="100px" />&nbsp;&nbsp; <img
			src="${pageContext.request.contextPath}/resources/images/elite.png"
			width="100px" height="100px" />&nbsp;&nbsp; <img
			src="${pageContext.request.contextPath}/resources/images/flag.png"
			width="100px" height="100px" />&nbsp;&nbsp;
	</div>
	<%@ include file="/WEB-INF/views/footer.jsp" %>
</body>
</html>