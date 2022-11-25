<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
  
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>CGV</title>
<link rel="stylesheet"  href="http://localhost:9000/mycgv/resources/css/mycgv.css">
<script src="http://localhost:9000/mycgv/resources/js/jquery-3.6.0.min.js"></script>
<script src="http://localhost:9000/mycgv/resources/js/mycgv_jquery.js"></script>
</head>
<body>
	<!-- Header Include -->
	<iframe src="http://localhost:9000/mycgv/header" width="100%" height="160px" scrolling="no" frameborder=0 ></iframe>
	
	
	<!---------------------------------------------->
	<!--------------- Content ----------------------->
	<!---------------------------------------------->
	<div class="content">
		<h1>영화 등록 화면</h1>
		<form name="boardWriteForm" action="admin_movie_regist_check" method="post"
				enctype="multipart/form-data">
			<ul>
				<li>
					<label>카테고리</label>
					<select name="mcategory">
						<option value="액션">액션</option>
						<option value="로맨스">로맨스</option>
						<option value="스릴러">스릴러</option>
					</select>
				</li>
				<li>
					<label>영화제목</label>
					<input type="text" name="mname" id="ntitle">
				</li>
				<li>
					<label>영화정보</label>
					<textarea name="mdesc"></textarea>
				</li>
				<li>
					<label>파일첨부</label>
					<input type="file" name="files">
				</li>
				<li>
					<label>파일첨부</label>
					<input type="file" name="files">
				</li>
				<li>
					<button type="button" class="btn_style" id="btnNoticeWrite">등록완료</button>
					<button type="reset" class="btn_style">다시쓰기</button>
					<a href="admin_notice_list">
						<button type="button" class="btn_style">리스트</button></a>
					<a href="http://localhost:9000/mycgv/admin"><button type="button" class="btn_style">관리자홈</button></a>
				</li>
			</ul>
		</form>
			
	</div>
	
	<!-- footer Include -->
	<iframe src="http://localhost:9000/mycgv/footer" width="100%" height="530px" scrolling="no" frameborder=0></iframe>
	
</body>
</html>






