<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
   <head>
      <meta charset="UTF-8">
      <title>Insert title here</title>
      <!-- css -->
      <link href="resources/css/signUp.css" rel="stylesheet" type="text/css" />
   </head>
   <body>
      <jsp:include page="top.jsp" flush="false"></jsp:include>
      <h1 style="margin-left: 45%">회원가입</h1>
      <h2 style="margin-left: 45%">기본정보</h2>
      <div class="table_center"style="width: 30%; margin-left: 40%">
         <form action="signUp_result.do">
            <table>
               <tr>
                  <th>이메일</th>
                  <td><input type="text" name="email"></td>
               </tr>
               <tr>
                  <th>비밀번호</th>
                  <td><input type="password" name="pw"></td>
               </tr>
               <tr>
                  <th>생일</th>
                  <td><input type="text" name="birth"></td>
               </tr>
               <tr>
                  <th>주소</th>
                  <td><input type="text" name="addr1"></td>
               </tr>
               <tr>
                  <td colspan="2"><input type="text" name="addr2" style="width: 200px; margin-left: 28%"></td>
               </tr>
               <tr>
                  <td colspan="2"><input type="text" name="addr3" style="width: 200px; margin-left: 28%"></td>
               </tr>
               <tr>
                  <th>이름</th>
                  <td><input type="text" name="name"></td>
               </tr>
               <tr>
                  <th>전화번호</th>
                  <td><input type="text" name="tel"></td>
               </tr>
               <tr align="center"> 
                  <!-- <td><input type="hidden" name="place" value="hoem"></td>
                  <td><input type="hidden" name="recipient" value="choo"></td> -->
                  <td colspan="2"><input type="submit" value="전송"></td>
               </tr>
            </table>
         </form>
      </div>
   </body>
</html>