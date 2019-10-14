<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
	<head>
		<meta charset="UTF-8">
		<title>Insert title here</title>
		<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.4.1/jquery.min.js"></script>
  		<script type="text/javascript">
			$(function() {
				$("#submit").click(function(){
					var c_tit = $("#c_tit").val(); 
					var c_con = $("#c_con").val();
					$.ajax({
			            url:"insert_popup.do",
						type:"post",
			            data: {
			            	"c_tit" : c_tit,
			            	"c_con" : c_con
			            },
			            success: function(result){
			            	alert("추가완료");
							window.opener.location.reload();
							window.close();
			            },
			            error : function(xhr, status) {
			               alert(xhr + " : " + status);
			            }
			        });// end ajax
				})
			});
		</script>
	</head>
	<body>
		<table>
			<tr>
				<th colspan="2"> 내용 추가 </th>
			</tr>
			<tr>
				<th>제목</th>
				<td><input type="text" id="c_tit" name="c_tit"/></td>
			</tr>
			<tr>
				<th>내용</th>
				<td><input type="text" id="c_con" name="c_con"/></td>
			</tr>
			<tr align="center">
				<td colspan="2"><button id="submit">추가하기</button></td>
			</tr>
		</table>
	</body>
</html>