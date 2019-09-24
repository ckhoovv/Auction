<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<jsp:include page="adminTop_login.jsp" flush="false"></jsp:include>
<b>전체 회원정보</b>
<table>
	<tr align="center">
		<td class="title">이메일</td>
		<td class="title">이름</td>
		<td class="title">전화번호</td>
		<td class="title">생년월일</td>
		<td class="title">수정 / 삭제 칸</td>
	</tr>
	<c:forEach items="${memberList}" var="item" varStatus="i">
		<c:choose>
			<c:when test="${item.email eq '1'}">
				<tr align="center" bgcolor="RED">
			</c:when>
			<c:otherwise>
				<tr align="center">
			</c:otherwise>
		</c:choose>
					<td><c:out value="${item.email}" /></td>
					<td><c:out value="${item.name}" /></td>
					<td><c:out value="${item.tel}" /></td>
					<td><c:out value="${item.birth}" /></td>
					<td><a href="<c:url value='admin_member_delete.do?email=${ item.email }' />" class="btn btn-lg btn-default">삭제</a></td>
					<td><button type="button" onclick="clickUpdateButton(${item.email})">수정</button></td>
					<%-- <td><a href="<c:url value='admin_address_update_pop.do?email=${ item.email }' />" class="btn btn-lg btn-default">수정</a></td> --%>
				</tr>
	</c:forEach>
</table>
</body>

<jsp:include page="footer.jsp" flush="false"></jsp:include>
<script>
	function clickUpdateButton(email) {

		var url = 'admin_address_update_pop.do?email=' + email;
		var name = 'myPopup';
		var option = 'scrollbars=no, left=400, top=200, width=700, height=400';
		
		// option 변수를 사용하지 않고 직접 옵션을 넣어줘도 된다.
		window.open(url, name, option);
	}
</script>
</html>