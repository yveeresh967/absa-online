package com.elite.business.pojo;

import java.io.Serializable;

public class LoginUser implements Serializable {

	/**
	 * 
	 */
	private static final long serialVersionUID = -5255779890985647662L;

	private String loginId;
	private String pwd;

	public String getLoginId() {
		return loginId;
	}

	public void setLoginId(String loginId) {
		this.loginId = loginId;
	}

	public String getPwd() {
		return pwd;
	}

	public void setPwd(String pwd) {
		this.pwd = pwd;
	}

}
