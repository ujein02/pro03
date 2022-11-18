package kr.go.pohang.dto;

public class QnaDTO {
	private int no;	
	private String title;	
	private String content;	
	private String author;	
	private String regDate;	
	private int lev;			//깊이
	private int parno;			//부모글 번호
	private String sec;			//비밀글 여부
	private int visited;		//읽은횟수
	
	
	public int getNo() {
		return no;
	}
	public void setNo(int no) {
		this.no = no;
	}
	public String getTitle() {
		return title;
	}
	public void setTitle(String title) {
		this.title = title;
	}
	public String getContent() {
		return content;
	}
	public void setContent(String content) {
		this.content = content;
	}
	public String getAuthor() {
		return author;
	}
	public void setAuthor(String author) {
		this.author = author;
	}
	public String getRegDate() {
		return regDate;
	}
	public void setRegDate(String regDate) {
		this.regDate = regDate;
	}
	public int getLev() {
		return lev;
	}
	public void setLev(int lev) {
		this.lev = lev;
	}
	public int getParno() {
		return parno;
	}
	public void setParno(int parno) {
		this.parno = parno;
	}
	public String getSec() {
		return sec;
	}
	public void setSec(String sec) {
		this.sec = sec;
	}
	public int getVisited() {
		return visited;
	}
	public void setVisited(int visited) {
		this.visited = visited;
	}
	@Override
	public String toString() {
		return "QnaDTO [no=" + no + ", title=" + title + ", content=" + content
				+ ", author=" + author + ", regDate=" + regDate + ", lev="
				+ lev + ", parno=" + parno + ", sec=" + sec + ", visited="
				+ visited + "]";
	}
	
	

}
