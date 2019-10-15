<%@page import="com.auction.project.DTO.A_productDTO"%>
<%@page import="java.util.List"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<link rel="stylesheet" type="text/css" href="resources/css/reset.css">
<link rel="stylesheet" type="text/css" href="resources/css/list_all.css">
<link rel="stylesheet" type="text/css" href="resources/css/used.css">
<link rel="stylesheet" type="text/css" href="resources/css/footer.css">
<script type="text/javascript" src="resources/js/main.js"
	charset="UTF-8"></script>

</head>
<body>
	<jsp:include page="top.jsp" flush="false"></jsp:include>
	<div id="body" class="used_body">
		<!-- CONTENTS -->
		<div id="listfocus"
			style="position: relative; left: -100000px; width: 0px; height: 0px"></div>
		<div id="contents" class="used_contents">
			<div class="used_prod_wrap used_hp">
				<div id="hdivTopSort" class="tit_wrap">
					<h3 class="tit_h3">
						<img
							src="http://pics.auction.co.kr/listing/used/2014/tit_real_list.gif"
							alt="실시간 상품">
					</h3>
					<ul class="sort_list" id="hdivSort">
						<li class="sort_item on"><a href="" onclick="">신규등록순</a></li>
						<li class="sort_item "><a href="" onclick="">마감임박순</a></li>
					</ul>
				</div>
				<div id="ItemListUpdateSlot">

					<div id="listfocus"
						style="position: relative; left: -100000px; width: 0px; height: 0px"></div>
					<div id="ucItemList_photoview" class="list_wrap">

						<div class="used_galleryview_wrap">


							<ul class="used_prod_list">

					<%
				 		 List<A_productDTO> list = (List<A_productDTO>)request.getAttribute("list");
				         	for(int i = 0; i < list.size(); i++) {
				            A_productDTO dto = list.get(i);
				     %>
								<li class="gallery_view fst" style="margin-right: 40px">

									<div class="item_img">
										<a href="test3.do?a_num=<%= dto.getA_num()%>" target="_blank">
										<img src="resources/a_productImg/<%= dto.getA_num()%>.jpg" style="height: 200px; width: 200px;">
										</a>
									</div>
									<div class="item_tit">
										<a href="test3.do?a_num=<%= dto.getA_num()%>" target="_blank"><%=dto.getA_title() %></a>
									</div>
									<div class="item_price">
										<div class="item_sell">
											<span class="tit">판매가</span> <span class="cost"><strong><%=dto.getA_endmoney() %></strong>원</span>
										</div>

									</div>
									<div class="item_icons">
										<div class="icon ic_free">
											<span><%=dto.getA_drive() %></span>
										</div>
									</div>
									<div class="item_seller">
										<span class="home"></span><a
											target="_blank"><%=dto.getA_email() %></a>
									</div>
								</li>
								<%} %>
							</ul>

						</div>

					</div>

				</div>
				<div id="PagerUpdateSlot" class="paging">

					<div class="paginate_wrap">
						<div class="paginate">

							<span class="num"> <a href="javascript:void(0)" class="on">1</a>

								<a href="javascript:void(0);"
								onclick="javascript:SearchAreaCode('Unknown','itemlist_page_num').avalue('ASN', 2).send();pvprofiler.sendEvt('click','','pagenation_2',{});SearchWebLog.log(''); Pager.onPageNumberClick(1,'','');">2</a>

								<a href="javascript:void(0);"
								onclick="javascript:SearchAreaCode('Unknown','itemlist_page_num').avalue('ASN', 3).send();pvprofiler.sendEvt('click','','pagenation_3',{});SearchWebLog.log(''); Pager.onPageNumberClick(2,'','');">3</a>

								<a href="javascript:void(0);"
								onclick="javascript:SearchAreaCode('Unknown','itemlist_page_num').avalue('ASN', 4).send();pvprofiler.sendEvt('click','','pagenation_others',{});SearchWebLog.log(''); Pager.onPageNumberClick(3,'','');">4</a>

								<a href="javascript:void(0);"
								onclick="javascript:SearchAreaCode('Unknown','itemlist_page_num').avalue('ASN', 5).send();pvprofiler.sendEvt('click','','pagenation_others',{});SearchWebLog.log(''); Pager.onPageNumberClick(4,'','');">5</a>

								<a href="javascript:void(0);"
								onclick="javascript:SearchAreaCode('Unknown','itemlist_page_num').avalue('ASN', 6).send();pvprofiler.sendEvt('click','','pagenation_others',{});SearchWebLog.log(''); Pager.onPageNumberClick(5,'','');">6</a>

								<a href="javascript:void(0);"
								onclick="javascript:SearchAreaCode('Unknown','itemlist_page_num').avalue('ASN', 7).send();pvprofiler.sendEvt('click','','pagenation_others',{});SearchWebLog.log(''); Pager.onPageNumberClick(6,'','');">7</a>

							</span> <span class="nxt"><a href="javascript:void(0);"
								onclick="javascript:SearchAreaCode('Unknown','itemlist_page_move').avalue('way', 'R').send();Pager.onPageNumberClick(1,'','');">다음</a>
								<span class="arr"></span></span> <br> <br> <br>
						</div>
					</div>
				</div>
			</div>
		</div>
	</div>
</body>
</html>