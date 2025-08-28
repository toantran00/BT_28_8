package vn.iotstar.service;

import vn.iotstar.model.User;

public interface UserDao {
	User get(String username);
}
