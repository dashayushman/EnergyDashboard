package com.company.energy.beans;

public class UploadedFile {
	private int length;
	private byte[] bytes;
	private String name;
	private String type;
	private Integer domain;
	private String fileDescription;
	private String lastModifiedDate;

	public String getLastModifiedDate() {
		return lastModifiedDate;
	}

	public void setLastModifiedDate(String lastModifiedDate) {
		this.lastModifiedDate = lastModifiedDate;
	}

	public Integer getDomain() {
		return domain;
	}

	public String getFileDescription() {
		return fileDescription;
	}

	public void setDomain(Integer domain) {
		this.domain = domain;
	}

	public void setFileDescription(String fileDescription) {
		this.fileDescription = fileDescription;
	}

	public int getLength() {
		return length;
	}

	public byte[] getBytes() {
		return bytes;
	}

	public String getName() {
		return name;
	}

	public String getType() {
		return type;
	}

	public void setLength(int length) {
		this.length = length;
	}

	public void setBytes(byte[] bytes) {
		this.bytes = bytes;
	}

	public void setName(String name) {
		this.name = name;
	}

	public void setType(String type) {
		this.type = type;
	}

}
