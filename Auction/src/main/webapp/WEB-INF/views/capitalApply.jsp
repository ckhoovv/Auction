<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="EUC-KR">
<title>Insert title here</title>
<link href="resources/css/bootstrapCss/bootstrap.css" rel="stylesheet" />
<link href="resources/css/capitalStyle.css" rel="stylesheet" type="text/css" />
<script type="text/javascript">
			function chk(){
			 var req = document.form.req.checked;
			 var num = 0;
			 if(req == true){
			  num = 1;
			 }
			 if(num==1){
			  document.form.submit();
			 }else{
			  alert("�������� ����� �����ϼž� �մϴ�.");
			 }
			}
			function nochk(){
			 alert("�������� ������ �����Ͻ� �� �����ϴ�");
			location.href="capitalApply.do";}
		</script>
		
</head>
<body>
<jsp:include page="top.jsp" flush="false"></jsp:include>
	<div class ="visual">
			<div class="imageVisual">
				<img src="resources/img/capitalCall.PNG"></img></div>
					<div class="information">
					<h2><b>�⺻ ����</b></h2>
					&nbsp;&nbsp;&nbsp;�̸�
					<input type="text" name="name" id="name"/><br>
					����ó
					<input type="text" name="tel" id="tel"/>-
					<input type="text" name="tel" id="tel"/>-
					<input type="text" name="tel" id="tel"/>
					<button class="btn btn-primary"onclick ="location=windows.open('capitalResult.jsp')">��� ��û</button>
					</div>
		</div>
		
		<body>
<form class= "agree" action="" name="form" method="post">
  <tr>
   <td width="100%" height="50%" align="center">
   <p align="left">
   <span style="padding-left: 160px">
   SAJO CAPITAL �������</span>
   </p>
   <br>
   <textarea class="form-control col-sm-5"
     rows="20" cols="150" readonly>��. �����ϴ� ���������� �׸�ù°, ȸ��� ȸ���� ��, ��Ȱ�� �����, ���� ������ ������ ���� ���� ȸ������ ��� �Ʒ��� ���� �ּ����� ���������� �ʼ��׸����� �����ϰ� �ֽ��ϴ�.
ȸ������
- �̸�, �������, ����, ���̵�, ��й�ȣ, ����, ����ó(�����ּ�, �޴��� ��ȣ �� ����), ������������
��14�� �̸� �Ƶ� ȸ������
- �̸�, �������, ����, �����븮�� ����, ���̵�, ��й�ȣ, ����ó (�����ּ�, �޴��� ��ȣ �� ����), ������������
��ü���̵� ȸ������
- ��ü���̵�, ȸ���, ��ǥ�ڸ�, ��ǥ ��ȭ��ȣ, ��ǥ �̸��� �ּ�, ��ü�ּ�, ������ ���̵�, ������ ����ó, ������ �μ�/����
- �����׸� : ��ǥ Ȩ������, ��ǥ �ѽ���ȣ
��°, ���� �̿�����̳� ���ó�� �������� �Ʒ��� ���� �������� �ڵ����� �����Ǿ� ������ �� �ֽ��ϴ�.
- IP Address, ��Ű, �湮 �Ͻ�, ���� �̿� ���, �ҷ� �̿� ���
��°, ���̹� ���̵� �̿��� �ΰ� ���� �� ����� ���� �̿� �Ǵ� �̺�Ʈ ���� �������� �ش� ������ �̿��ڿ� ���ؼ��� �������� �߰� ������ �߻��� �� ������, �̷��� ��� ������ ���Ǹ� �޽��ϴ�.
��°, ����������, ����/���� �� �Ϻ� ���� �̿�� ���� ���� �ؼ��� ���� ���������� �ʿ��� ���, �Ʒ��� ���� �������� ������ �� �ֽ��ϴ�.
- �̸�, �������, ����, �ߺ�����Ȯ������(DI), ��ȣȭ�� ������ �ĺ�����(CI), �޴��� ��ȣ(����), ������ ��ȣ(������ �̿��), ��/�ܱ��� ����
�ټ�°, ���� ���� �̿� �������� �Ʒ��� ���� ���� �������� ������ �� �ֽ��ϴ�.
- �ſ�ī�� ������ : ī����, ī���ȣ ��
- �޴���ȭ ������ : �̵���ȭ��ȣ, ��Ż�, �������ι�ȣ ��
- ������ü�� : �����, ���¹�ȣ ��
- ��ǰ�� �̿�� : ��ǰ�� ��ȣ
��. �������� �������ȸ��� ������ ���� ������� ���������� �����մϴ�.
- Ȩ������, ������, �ѽ�, ��ȭ, ��� �Խ���, �̸���, �̺�Ʈ ����, ��ۿ�û
- ����ȸ��κ����� ����
- �������� ���� ���� ���� ����
   </textarea>
   <br>
   <input type="checkbox" name="req"> �������� ���� �� �̿뿡 �����մϴ�.
   </td>
  </tr>
  <tr>
   <td align="center" valign="top">
    <input  type="button" value="����/��û" onclick="chk()"/>&nbsp;&nbsp;&nbsp;
    <input type="button" value="�������� �ʽ��ϴ�" onclick="nochk()"/>
   </td>
  </tr>
 </table>
</form>
	<div class="imageVisual"><img src="resources/img/information.PNG"></img></div>
<jsp:include page="footer.jsp" flush="false"></jsp:include>
</body>
</html>