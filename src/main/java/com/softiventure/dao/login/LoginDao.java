package com.softiventure.dao.login;

import com.softiventure.beans.login.Users;



public interface LoginDao {
	Users findByUserName(String username);
}
