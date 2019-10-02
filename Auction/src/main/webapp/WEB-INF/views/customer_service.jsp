<%@page import="com.auction.project.DTO.CServiceDTO"%>
<%@page import="java.util.List"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
	<head>
		<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
		<title>Insert title here</title>
			<!-- css -->
			<link href="resources/css/customer_service.css" rel="stylesheet" type="text/css"/>
						
			<!-- js -->
			<script type="text/javascript" src="resources/js/jquery-1.10.1.min.js"></script>
			<script type="text/javascript" src="resources/js/jquery.easing.1.3.js"></script>
			<script type="text/javascript" src="resources/js/boardSlide.js"></script>
	</head>
	<body>
	<jsp:include page="top.jsp" flush="false"></jsp:include>
	
	<%
		List<CServiceDTO> list = (List<CServiceDTO>) request.getAttribute("list");
	%>
	
	<div class="wrap">
		<ul class="faq_list board_slide">
			<%
				for(int i=0; i<list.size() ; i++) {
					CServiceDTO csDTO = list.get(i);
			%>
			<li class="item">
				<div class="tit"><a href="#"><strong>Q</strong><%= csDTO.getC_tit() %></a></div>
				<div class="hidden">
					<div class="txt">
						<strong>A</strong>
							<%= csDTO.getC_con() %>
					</div>
				</div>
			</li>
			<%
				}
			%>
		</ul>		
	</div>
	<script type="text/javascript">
		$(document).ready(function(){
			$('.faq_list').boardSlide({
				speed : 300,
				btn : $('.faq_list .tit'),
				current : 0, // 초기 리스트 선택  , 0 = 비활성화
				openType : false,  // true = 한개만 열리기
				ease : 'easeOutCirc'
			});
		});
		/* $(document).ready(function(){
			$('.faq_list').boardSlide({
				speed : 300,
				btn : $('.faq_list .tit'),
				current : 0, // 초기 리스트 선택  , 0 = 비활성화
				openType : false,  // true = 한개만 열리기
				ease : 'easeOutCirc'
			});
		}); */
	</script>
	</body>
</html>