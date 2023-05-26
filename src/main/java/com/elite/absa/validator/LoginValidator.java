package com.elite.absa.validator;

import org.springframework.stereotype.Component;
import org.springframework.validation.Errors;
import org.springframework.validation.ValidationUtils;
import org.springframework.validation.Validator;

import com.elite.absa.model.Login;

@Component
public class LoginValidator implements Validator {

	@Override
	public boolean supports(Class<?> clazz) {
		// TODO Auto-generated method stub
		return false;
	}

	@Override
	public void validate(Object object, Errors errors) {

		Login loginUser = (Login) object;

		ValidationUtils.rejectIfEmpty(errors, "username", "username.empty.check");
		ValidationUtils.rejectIfEmpty(errors, "password", "password.empty.check");

		if (loginUser.getPassword().length() < 8) {
			errors.rejectValue("password", "password.min.length");
		}
		// admin123
		// number,letter,whitespace

		String pwd = loginUser.getPassword();
		boolean isSplChar = false;
		boolean pwdHasNum=false;
		boolean pwdHasLetter=false;
		for (int i = 0; i < pwd.length(); i++) {

			if (!Character.isDigit(pwd.charAt(i)) && !Character.isLetter(pwd.charAt(i))
					&& !Character.isWhitespace(pwd.charAt(i))) {

				isSplChar = true;
			}
			
			if(Character.isDigit(pwd.charAt(i))) {
				pwdHasNum=true;
			}
			if(Character.isLetter(pwd.charAt(i))) {
				pwdHasLetter=true;
			}
		}
		
		if(!isSplChar) {
			errors.rejectValue("password", "password.spl.char");
		}
		if(!pwdHasNum || !pwdHasLetter) {
			errors.rejectValue("password", "password.num.letter");
		}

	}

}
