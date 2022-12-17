package repository;

import java.util.ArrayList;
import java.util.List;

import vo.WebUser;

public class UserRepository {
	
	private static List<WebUser> userRepository;
	
	public static List<WebUser> getUserRepository() {
		
		if(userRepository == null) {
			System.out.println("userRepository 생성");
			userRepository = new ArrayList<WebUser>();
		}
		
		return userRepository;
	}

}
