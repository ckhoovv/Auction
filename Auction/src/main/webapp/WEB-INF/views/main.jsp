<%@ page language="java" contentType="text/html; charset=EUC-KR"
   pageEncoding="UTF-8"%>
<!DOCTYPE html>
<!-- <html xmlns="http://www.w3.org/1999/xhtml"> -->
<html>
	<head>
		<meta charset="UTF-8">
		<title>-사조 경매-</title> 
		<script src="https://code.jquery.com/jquery-1.11.3.js"></script>
		<script src="https://cdn.jsdelivr.net/bxslider/4.2.12/jquery.bxslider.min.js"></script>
		<link rel="stylesheet" href="https://cdn.jsdelivr.net/bxslider/4.2.12/jquery.bxslider.css">
		<link rel="stylesheet" href="http://cdn.jsdelivr.net/npm/xeicon@2.3.3/xeicon.min.css">
		<link href="resources/css/style.css" rel="stylesheet" type="text/css" />
    	<script type="text/javascript" src="resources/js/main.js" charset="UTF-8"></script>
    	<script type="text/javascript" src="resources/js/signIn.js" charset="UTF-8"></script>
	</head>
	<body>
		<jsp:include page="top.jsp" flush="false"></jsp:include>
		<!-- --------------경매body부분---------------->
		<div class="home__slider">
			<div class="bxslider">
				<div> <img src="resources/img/k1.jpg" alt="그림1"> </div>
				<div> <img src="resources/img/k2.jpg" alt="그림2"> </div>
				<div> <img src="resources/img/k3.jpg" alt="그림2"> </div>
				<div> <img src="resources/img/k4.jpg" alt="그림2"> </div>
			</div>
		</div>
		<div class="items">
			<ul class="itemul">
				<li class="itemBar"><h2 class="sajo">사조 추천경매</h2></li>
				<li class="totalview"><a href="#"><img src="resources/img/totalview.PNG"></a></li>
			</ul>
		</div>
		<hr width="80%">
		
		<div class="itembox">
		<%
			/* List<DTO> attDto = new List();
			arrDto = DAO.getProductList(); */
			for(int i =0; i<10; i++){
		%>
		<div class="box">
			<table border="1">
				<tr>
					<td>
						<i> <a href="#"><img alt="" src="resources/img/cola.jpg"></a></i>
					</td>
				</tr>
				<tr>
					<td>${arrDto.title}</td>
	            </tr>
	            <tr>
	               <td>50000원</td>
	            </tr>
	            <tr>
	            	<td><span>입찰 <i>0</i></span> <span>조회<i>57</i></span></td>
	            </tr>
	            <tr>
	            	<td></td>
	            </tr>
	            <tr>
	            	<td>9시간38분</td>
	            </tr>
	        </table>
	    </div>
	    <%
	    	}
		%>
		</div>
		<div class="items">
			<ul class="itemul">
				<li class="itemBar"><h2 class="sajo">사조 인기경매</h2></li>
				<li class="totalview"><a href="#"><img src="resources/img/totalview.PNG"></a></li>
			</ul>
		</div>
		<hr width="80%">
		<div class="itembox">
		
		<%
			/* 나중에 db에 있는거 이런식으로for문????????????????????????????? */
			/* List<DTO> attDto = new List();
			arrDto = DAO.getProductList(); */
			for(int i =0; i<10; i++){
		%>
		<div class="box">
			<table border="1">
				<tr>
					<td><i> <a href="#"><img alt="" src="resources/img/cola.jpg"></a>	</i></td>
				</tr>
				<tr>
					<td>${arrDto.title}</td>
				</tr>
				<tr>
					<td>50000원</td>
				</tr>
				<tr>
	               <td><span>입찰 <i>0</i></span> <span>조회<i>57</i></span></td>
	            </tr>
	            <tr>
	               <td></td>
	            </tr>
	            <tr>
	            	<td>9시간38분</td>
	            </tr>
	         
	        </table>
		</div>
		<%
			}
		%>
		</div>
		<!-- --------------경매footer부분-------------- -->
		<jsp:include page="footer.jsp" flush="false"></jsp:include>
	</body>
</html>