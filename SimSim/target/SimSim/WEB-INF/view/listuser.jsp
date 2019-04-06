<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@taglib uri="http://www.springframework.org/security/tags" prefix="security"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>

<security:authorize access="isAuthenticated()">
<security:authentication property="principal" var="user"/>
Wellcome ${user.username}
<a href="<c:url value='/dangxuat'/>" >Đăng xuất</a>
</security:authorize>
	<h2>DANH SACH USER</h2>
	<p>
	<table>
		<tr>
			<th>id</th>
			<th>username</th>
			<th>password</th>
			<th>fName</th>
			<th>lName</th>
			<th>gTinh</th>
		</tr>
		<c:if test="${listU != null}">
			<c:forEach items="${listU}" var="u">
				<tr>
					<td>${u.id}</td>
					<td>${u.username }</td>
					<td>${u.password }</td>
					<td>${u.fName }</td>
					<td>${u.lName }</td>
					<td>${u.sex }</td>
				</tr>
			</c:forEach>
		</c:if>
	</table>
	</p>
</body>
</html>