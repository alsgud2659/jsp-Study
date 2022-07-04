package com.member.beans;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.Base64;

public class MemberDAO {
	Connection conn;
	PreparedStatement pstm;
	ResultSet rs;
	
	//중복검사
	public boolean checkId(String memberId) {
		String query = "select count(memberId) from tbl_member where memberId = ?";
		boolean check = false;
		try {
			conn = DBConnecter.getConnection();
			pstm = conn.prepareStatement(query);
			pstm.setString(1, memberId);
			rs = pstm.executeQuery();
			rs.next();
			check = rs.getInt(1) == 1;
			
		} catch (SQLException e) {
			System.out.println("checkId(String) SQL문 오류");
			e.printStackTrace();
		} catch (Exception e) {
			System.out.println("checkId(String) 오류");
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
		return check;
	}
	//회원가입
	public void join(MemberVO member) {
		System.out.println(member.getMemberName());
		String query = "insert into tbl_member(memberId, memberName, memberPw, gender, address, addressDetail) ";
		query += "values(?, ?, ?, ?, ?, ?)";
		
		try {
			conn = DBConnecter.getConnection();
			pstm = conn.prepareStatement(query);
			pstm.setString(1, member.getMemberId());
			pstm.setString(2, member.getMemberName());
			pstm.setString(3, Base64.getEncoder().encodeToString(member.getMemberPw().getBytes()));
			pstm.setString(4, member.getGender());
			pstm.setString(5, member.getAddress());
			pstm.setString(6, member.getAddressDetail());
			pstm.executeUpdate();
			
		} catch (SQLException e) {
			System.out.println("join(MemberVO) SQL문 오류");
			e.printStackTrace();
		}catch (Exception e) {
			System.out.println("join(MemberVO) 오류");
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
	public int login(String memberId, String memberPw) {
		String query = "select memberNum from tbl_member where memberId = ?  and memberPw = ?";
		System.out.println(new String(Base64.getDecoder().decode(memberPw)));
		int memberNum = 0;
		
		try {
			conn = DBConnecter.getConnection();
			pstm = conn.prepareStatement(query);
			pstm.setString(1, memberId);
			pstm.setString(2, memberPw);
			rs = pstm.executeQuery();
			if(rs.next()) {
				memberNum = rs.getInt(1);
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
		return memberNum;
	}
	
	//정보 조회
	public MemberVO select(int memberNum) {
		String query = "select memberId, memberName, gender, address, addressDetail ";
		query += "from tbl_member where memberNum = ?";
		MemberVO member = null;
		
		try {
			conn = DBConnecter.getConnection();
			pstm = conn.prepareStatement(query);
			pstm.setInt(1, memberNum);
			rs = pstm.executeQuery();
			
			if(rs.next()) {
				member = new MemberVO();
				member.setMemberNum(memberNum);
				member.setMemberId(rs.getString(1));
				member.setMemberName(rs.getString(2));
				member.setGender(rs.getString(3));
				member.setAddress(rs.getString(4));
				member.setAddressDetail(rs.getString(4));
			}
		
		} catch (SQLException e) {
			System.out.println("select(int) SQL문 오류");
			e.printStackTrace();
		} catch (Exception e) {
			System.out.println("select(int) 오류");
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
		return member;
	}
}











