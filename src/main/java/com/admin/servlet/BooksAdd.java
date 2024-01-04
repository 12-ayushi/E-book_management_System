 package com.admin.servlet;

import java.io.File;
import java.io.IOException;

import jakarta.servlet.http.Part;

import com.DAO.BookDAOImpl;
import com.DB.DBConnection;
import com.entity.BookDtls;

import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.MultipartConfig;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import jakarta.servlet.http.HttpSession;

@WebServlet("/add_books")
@MultipartConfig
public class BooksAdd extends HttpServlet {

	@Override
	protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		try {
			String bookName = req.getParameter("bname");
			String author = req.getParameter("author");
			String price = req.getParameter("price");
			String categories = req.getParameter("btype");
			String status = req.getParameter("bstatus");
//		 
//			Part part = req.getPart("bimg"); 
//			String fileName = part.getSubmittedFileName();
			  
			// Create a Part object.
		    Part part = req.getPart("bimg");

			// Get the file name of the uploaded file.
			String fileName = part.getSubmittedFileName();
			BookDtls b = new BookDtls(bookName, author, price, categories, status, fileName, "admin");

		// System.out.println(b);

			BookDAOImpl dao = new BookDAOImpl(DBConnection.getCon());

			 boolean f = dao.addBooks(b);

			HttpSession session = req.getSession();

			if (f) { 
				// FOR STORE THE PHOTO
				String path = getServletContext().getRealPath("") + "Book";
			// System.out.println(path);

				File file = new File(path);

				part.write(path + File.separator + fileName);
				session.setAttribute("succMsg", "Book Add SucessFully");
				resp.sendRedirect("admin/add_books.jsp");
			} else {
				session.setAttribute("failedMsg", "Something wrong on server");
				resp.sendRedirect("admin/add_books.jsp");
			}

		} catch (Exception e) {
			e.printStackTrace();
			
		}

	}

}