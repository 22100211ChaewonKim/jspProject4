package com.crud.bean;

import java.util.Date;

public class BoardVO {
	private int seq;
	private String preference;
	private String title;
	private String singer;
	private String album;
	private String playtime;
	private int cnt;
	
	public int getSeq() {
		return seq;
	}
	public void setSeq(int seq) {
		this.seq = seq;
	}

	public String getPreference() {return preference; }
	public void setPreference(String preference) { this.preference = preference; }

	public String getTitle() {
		return title;
	}
	public void setTitle(String title) {
		this.title = title;
	}

	public String getSinger() {return singer; }
	public void setSinger(String singer) { this.singer = singer; }

	public String getAlbum() {return album; }
	public void setAlbum(String album) { this.album = album; }

	public String getPlaytime() {return playtime; }
	public void setPlaytime(String playtime) { this.playtime = playtime; }



	public int getCnt() {
		return cnt;
	}
	public void setCnt(int cnt) {
		this.cnt = cnt;
	}
}
