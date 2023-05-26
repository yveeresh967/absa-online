<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<%@ taglib prefix="spring" uri="http://www.springframework.org/tags"%>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Login</title>
<script src="${pageContext.request.contextPath}/resources/js/sample.js"></script>
</head>
<body bgcolor="tomato">

	<form:form id="loginForm" modelAttribute="login" action="loginProcess"
		method="post">
		<table align="center">
			<tr>
				<td><spring:message code="label.username" /></td>
				<td><form:input path="username" name="username" id="username" /></td>
				<td><form:errors path="username" /></td>
			</tr>
			<tr>
				<td><spring:message code="label.password" /></td>
				<td><form:password path="password" name="password"
						id="password" /></td>
				<td><form:errors path="password" /></td>
			</tr>
			<tr>
				<td></td>
				<td align="left"><form:button id="login" onclick="doAction()"
						name="login">

						<spring:message code="label.login" />
					</form:button></td>
			</tr>

			<tr></tr>
			<tr>
				<td></td>
				<td><a href="/absa-web-app">Home</a></td>
			</tr>
		</table>
	</form:form>
	<table align="center">
		<tr>
			<td style="font-style: italic; color: red;">${message}</td>
		</tr>
	</table>

</body>
</html>