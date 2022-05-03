package app01.dto;

import java.time.LocalDateTime;

//dto : data transfer object. 정보전달 객체. javabeans객체. DB에 data전달 하거나 받아올 객체
public class BoardDto {
	private String title;
	private String body;
	private int id;
	private LocalDateTime inserted;
	private int numOfReply;
	
	public String getPrettyInserted() {
		// 24시간 이내면 시간만
		// 이전이면 년-월-일
		LocalDateTime now = LocalDateTime.now();
		if(now.minusHours(24).isBefore(inserted)) {
			return inserted.toLocalTime().toString();
		} else {
			return inserted.toLocalDate().toString();
		}
		
	}
	
	public int getNumOfReply() {
		return numOfReply;
	}

	public void setNumOfReply(int numOfReply) {
		this.numOfReply = numOfReply;
	}

	public int getId() {
		return id;
	}
	public void setId(int id) {
		this.id = id;
	}
	public LocalDateTime getInserted() {
		return inserted;
	}
	public void setInserted(LocalDateTime inserted) {
		this.inserted = inserted;
	}
	public String getTitle() {
		return title;
	}
	public void setTitle(String title) {
		this.title = title;
	}
	public String getBody() {
		return body;
	}
	public void setBody(String body) {
		this.body = body;
	}
	
}
