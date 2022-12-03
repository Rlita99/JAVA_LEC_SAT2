package vo;

import java.util.Date;

public class CreationObjectVO {

	private String creationDate;
	
	// 기본 생성자
	// 예시 CreationObjectVO vo = new CreationObjeccVO(); 할때 기본생성자
	public CreationObjectVO() {
		this.creationDate = new Date().toString();
	}
	
	// 생성 시간 가지고 오기
	public String getCreationDate() {
		return this.creationDate;
	}
	
}
