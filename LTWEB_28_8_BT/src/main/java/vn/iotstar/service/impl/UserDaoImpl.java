package vn.iotstar.service.impl;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;

import vn.iotstar.config.DBConnection;
import vn.iotstar.model.User;
import vn.iotstar.service.UserDao;

public class UserDaoImpl implements UserDao {
	public Connection conn = null;
	public PreparedStatement ps = null;
	public ResultSet rs = null;

	@Override
	public User get(String username) {
		// TODO Auto-generated method stub
		String sql = "SELECT * FROM [User] WHERE username = ? ";
		try {
		conn = new DBConnection().getConnection();
		ps = conn.prepareStatement(sql);
		ps.setString(1, username);
		rs = ps.executeQuery();
		while (rs.next()) {
		User user = new User();
		user.setId(rs.getInt("id"));
		user.setEmail(rs.getString("email"));
		user.setUserName(rs.getString("username"));
		user.setFullName(rs.getString("fullname"));
		user.setPassWord(rs.getString("password"));
		user.setAvatar(rs.getString("avatar"));
		user.setRoleid(rs.getInt("roleid"));
		user.setPhone(rs.getString("phone"));
		user.setCreatedDate(rs.getDate("createdDate"));
		return user; }
		} catch (Exception e) {e.printStackTrace(); }
		return null;

	}

}
