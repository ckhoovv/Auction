<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<jsp:include page="adminTop_login.jsp" flush="false"></jsp:include>
<b>전체 중고 게시물</b>
<table class="table">
	<tr align="center">
		<td class="title">등록자</td>
		<td class="title">물품번호</td>
		<td class="title">물품이름</td>
		<td class="title">가격</td>
		<td class="title">시작년도</td>
		<td class="title">시작월</td>
		<td class="title">시작날</td>
		<td class="title">시작시</td>
		<td class="title">시작분</td>
		<td class="title">시작초</td>
		<td class="title">마감년도</td>
		<td class="title">마감월</td>
		<td class="title">마감날</td>
		<td class="title">마감시</td>
		<td class="title">마감분</td>
		<td class="title">마감초</td>
		<td class="title">날짜</td>
		<td class="title">수정 / 삭제</td>
	</tr>
	<c:forEach items="${aproList}" var="item" varStatus="i">
		<c:choose>
			<c:when test="${item.a_pro_register eq '1'}">
				<tr align="center" bgcolor="RED">
			</c:when>
			<c:otherwise>
				<tr align="center">
			</c:otherwise>
		</c:choose>
					<td><c:out value="${item.a_pro_register}" /></td>
					<td><c:out value="${item.a_pro_num}" /></td>
					<td><c:out value="${item.a_pro_name}" /></td>
					<td><c:out value="${item.a_pro_price}" /></td>
					<td><c:out value="${item.a_pro_start_yy}" /></td>
					<td><c:out value="${item.a_pro_start_mm}" /></td>
					<td><c:out value="${item.a_pro_start_dd}" /></td>
					<td><c:out value="${item.a_pro_start_hh}" /></td>
					<td><c:out value="${item.a_pro_start_mi}" /></td>
					<td><c:out value="${item.a_pro_start_ss}" /></td>
					<td><c:out value="${item.a_pro_end_yy}" /></td>
					<td><c:out value="${item.a_pro_end_mm}" /></td>
					<td><c:out value="${item.a_pro_end_dd}" /></td>
					<td><c:out value="${item.a_pro_end_hh}" /></td>
					<td><c:out value="${item.a_pro_end_mi}" /></td>
					<td><c:out value="${item.a_pro_end_ss}" /></td>
					<td><c:out value="${item.a_pro_date}" /></td>
					<td><a href="<c:url value='admin_apro_delete.do?a_pro_register=${ item.a_pro_register }' />" class="btn btn-lg btn-default">삭제</a></td>
					<td><button type="button" onclick="clickUpdateButton(${item.a_pro_register})">수정</button></td>  <!-- 민영 페이지로 바꿀 것 -->
					<%-- <td><a href="<c:url value='admin_address_update_pop.do?email=${ item.email }' />" class="btn btn-lg btn-default">수정</a></td> --%>
				</tr>
	</c:forEach>
</table>
</body>

<jsp:include page="footer.jsp" flush="false"></jsp:include>
<script>
	function clickUpdateButton(email) {

		var url = 'admin_address_update_pop.do?email=' + email; <%-- 민영 페이지로 바꿀 것 --%>
		var name = 'myPopup';
		var option = 'scrollbars=no, left=400, top=200, width=700, height=400';
		
		// option 변수를 사용하지 않고 직접 옵션을 넣어줘도 된다.
		window.open(url, name, option);
	}
</script>
</html>