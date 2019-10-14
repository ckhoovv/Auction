<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<jsp:include page="adminTop_login.jsp" flush="false"></jsp:include>
<b>낙찰게시판</b>
<table class="table">
	<tr align="center">
		<td class="title">경매번호</td>
		<td class="title">이메일</td>
		<td class="title">이름</td>
		<td class="title">낙찰시간</td>
		<td class="title">낙찰가격</td>
	</tr>
	<c:forEach items="${frecordList}" var="item" varStatus="i">
		<c:choose>
			<c:when test="${item.email eq '1'}">
				<tr align="center" bgcolor="RED">
			</c:when>
			<c:otherwise>
				<tr align="center">
			</c:otherwise>
		</c:choose>
					<td><c:out value="${item.a_pro_num}" /></td>
					<td><c:out value="${item.email}" /></td>
					<td><c:out value="${item.name}" /></td>
					<td><c:out value="${item.f_time}" /></td>
					<td><c:out value="${item.f_price}" /></td>
	</c:forEach>
</table>
</body>

<jsp:include page="footer.jsp" flush="false"></jsp:include>
</html>