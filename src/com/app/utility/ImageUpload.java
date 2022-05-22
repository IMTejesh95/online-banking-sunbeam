package com.app.utility;

import org.springframework.web.multipart.MultipartFile;

public class ImageUpload 
{
	private MultipartFile file;
	public MultipartFile getFile() {
		return file;
	}
	public void setFile(MultipartFile file) {
		this.file = file;
	}
}
