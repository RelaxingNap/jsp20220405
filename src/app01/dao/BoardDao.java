package app01.dao;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.Statement;
import java.sql.Timestamp;
import java.time.LocalDateTime;
import java.util.ArrayList;
import java.util.List;

import app01.dto.BoardDto;

//DAO (Data Access Object) - DB에 접근하여 query를 실행하는 java객체
public class BoardDao {
	
	public boolean insert(Connection con, BoardDto dto) {
		String sql = "INSERT INTO Board (title, body, inserted) "
				+ "VALUES (?, ?, ?)";
		// connection 전달받음
		// dto(java beans객체) 전달 받음
		// statment
<<<<<<< Updated upstream
		int result = 0;
		try(PreparedStatement pstmt = con.prepareStatement(sql,Statement.RETURN_GENERATED_KEYS);){
=======
<<<<<<< HEAD
		
		try(PreparedStatement pstmt = con.prepareStatement(sql);){
=======
		int result = 0;
		try(PreparedStatement pstmt = con.prepareStatement(sql,Statement.RETURN_GENERATED_KEYS);){
>>>>>>> 3363a7cc711ef6fe137df1c1c2c2f183253bccb4
>>>>>>> Stashed changes
			pstmt.setString(1, dto.getTitle());
			pstmt.setString(2, dto.getBody());
			
			// LocalDate 날짜
			// LocalDateTime 날짜 시간 -> 현재 날짜에 관해서 가장 많이 쓰이는 객체
			LocalDateTime now = LocalDateTime.now();
			pstmt.setTimestamp(3, Timestamp.valueOf(now));
			
			// execute query
			int result = pstmt.executeUpdate();
			
			return (result == 1);
			
			// 자동생성된 키 얻기
			try(ResultSet rs = pstmt.getGeneratedKeys();) {
				if(rs.next()) {
					dto.setId(rs.getInt(1));
				}
			} 
		} catch(Exception e) {
			e.printStackTrace();
		}
						
		// 결과 return
		return false;
	}

	public List<BoardDto> list(Connection con, int startRowNum) {
		
		List<BoardDto> list = new ArrayList<>();
		
		String sql = "SELECT id, title, inserted "
				+ "From Board "
				+ "ORDER BY id DESC "
				+ "LIMIT ?, 10";

		try (PreparedStatement pstmt = con.prepareStatement(sql);) {

			pstmt.setInt(1, startRowNum);

			try (ResultSet rs = pstmt.executeQuery();) {

				while (rs.next()) {
					BoardDto board = new BoardDto();
					board.setId(rs.getInt(1));
					board.setTitle(rs.getString(2));
					board.setInserted(rs.getTimestamp(3).toLocalDateTime());

					list.add(board);
				}
			}
		} catch (Exception e) {
			e.printStackTrace();
		}
		
		return list;
	}

	public BoardDto get(Connection con, int id) {
		String sql = "SELECT id, title, body, inserted "
				+ "FROM Board "
				+ "WHERE id = ?";
		
		try(PreparedStatement pstmt = con.prepareStatement(sql);){
			
			pstmt.setInt(1, id);
			try(ResultSet rs = pstmt.executeQuery();){
				if(rs.next()) {
					BoardDto board = new BoardDto();
					
					board.setId(rs.getInt(1));
					board.setTitle(rs.getString(2));
					board.setBody(rs.getString(3));
					board.setInserted(rs.getTimestamp(4).toLocalDateTime());
					
					return board;
				}
				
			}
			
		} catch (Exception e) {
			e.printStackTrace();
		}
		
		return null;
	}
	
	public int count(Connection con) {
		
		String sql = "SELECT COUNT(*) FROM Board ";
		
		try(Statement stmt = con.createStatement();
			ResultSet rs = stmt.executeQuery(sql);){
			
			if(rs.next()) {
				return rs.getInt(1);
			}
			
		} catch (Exception e) {
			e.printStackTrace();
		}
		
		return 0;
	}

	public boolean modify(Connection con, BoardDto board) {
		String sql = "UPDATE Board "
				+ "SET title = ?, "
				+ "	   body = ? "
				+ "WHERE id = ? ";
		
		try(PreparedStatement pstmt = con.prepareStatement(sql);){
			pstmt.setString(1, board.getTitle());
			pstmt.setString(2, board.getBody());
			pstmt.setInt(3, board.getId());
			
			int count = pstmt.executeUpdate();
			
			return count == 1;
			
		} catch(Exception e) {
			e.printStackTrace();
		}
				
		return false;
	}

	public boolean delete(Connection con, int id) {
		String sql = "DELETE FROM Board "
				+ "WHERE id = ? ";
		
		try(PreparedStatement pstmt = con.prepareStatement(sql);){
			pstmt.setInt(1, id);
			
			int count = pstmt.executeUpdate();
			
			return count == 1;
			
		} catch(Exception e) {
			e.printStackTrace();
		}
		
		return false;
	}
}
