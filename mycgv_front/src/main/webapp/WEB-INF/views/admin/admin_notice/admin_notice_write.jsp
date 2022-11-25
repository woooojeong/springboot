<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
  
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>CGV</title>
<link rel="stylesheet"  href="http://localhost:9000/css/mycgv.css">
<script src="http://localhost:9000/js/jquery-3.6.0.min.js"></script>
<script src="http://localhost:9000/js/mycgv_jquery.js"></script>
</head>
<body>
	<!-- Header Include -->
	<iframe src="http://localhost:9000/header " width="100%" height="160px" scrolling="no" frameborder=0 ></iframe>
	
	
	<!---------------------------------------------->
	<!--------------- Content ----------------------->
	<!---------------------------------------------->
	<div class="content">
		<h1>공지사항-글쓰기</h1>
		<form name="boardWriteForm" action="/admin_notice_write" method="post" enctype="multipart/form-data">
			<ul>
				<li>
					<label>제목</label>
					<input type="text" name="ntitle" id="ntitle">
				</li>
				<li>
					<label>내용</label>
					<textarea name="ncontent"></textarea>
				</li>
				<li>
					<label>파일첨부</label>
					<input type="file" name="file1">
				</li>
				<li>
					<button type="button" class="btn_style" id="btnNoticeWrite">등록완료</button>
					<button type="reset" class="btn_style">다시쓰기</button>
					<a href="admin_notice_list ">
						<button type="button" class="btn_style">리스트</button></a>
					<a href="http://localhost:9000/admin "><button type="button" class="btn_style">관리자홈</button></a>
				</li>
			</ul>
		</form>
			
	</div>
	
	<!-- footer Include -->
	<iframe src="http://localhost:9000/footer " width="100%" height="530px" scrolling="no" frameborder=0></iframe>
	
</body>
</html>






