package com.human.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.human.domain.Board;
import com.human.mapper.BoardMapper;

@Service
public class BoardServiceImpl implements BoardService{
	
	@Autowired
	private BoardMapper boardMapper;
	
	@Override
	public List<Board> list() throws Exception {
		
		// BoardMapper의 list() 메소드 호출
		List<Board> boardList = boardMapper.list();
		
		return boardList;
	}

	@Override
	public int insert(Board board) throws Exception {
		
		int result = boardMapper.insert(board);
		
		return result;
	}

	@Override
	public Board read(int boardNo) throws Exception {
		
		Board board = boardMapper.read(boardNo);
		
		return board;
	}

	@Override
	public int update(Board board) throws Exception {
		
		int result = boardMapper.update(board);
		
		return result;
	}

	@Override
	public int delete(int boardNo) throws Exception {
		
		int result = boardMapper.delete(boardNo);
		
		return result;
	}

}
