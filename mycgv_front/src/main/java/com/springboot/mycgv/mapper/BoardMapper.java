package com.springboot.mycgv.mapper;

import java.util.List;

import org.apache.ibatis.annotations.Mapper;

import com.springboot.mycgv.dto.BoardDto;

@Mapper
public interface BoardMapper {
	List<BoardDto> getList();
	int getInsert(BoardDto dto);
	BoardDto getContent(String bid);
	int getUpdate(BoardDto dto);
	int getDelete(BoardDto dto);
}
