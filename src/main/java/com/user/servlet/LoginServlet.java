/*package com.user.servlet;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
@WebServlet("/login")
public class LoginServlet extends HttpServlet {

	@Override
	protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		 try {
			String email=req.getParameter("email");
			String password=req.getParameter("password");
			
			
		} catch (Exception e) {
			e.printStackTrace();
		}
	}
	

}*/

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
 
@WebServlet("/login")
public class LoginServlet extends HttpServlet{

	@Override
	protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		try {
			UserDAOImp dao=new UserDAOImp(DBConnection.getCon());
			HttpSession session=req.getSession();
			String email=req.getParameter("email");
			String password=req.getParameter("password");
			if("admin@gmail.com".equals(email) && "admin".equals(password)) {
				User us=new User();
				session.setAttribute("userobj", us);
				resp.sendRedirect("admin/home.jsp");
			}else {
				User us=dao.login(email, password);
				if(us!=null) {
					session.setAttribute("userobj", us);
					resp.sendRedirect("home.jsp");
				}else {
					session.setAttribute("failedMsg", "Email or Password is wrong");
					resp.sendRedirect("login.jsp");
				}
				resp.sendRedirect("home.jsp");
			}
			
//			System.out.println(name+" "+email);
			
		} catch (Exception e) {
			e.printStackTrace();
		}
		 
	}

	

}

 