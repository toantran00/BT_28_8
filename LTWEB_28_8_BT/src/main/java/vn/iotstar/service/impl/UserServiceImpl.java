package vn.iotstar.service.impl;

import vn.iotstar.model.User;
import vn.iotstar.service.UserDao;
import vn.iotstar.service.UserService;

public class UserServiceImpl implements UserService{
	UserDao userDao = new UserDaoImpl();

	@Override
	public User login(String username, String password) {
		User user = this.get(username);
		if (user != null && password.equals(user.getPassWord())) {
		return user;}
		return null;
	}
	@Override
	public User get(String username) {
		// TODO Auto-generated method stub
		return userDao.get(username); 
	}
	@Override
	public void insert(User user) {
		userDao.insert(user);
	}
	@Override
	public boolean register(String email, String password, String username, String fullname, String phone) {
	    if (userDao.checkExistUsername(username)) {
	        return false;
	    }
	    long millis = System.currentTimeMillis();
	    java.sql.Date date = new java.sql.Date(millis);
	    userDao.insert(new User(0, email, username, fullname, password, null, 5, phone, date));
	    return true;
	}
	@Override
	public boolean checkExistEmail(String email) {
		return userDao.checkExistEmail(email);
	}
	@Override
	public boolean checkExistUsername(String username) {
		return userDao.checkExistUsername(username);
	}
	@Override
	public boolean checkExistPhone(String phone) {
		return userDao.checkExistPhone(phone);
	}

}
