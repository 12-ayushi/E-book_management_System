package com.DAO;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;

import com.entity.User;

public class UserDAOImp implements UserDAO{
	private Connection con;

	public UserDAOImp(Connection con) {
		super();
		this.con = con;
	}
//	public UserDAOImp() {
//		super();
//		 
//	}

	@Override
	public boolean userRegister(User us) {
		boolean flag=false;
		try {
			String sql="insert into user(name, email,phone_no,password) values(?,?,?,?)";
			PreparedStatement ps=con.prepareStatement(sql);
			ps.setString(1,us.getName());
			ps.setString(2, us.getEmail());
			ps.setString(3, us.getPhone_no());
			ps.setString(4, us.getPassword());
			int i=ps.executeUpdate();
			if(i==1) {
				flag=true;
			}
					
		} catch (Exception e) {
			 e.printStackTrace();
		}
		return flag;
	}

	@Override
	public User login(String email, String password) {
		 User us=null;
		 	
		 try {
			String sql="select * from user where email=? and password=?";
			PreparedStatement ps=con.prepareStatement(sql);
			ps.setString(1, email);
			ps.setString(2, password);
			ResultSet rs=ps.executeQuery();
			while (rs.next()) {
				us=new User();
				us.setId(rs.getInt(1));
				us.setName(rs.getString(2));
				us.setEmail(rs.getString(3));
				us.setPhone_no(rs.getString(4));
				us.setPassword(rs.getString(5));
				us.setAddress(rs.getString(6));
				us.setLandmark(rs.getString(7));
				us.setCity(rs.getString(8));
				us.setState(rs.getString(9));
				us.setPincode(rs.getInt(10));
				
				
			}
		} catch (Exception e) {
			 
		}
		 return us;
	}

	 
	 

	
	
}
