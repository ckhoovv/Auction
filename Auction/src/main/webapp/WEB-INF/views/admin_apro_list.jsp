<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<jsp:include page="adminTop_login.jsp" flush="false"></jsp:include>
<b>전체 중고 게시물</b>
<table class="table">
	<tr align="center">
		<td class="title">물품번호</td>
		<td class="title">물품제목</td>
		<td class="title">시작가격</td>
		<td class="title">마감가격</td>
		<td class="title">마감월</td>
		<td class="title">마감일</td>
		<td class="title">마감시</td>
		<td class="title">마감분</td>
		<td class="title">배송방법</td>
		<td class="title">조회수</td>
		<td class="title">수정</td>
		<td class="title">삭제</td>
	</tr>
	<c:forEach items="${aproList}" var="item" varStatus="i">
		<c:choose>
			<c:when test="${item.a_num eq '1'}">
				<tr align="center" bgcolor="RED">
			</c:when>
			<c:otherwise>
				<tr align="center">
			</c:otherwise>
		</c:choose>
					<td><c:out value="${item.a_num}" /></td>
					<td><c:out value="${item.a_title}" /></td>
					<td><c:out value="${item.a_startmoney}" /></td>
					<td><c:out value="${item.a_endmoney}" /></td>
					<td><c:out value="${item.a_endmonth}" /></td>
					<td><c:out value="${item.a_endday}" /></td>
					<td><c:out value="${item.a_endhour}" /></td>
					<td><c:out value="${item.a_endmin}" /></td>
					<td><c:out value="${item.a_drive}" /></td>
					<td><c:out value="${item.a_viewcount}" /></td>
					<td><button class="btn btn-primary" type="button" onclick="clickUpdateButton(${item.a_num})">수정</button></td>  <!-- 민영 페이지로 바꿀 것 -->
					<td><button class="btn btn-primary" type="button" onclick="clickDeleteButton('${item.a_num}')">삭제</button></td>
	</c:forEach>
</table>
</body>

<jsp:include page="footer.jsp" flush="false"></jsp:include>
<script>
	function clickUpdateButton(a_num) {

		var url = 'test4.do?a_num=' + a_num; <%-- 민영 페이지로 바꿀 것 --%>
		var name = 'myPopup';
		var option = 'scrollbars=no, left=400, top=200, width=700, height=400';
		
		// option 변수를 사용하지 않고 직접 옵션을 넣어줘도 된다.
		window.open(url, name, option);
	}
	
	function clickDeleteButton(a_pro_register) {

		if (!confirm("삭제하시겠습니까?")) {
	        return;
	    }
		
	    $.ajax({
	        url: "admin_apro_delete.do?email=" + a_pro_register,
	        type:"post",
	        success: function(result){
	            if (result=="OK") {
	                alert("삭제되었습니다.");
	                location.reload();
	            } else{
	                alert("오류가 발생하였습니다.");
	            }
	        }
	    })
	}
</script>
</html>