<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
 
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>CGV</title>
<link rel="stylesheet"  href="http://localhost:9000/css/mycgv.css">
<script>
	let login_result = '${login_result}';
	let logout_result = '${logout_result}';
	
	if(logout_result == 'ok'){
		alert("로그아웃에 성공하셨습니다.");
	}
	
	if(login_result == 'ok'){
		alert("로그인에 성공하셨습니다.");
	}
</script>
<script src="http://localhost:9000/js/jquery-3.6.0.min.js"></script>
<script src="http://localhost:9000/js/mycgv_index.js"></script>
<style>
	.notice_list li span{
		display:inline-block;
		padding:0 8px; 
	}
</style>
</head>
<body>
	<!-- Header Include -->
	<iframe src="http://localhost:9000/header" width="100%" height="160px" scrolling="no" frameborder=0 ></iframe>
	
	
	<!---------------------------------------------->
	<!--------------- Content ----------------------->
	<!---------------------------------------------->
	<div class="carousel">
		<h1>메인-캐러셀</h1>
	</div>
	<div class="content">
		<section>
			<h1>무비차트 | 상영예정작</h1>
			<div class="s1_article">
				<article>
					<img src="http://localhost:9000/images/82120_320.jpg">
					<div>탑건-매버릭</div>
					<div>99%  | 예매율 37.1%</div>
				</article>
				<article>
					<img src="http://localhost:9000/images/82120_320.jpg">
					<div>탑건-매버릭</div>
					<div>99%  | 예매율 37.1%</div>
				</article>
				<article>
					<img src="http://localhost:9000/images/82120_320.jpg">
					<div>탑건-매버릭</div>
					<div>99%  | 예매율 37.1%</div>
				</article>
				<article>
					<img src="http://localhost:9000/images/82120_320.jpg">
					<div>탑건-매버릭</div>
					<div>99%  | 예매율 37.1%</div>
				</article>
				<article>
					<img src="http://localhost:9000/images/82120_320.jpg">
					<div>탑건-매버릭</div>
					<div>99%  | 예매율 37.1%</div>
				</article>
			</div>
		</section>
		
		<section>
			<h1>특별관</h1>
			<div class="s2_article">
				<div>
					<img src="http://localhost:9000/images/16390080561620.png">
				</div>
				<!-- Ajax + Dynamic HTML 로 생성된 공지사항 출력위치 -->
			</div>
		</section>
		
		<section>
			<ul>
				<li>
					<h3>영화관람권</h3>
					<button type="button">더보기</button>
				</li>
				<li>
					<img src="http://localhost:9000/images/16094706927780.jpg">
					<div>
						<label>CGV 영화관람권</label>
						<label>12,000원</label>
					</div>
				</li>
				<li>
					<img src="http://localhost:9000/images/16094706927780.jpg">
					<div>
						<label>CGV 영화관람권</label>
						<label>12,000원</label>
					</div>
				</li>
				<li>
					<img src="http://localhost:9000/images/16094706927780.jpg">
					<div>
						<label>CGV 영화관람권</label>
						<label>12,000원</label>
					</div>
				</li>
			</ul>
			<ul>
				<li>
					<h3>영화관람권</h3>
					<button type="button">더보기</button>
				</li>
				<li >
					<img src="http://localhost:9000/images/16094706927780.jpg">
					<div>
						<label>CGV 영화관람권</label>
						<label>12,000원</label>
					</div>
				</li>
				<li>
					<img src="http://localhost:9000/images/16094706927780.jpg">
					<div>
						<label>CGV 영화관람권</label>
						<label>12,000원</label>
					</div>
				</li>
				<li>
					<img src="http://localhost:9000/images/16094706927780.jpg">
					<div>
						<label>CGV 영화관람권</label>
						<label>12,000원</label>
					</div>
				</li>
			</ul>
			<ul>
				<li>
					<h3>영화관람권</h3>
					<button type="button">더보기</button>
				</li>
				<li >
					<img src="http://localhost:9000/images/16094706927780.jpg">
					<div>
						<label>CGV 영화관람권</label>
						<label>12,000원</label>
					</div>
				</li>
				<li>
					<img src="http://localhost:9000/images/16094706927780.jpg">
					<div>
						<label>CGV 영화관람권</label>
						<label>12,000원</label>
					</div>
				</li>
				<li>
					<img src="http://localhost:9000/images/16094706927780.jpg">
					<div>
						<label>CGV 영화관람권</label>
						<label>12,000원</label>
					</div>
				</li>
			</ul>
		</section>		
	</div>
	
	<!-- footer Include -->
	<iframe src="http://localhost:9000/footer" width="100%" height="530px" scrolling="no" frameborder=0></iframe>
	
</body>
</html>







