package com.dao;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;

import com.entity.User;



public class UserDAO {

	private Connection con;

	public UserDAO(Connection con) {
		super();
		this.con = con;
	}
	 
	public boolean addUser(User u) {
		boolean f=false;
		try {
			String s="insert into user(name,qualification,email,password,role) values(?,?,?,?,?)";
			
			PreparedStatement ps=con.prepareStatement(s);
			ps.setString(1,u.getName());
			ps.setString(2, u.getQualification());
			ps.setString(3, u.getEmail());
			ps.setString(4, u.getPassword());
			ps.setString(5, "user");
			
			int i=ps.executeUpdate();
			if(i==1) {
				f=true;
			}
			
			
		} catch (Exception e) {
			e.printStackTrace();
		}
		
		
		return f;
	}
	
	
	public User login(String em,String ps) {
		
		User user=null;
		
		try {
			String sql="select * from user where email=? and password=?";
			PreparedStatement ps1=con.prepareStatement(sql);
			ps1.setString(1, em);
			ps1.setString(2, ps);
			
			ResultSet rSet=ps1.executeQuery();
			
			while(rSet.next()) {
				user=new User();
				user.setId(rSet.getInt(1));
				user.setEmail(rSet.getString(4));
				user.setName(rSet.getString(2));
				user.setPassword(rSet.getString(3));
				user.setQualification(rSet.getString(5));
				user.setRole(rSet.getString(6));
			}
			
			
		} catch (Exception e) {
			e.printStackTrace();
		}
		
		
		return user;
	}
	
	
	
}
