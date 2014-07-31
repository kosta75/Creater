<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html lang="ko">
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
<c:if test="${param.error != null}">
	<div>
		로그인 실패<br />
		<c:if test="${SPRING_SECURITY_LAST_EXCEPTION != null}">
			이유 : <c:out value="${SPRING_SECURITY_LAST_EXCEPTION.message}"></c:out>
		</c:if>
	</div>
</c:if>
<form action="j_spring_security_check" method="post">
	USERID : <input type="text" name="j_username" /><br />
	PASSWORD : <input type="password" name="j_password" /><br />
	<input type="submit" value="Send" />
</form>
</body>
</html>