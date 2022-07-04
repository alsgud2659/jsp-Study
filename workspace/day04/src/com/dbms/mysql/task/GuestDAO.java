package com.dbms.mysql.task;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;

public class GuestDAO {
	Connection conn;
	PreparedStatement pstm;
	ResultSet rs;
	
	//회원가입
	public void join(GuestVO guest) {
		String query = "insert into guest (userId, userPw, userAge, birth) ";
		query += "values(?, hex(aes_encrypt(?, 'abc')), ?, ?)";
		
		try {
			conn = DBConnection.getConnection();
			pstm = conn.prepareStatement(query);
			pstm.setString(1, guest.getUserId());
			pstm.setString(2, guest.getUserPw());
			pstm.setInt(3, guest.getUserAge());
			pstm.setString(4, guest.getBirth());
			pstm.executeUpdate();
			
		} catch (SQLException e) {
			System.out.println("join(GuestVO) SQL문 오류");
			e.printStackTrace();
		} catch (Exception e) {
			System.out.println("join(GuestVO) 오류");
			e.printStackTrace();
		} finally {
			try {
				if(pstm != null) {
					pstm.close();
				}
				if(conn != null) {
					conn.close();
				}
			} catch (SQLException e) {
				throw new RuntimeException(e);
			}
		}
	}
	
	//로그인
	public String login(String userId, String userPw) {
		String query = "select userId from guest where userId = ? and userPw = hex(aes_encrypt(?, 'abc'))";
		String temp = null;
		try {
			conn = DBConnection.getConnection();
			pstm = conn.prepareStatement(query);
			pstm.setString(1, userId);
			pstm.setString(2, userPw);
			rs = pstm.executeQuery();
			if(rs.next()) {
				temp = rs.getString("userId");
			}
		} catch (SQLException e) {
			System.out.println("login(String, String) SQL문 오류");
			e.printStackTrace();
		} catch (Exception e) {
			System.out.println("login(String, String) 오류");
			e.printStackTrace();
		} finally {
			try {
				if(rs != null) {
					rs.close();
				}
				if(pstm != null) {
					pstm.close();
				}
				if(conn != null) {
					conn.close();
				}
			} catch (SQLException e) {
				throw new RuntimeException(e);
			}
		}
		return temp;
	}
}








