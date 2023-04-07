package com.human.mapper;

import java.util.List;

import org.apache.ibatis.annotations.Mapper;

import com.human.domain.Board;

@Mapper
public interface BoardMapper {
	
	// 게시글 목록 
	public List<Board> list() throws Exception;
	
	// 게시글 쓰기
	public int write(Board board) throws Exception;
	
	// 게시글 읽기
	public Board read(int boardNO) throws Exception;
	
	// 게시글 수정
	public int update(Board board) throws Exception;
	
	// 게시글 삭제
	public int delete(int boardNo) throws Exception;
	
}
