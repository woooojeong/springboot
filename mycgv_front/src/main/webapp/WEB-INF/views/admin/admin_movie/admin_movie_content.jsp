<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
 <%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %> 
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>CGV</title>
<link rel="stylesheet"  href="http://localhost:9000/mycgv/resources/css/mycgv.css">
</head>
<body>
	<!-- Header Include -->
	<iframe src="http://localhost:9000/mycgv/header" width="100%" height="160px" scrolling="no" frameborder=0 ></iframe>
	
	
	<!---------------------------------------------->
	<!--------------- Content ----------------------->
	<!---------------------------------------------->
	<div class="content">
		<h1>영화 상세 정보</h1>
		<table class="boardContent">	
			<tr>				
				<th>등록날짜</th>
				<td>${vo.mdate }</td>
				<th>장르</th>
				<td>${vo.mcategory }</td>
			</tr>		
			<tr>				
				<th>영화제목</th>
				<td colspan="3">${vo.mname }</td>
			</tr>
			<tr>				
				<th>영화설명</th>
				<td colspan="3">${vo.mdesc }<br><br>
				<c:if test="${vo.msfile1 != null }">
					<img src="http://localhost:9000/mycgv/resources/upload/${vo.msfile1 }"
						width="50%">
				</c:if><br><br>
				<c:if test="${vo.msfile2 != null }">
					<img src="http://localhost:9000/mycgv/resources/upload/${vo.msfile2 }"
						width="50%">
				</c:if>
				<br><br></td>
			</tr>
			<tr>
				<td colspan="4">
					<%-- <a href="admin_notice_update?nid=${vo.nid }"><button type="button" class="btn_style">수정하기</button></a>
					<a href="admin_notice_delete?nid=${vo.nid }"><button type="button" class="btn_style">삭제하기</button></a> --%>
					<a href="admin_movie_list">
						<button type="button" class="btn_style">리스트</button></a>
					<a href="http://localhost:9000/mycgv/admin"><button type="button" class="btn_style">관리자홈</button></a>
				</td>
			</tr>			
		</table>	
	</div>
	
	<!-- footer Include -->
	<iframe src="http://localhost:9000/mycgv/footer" width="100%" height="530px" scrolling="no" frameborder=0></iframe>
	
</body>
</html>






