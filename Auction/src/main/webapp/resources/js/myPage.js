/**
 * 
 */


$(function() {
   /* 회원 정보 수정 */
   $("#member_update").click(function() {
      location.href='myPage_member_update.do';
   });
   
   /* 구매 이력 조회 */
   $("#product_select").click(function() {
      location.href='myPage_product_select.do';
   });
   
   /* 기부 이력 조회 */
   $("#dona_select").click(function() {
      location.href='myPage_dona_select.do';
   });
})