package kr.go.pohang.model;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;


import kr.go.pohang.dto.QnaDTO;

public class QnaDAO {
	private Connection con = null;
	private PreparedStatement pstmt = null;
	private ResultSet rs = null;
	
	public ArrayList<QnaDTO> getQnaList() {
		ArrayList<QnaDTO> qnaList = new ArrayList<QnaDTO>();
		try {
			con = Maria.getConnection();
			pstmt = con.prepareStatement(Maria.QNA_SELECT_ALL);
			rs = pstmt.executeQuery();
			while(rs.next()){
				QnaDTO dto = new QnaDTO();
				dto.setNo(rs.getInt("no"));
				dto.setTitle(rs.getString("title"));
				dto.setContent(rs.getString("content"));
				dto.setAuthor(rs.getString("author"));
				dto.setRegDate(rs.getString("regdate"));
				dto.setLev(rs.getInt("lev"));
				dto.setParno(rs.getInt("parno"));
				dto.setSec(rs.getString("sec"));
				dto.setVisited(rs.getInt("visited"));
				qnaList.add(dto);
			}
		} catch(ClassNotFoundException e){
			System.out.println("드라이버 로딩 실패");
			e.printStackTrace();
		} catch(SQLException e){
			System.out.println("SQL 구문이 처리되지 못했습니다.");
			e.printStackTrace();
		} catch(Exception e){
			System.out.println("잘못된 연산 및 요청으로 인해 목록을 불러오지 못했습니다.");
		} finally {
			Maria.close(rs, pstmt, con);
		}
		return qnaList;
	}
	public QnaDTO getQna(int no){
		QnaDTO dto = new QnaDTO();
		try {
			con = Maria.getConnection();
			//해당 레코드를 검색
			pstmt = con.prepareStatement(Maria.QNA_SELECT_ONE);
			pstmt.setInt(1, no);		
			rs = pstmt.executeQuery();
			if(rs.next()){
				dto.setNo(rs.getInt("no"));
				dto.setTitle(rs.getString("title"));
				dto.setContent(rs.getString("content"));
				dto.setAuthor(rs.getString("author"));
				dto.setRegDate(rs.getString("regdate"));
				dto.setLev(rs.getInt("lev"));
				dto.setParno(rs.getInt("parno"));
				dto.setSec(rs.getString("sec"));
				dto.setVisited(rs.getInt("visited"));
			}

		} catch(ClassNotFoundException e){
			System.out.println("드라이버 로딩 실패");
			e.printStackTrace();
		} catch(SQLException e){
			System.out.println("SQL 구문이 처리되지 못했습니다.");
			e.printStackTrace();
		} catch(Exception e){
			System.out.println("잘못된 연산 및 요청으로 인해 목록을 불러오지 못했습니다.");
		} finally {
			Maria.close(rs, pstmt, con);
		}
		return dto;
	}

}
