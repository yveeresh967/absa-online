package com.elite.util.mapping;

import com.elite.absa.model.Login;
import com.elite.business.pojo.LoginUser;

public class MappingUtil {

	public LoginUser mapLoginUser(Login login, LoginUser loginUser) {

		loginUser.setLoginId(login.getUsername());
		loginUser.setPwd(login.getPassword());

		return loginUser;

	}

}
