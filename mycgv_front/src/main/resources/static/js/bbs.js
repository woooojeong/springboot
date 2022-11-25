$(document).ready(function(){
	
	
	/*****************************
		게시판 등록폼 유효성 체크
	******************************/
	$("#btnBoardWrite").click(()=>{
		if($("#btitle").val() == ""){
			alert("제목을 입력해주세요");
			$("#btitle").focus();
			return false;
		}else{
			//서버전송
			boardWriteForm.submit();
		}
	});
	
	
	/*****************************
		게시판 수정폼 유효성 체크
	******************************/
	$("#btnBoardUpdate").click(()=>{
		if($("#btitle").val() == ""){
			alert("제목을 입력해주세요");
			$("#btitle").focus();
			return false;
		}else{
			//서버전송
			boardUpdateForm.submit();
		}
	});
	
	
	
	/************************************
		게시판 수정폼 --> 파일 선택 이벤트 
	*************************************/
	$("input[type=file]").change(()=>{
		alert("111111");
			if(window.FileReader){
				let fname = $(this)[0].files[0].name;
				alert("fname-->" + fname);
				$("#upload_file").text(fname);
			}
	});

});//ready function

