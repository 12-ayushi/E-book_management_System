package com.user.servlet;
import java.io.IOException;

import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import jakarta.servlet.http.HttpSession;

import com.DAO.UserDAOImp;
import com.DB.DBConnection;
import com.entity.User;
 
@WebServlet("/register")
public class RegisterServlet extends HttpServlet{

	@Override
	protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		try {
			String name=req.getParameter("fname");
			String email=req.getParameter("email");
			String phone_no=req.getParameter("phone_no");
			String password=req.getParameter("password");
			String check=req.getParameter("check");
//			System.out.println(name+" "+email+" "+phone_no+" "+password+" "+check);
			User us=new User();
			us.setName(name);
			us.setEmail(email);
			us.setPhone_no(phone_no);
			us.setPassword(password);
			HttpSession session=req.getSession();
			if(check!=null) {
				UserDAOImp dao=new UserDAOImp(DBConnection.getCon());
				boolean flag= dao.userRegister(us);
				
				
				if(flag) {
					//System.out.println("User Registration Successfully..");
					
					session.setAttribute("sucMsg", "Registration Successfully..");
					resp.sendRedirect("register.jsp");
				}else {
					//System.out.println("Something wrong on server...");
					
					session.setAttribute("failedMsg", " Something wrong on server...");
					resp.sendRedirect("register.jsp");
				}
			}else {
				//System.err.println("Please check Agree terms & Condition");				
				session.setAttribute("failedMsg", "Please check Agree terms & Condition");
				resp.sendRedirect("register.jsp");
			}
			
			
		} catch (Exception e) {
			e.printStackTrace();
		}
		 
	}

	@Override
	protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		// TODO Auto-generated method stub
		super.doGet(req, resp);
	}

}
