package com.springboot.mycgv.service;

import java.io.File;
import java.util.UUID;

import org.springframework.beans.factory.annotation.Value;
import org.springframework.stereotype.Service;
import org.springframework.web.multipart.MultipartFile;

import com.springboot.mycgv.dto.BoardDto;

@Service
public class FileService {
	
	@Value("${spring.servlet.multipart.location}")
	private String uploadPath;

	public boolean fileCheck(MultipartFile file) {
		if(file.getOriginalFilename().equals("")) {
			return false;
		}else {
			return true;
		}		
	}//file이 있는지 체크 로직/컨트롤러에서 사용되는 메소드 
	
	public BoardDto init(BoardDto dto) {
		MultipartFile file = dto.getFile1();
		
		if(file != null) {
			if(!file.getOriginalFilename().equals("")) {
				UUID uuid = UUID.randomUUID();
				dto.setBfile(file.getOriginalFilename());
				dto.setBsfile(uuid+"_"+file.getOriginalFilename());			
			}
		}
		
		return dto;
	} // 파일체크 결과가 true이면 dto를 넘겨 
	  // file에 가져온 이름을 bfile에 그대로 넣어주고 
	  // bsfile에는 이름이 중복되지 않게 고유한 uuid를 부여한다
	
	
	public void saveFile(BoardDto dto) throws Exception {
		File file = new File(uploadPath + dto.getBsfile());
		dto.getFile1().transferTo(file);
	} //업로드 패스를 통해 가져오고 bsfile에 저장된 이름의 파일을 저장한다
	
	
	public void deleteFile(String bsfile) throws Exception{
		File file = new File(uploadPath + bsfile);
		if(file.exists()) {
			file.delete();
		}
	} //수정할때 호출해서 사용하는 메소드
	
}