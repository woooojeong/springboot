<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
       
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>CGV</title>
<link rel="stylesheet"  href="http://localhost:9000/css/mycgv.css">
<script src="http://localhost:9000/js/jquery-3.6.0.min.js"></script>
<script src="http://localhost:9000/js/mycgv_jquery.js"></script>
<style>
	#upload_file {
		/*border:1px solid red;*/
		position:relative;
		left:265px; top:-30px;
		width:200px;  height:20px;
		display:inline-block;	
		background-color:white;	
		font-size:12px;
	}
</style>
<script>
	$(document).ready(function(){
		//새로운 파일선택하는 이벤트 
		$("input[type=file]").change(function(){
			if(window.FileReader){
				let fname = $(this)[0].files[0].name;
				$("#upload_file").text(fname);
			}
		});
	});
</script>
</head>
<body>
	<!-- Header Include -->
	<iframe src="http://localhost:9000/header " width="100%" height="160px" scrolling="no" frameborder=0 ></iframe>
	
	
	<!---------------------------------------------->
	<!--------------- Content ----------------------->
	<!---------------------------------------------->
	<div class="content">
		<h1>공지사항-수정하기</h1>
		<form name="boardUpdateForm" action="/admin_notice_update" method="post" enctype="multipart/form-data">
			<input type="hidden" name="nid" value="${vo.nid }">
			<input type="hidden" name="nfile"  value="${vo.nfile}" >
			<input type="hidden" name="nsfile"  value="${vo.nsfile}" >
			<ul>
				<li>
					<label>제목</label>
					<input type="text" name="ntitle" id="ntitle" value="${vo.ntitle }">
				</li>
				<li>
					<label>내용</label>
					<textarea name="ncontent">${vo.ncontent }</textarea>
				</li>
				<li>
					<label>파일첨부</label>
					<input type="file" name="file1">
					<!-- JSTL의 if는 조건이 단하나로 체크될때 사용, 조건이 여러개로 체크될 경우 choose/when -->
					<c:choose>
						<c:when test="${vo.nfile != null }"> <!-- if~else -->
							<span id="upload_file">${vo.nfile}</span>						
						</c:when>
						<c:otherwise>
							<span id="upload_file">선택된 파일 없음</span>
						</c:otherwise>
					</c:choose>
				</li>
				<li>
					<button type="button" class="btn_style" id="btnNoticeUpdate">수정완료</button>
					<button type="reset" class="btn_style">다시쓰기</button>
					<a href="/admin_notice_content/${vo.nid }/${rpage}"><button type="button" class="btn_style">이전페이지</button></a>
					<a href="/admin_notice_list/${rpage}"><button type="button" class="btn_style">리스트</button></a>
				</li>
			</ul>
		</form>
			
	</div>
	
	<!-- footer Include -->
	<iframe src="http://localhost:9000/footer " width="100%" height="530px" scrolling="no" frameborder=0></iframe>
	
</body>
</html>






