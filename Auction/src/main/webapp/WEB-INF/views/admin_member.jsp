<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<jsp:include page="adminTop_login.jsp" flush="false"></jsp:include>
<b>전체 회원정보</b>
<table class="table">

	<tr align="center">
		<td class="title">이메일</td>
		<td class="title">이름</td>
		<td class="title">전화번호</td>
		<td class="title">생년월일</td>
		<td class="title">수정 </td>
		<td class="title">삭제 </td>
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
					
					<td><button class="btn btn-primary" type="button" onclick="clickUpdateButton('${item.email}')">수정</button></td>
					<td><button class="btn btn-primary" type="button" onclick="clickDeleteButton('${item.email}')">삭제</button></td>
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
	
	function clickDeleteButton(email) {

		if (!confirm("삭제하시겠습니까?")) {
	        return;
	    }
		
	    $.ajax({
	        url: "admin_member_delete.do?email=" + email,
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