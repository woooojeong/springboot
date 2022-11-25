<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %> 
    
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>CGV</title>
<link rel="stylesheet"  href="http://localhost:9000/css/mycgv.css">
</head>
<body>
	<!-- Header Include -->
	<iframe src="http://localhost:9000/header" width="100%" height="160px" scrolling="no" frameborder=0 ></iframe>
	
	
	<!---------------------------------------------->
	<!--------------- Content ----------------------->
	<!---------------------------------------------->
	<div class="content">
		<h1>게시판-상세보기</h1>
		<table class="boardContent">	
			<tr>				
				<th>등록일자</th>
				<td>${vo.bdate}</td>
				<th>조회수</th>
				<td>${vo.bhits}</td>
			</tr>		
			<tr>				
				<th>제목</th>
				<td colspan="3">${vo.btitle }</td>
			</tr>
			<tr>				
				<th>내용</th>
				<td colspan="3">${vo.bcontent }<br><br>
				<c:if test="${vo.bsfile != null}">
					<!--  파일업로드 출력 -->
					<img src="http://localhost:9000/upload/${vo.bsfile}" width="50%">
				</c:if>
				<br><br><br>
				</td>
			</tr>
			<tr>
				<td colspan="4">
					<a href="/board_update/${vo.bid }/${rpage}"><button type="button" class="btn_style">수정하기</button></a>
					<a href="/board_delete/${vo.bid }/${rpage}"><button type="button" class="btn_style">삭제하기</button></a>
					<a href="/board_list/${rpage}">
						<button type="button" class="btn_style">리스트</button>
					</a>
				</td>
			</tr>			
		</table>	
	</div>
	
	<!-- footer Include -->
	<iframe src="http://localhost:9000/footer" width="100%" height="530px" scrolling="no" frameborder=0></iframe>
	
</body>
</html>







