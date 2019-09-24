<%@ page language="java" contentType="text/html; charset=EUC-KR"
   pageEncoding="UTF-8"%>
<!DOCTYPE html>
<!-- <html xmlns="http://www.w3.org/1999/xhtml"> -->
<html>
	<head>
		<meta charset="UTF-8">
		<title>-사조 경매-</title>
		<link rel="stylesheet" href="https://cdn.jsdelivr.net/bxslider/4.2.12/jquery.bxslider.css">
		<link rel="stylesheet" href="http://cdn.jsdelivr.net/npm/xeicon@2.3.3/xeicon.min.css">
		<link href="resources/css/style.css" rel="stylesheet" type="text/css" />
		<link href="resources/css/top_login.css" rel="stylesheet" type="text/css" />
		<script src="https://code.jquery.com/jquery-1.11.3.js"></script>
		<script src="https://cdn.jsdelivr.net/bxslider/4.2.12/jquery.bxslider.min.js"></script>
    	<script type="text/javascript" src="resources/main.js" charset="UTF-8"></script>
	</head>
	<body>
		<!-- --------------경매TOP부분---------------->
		<div class="nav">
			<i class="xi-unlock-o"></i>
			<ul style="list-style: none; margin: 0px; padding: 0px;">
				<li style="display: flex; align-items: center;">
			        <form id="form1" runat="server">
			        	<div>
			        		<span id="clock"></span> <br />
			        	</div>
			        </form>
					<p>
						<a class="nav_a" href="#" style="text-decoration: underline;">[구매]</a>
						<a class="nav_a" href="#" id="auccount">입찰 중 0건</a>
					</p>
					<p>
						<a class="nav_a" href="#" id="request">입금요청 0건</a>
					</p>
					<p>
						<a class="nav_a" href="#" id="sell" style="text-decoration: underline;">[판매]</a>
					</p>
					<p>
						<a class="nav_a" href="#" id="request">판매중 0건</a>
					</p>
				</li>
			</ul>
	  <div class="container_more">
	  <!-- Btn-->
	  <button class="btn"><span>더보기</span>
	    <ul class="dropdown" style="margin: 0; padding: 0;">
	      <li class="active">
		      <a class="drop_link" href="#">구매종료(낙찰)
		      	<span class="buyCnt">0건</span>
		      </a>
	      </li>
	      <li>
		      <a class="drop_link" href="#">총 보유금액
			      <span class="money">10000원</span>
			  </a>
		  </li>
	      <li>
		      <a class="drop_link" href="#">총 후원금액 
		      	<span class="donation_money">0원</span>
		      </a>
	      </li>
	      <li>
		      <a class="drop_link" href="#">응모권
		      	<span class="donation_money">0개</span>
		      </a>
	      </li>
	      <li>
		      <a class="drop_link" href="#">쪽지
		      	<span>0건</span>
		      </a>
	      </li>
	      <li>
		      <a class="drop_link" href="#">1:1문의사항
		      	<span>0건</span>
		      </a>
	      </li>
	      <li><a class="drop_link" href="#">나의 정보수정</a></li>
	    </ul>
	  </button>
	</div> 
	        <ul class="nav-ul">
	        	<li class="nav-li">
	        		<p>
	        			<a class="nav_a" href="#">로그인된 아이디</a> 
	        			<a class="nav_a" href="#">회원가입</a> 
	        			<a class="nav_a" href="#">마이페이지</a>
	        		</p>
	        	</li>
	        </ul>
	    </div>
	    <div class="menubar" style="height: 100px;">
	    	<ul>
	    		<li><a href="#"><img class="auction" src="resources/img/img1.PNG"></a></li>
	    		<li style="width: 150px;">
	    			<a href="#">온라인경매</a>
	    			<ul class="li-2-submenu">
	    				<li><a href="#">민영경매</a></li>
	    				<li><a href="#">동원경매</a></li>
	    			</ul>
	    		</li>
	    		<li style="width: 150px;">
	    			<a href="#">전문쇼핑몰</a>
	    			<ul class="li-2-submenu">
	    				<li><a href="#">민영경매</a></li>
	    				<li><a href="#">동원경매</a></li>
	    			</ul>
	    		</li>
	    		<li style="width: 150px;">
	    			<a href="#">고객센터</a>
	    			<ul class="li-2-submenu">
	    				<li><a href="#">정은경매</a></li>
	    				<li><a href="#">정은경매</a></li>
	    			</ul>
	    		</li>
	    		<li style="width: 150px;">
	    			<a href="#">물품등록</a>
	    			<ul class="li-2-submenu">
	    				<li><a href="#">기훈경매</a></li>
	    				<li><a href="#">주호경매</a></li>
	    			</ul>
	    		</li>
	    		<li style="width: 150px;">
	    			<a href="donation_main.jsp">기부</a>
	    			<ul class="li-2-submenu">
	    				<li><a href="donation_main.jsp">기부</a></li>
	    				<li><a href="event_main.jsp">응모</a></li>
	    			</ul>
	    		</li>
    			<li>
    				<select style="margin-left: 20px;">
	    				<option value=1>전체</option>
	    				<option value=1>물품제목</option>
	    				<option value=1>판매자ID</option>
	    			</select>
	    		</li>
	    		<li style="margin-left: 20px; vertical-align: middle;">
	    			<form action="" method="post">
	    				<input type="text" name="search"> 
	    				<input type="submit" value="검색">
	    			</form>
	    		</li>
		    </ul>
		</div>
	</body>
</html>