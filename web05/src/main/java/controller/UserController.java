package controller;
import java.util.List;

import repository.UserRepository;
import vo.WebUser;

// -- 비즈니스 로직으로, useBean을 통해 jsp 실행시 자동생성
// 모든 클래스는 Object 클래스의 자식
public class UserController {
	
	List<WebUser> userRepository;
	
	// 디폴트 생성자를 호출한다(useBean)
	// 접근한정자 클래스명(매개변수) {}
	public UserController() {
		System.out.println("안녕하세요");
		this.userRepository = UserRepository.getUserRepository();
	}
	
	// 1. 회원 데이터 입력
	public boolean addUser(WebUser user) {
		// add가 성공하면 true, 실패하면 false
		return this.userRepository.add(user);
	}
		
	// 2. 회원 아이디 체크
	
	// 3. 회원 목록 들고오기
	public List<WebUser> getUserListAll() {
		return this.userRepository;
	}
	
	// 4. 회원 삭제
	
	// ...
	
}
