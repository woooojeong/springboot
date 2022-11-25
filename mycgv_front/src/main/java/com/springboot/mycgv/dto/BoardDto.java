package com.springboot.mycgv.dto;

import org.springframework.web.multipart.commons.CommonsMultipartFile;

import lombok.Data;

@Data
public class BoardDto {
	private int rno;
	private int bhits;
	private String bid;
	private String btitle;
	private String bcontent;
	private String bfile;
	private String bsfile;
	private String bdate;
	private CommonsMultipartFile file1;
}
