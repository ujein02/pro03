package kr.go.pohang.model;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;


import kr.go.pohang.dto.UserDTO;

public class UserDAO {
	private Connection con = null;
	private PreparedStatement pstmt = null;
	private ResultSet rs = null;
	String key = "%02x";
	String sql = "";
	
	public int idCheckPro(String id){	//중복 아이디 체크/회원가입시 가입전 체크
		int cnt = 0;
		try {
			con = Maria.getConnection();
			pstmt = con.prepareStatement(Maria.USER_ID_CHECK);
			pstmt.setString(1,id);
			rs = pstmt.executeQuery();
			if(rs.next()){ cnt = cnt +1; } else {cnt = 0; }
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
		return cnt;
	}
	
	
	
	
	public UserDTO getUser(String Id){
		UserDTO dto = new UserDTO();
		try {
			con = Maria.getConnection();
			pstmt = con.prepareStatement(Maria.USER_LOGIN);
			pstmt.setString(1,dto.getId());
			pstmt.setString(2,dto.getPw());
			rs = pstmt.executeQuery();
			
			if(rs.next()){
				dto.setId(rs.getString("id"));
				dto.setPw(rs.getString("pw"));
				
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

