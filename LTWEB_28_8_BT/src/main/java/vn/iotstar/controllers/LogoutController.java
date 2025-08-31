package vn.iotstar.controllers;

import java.io.IOException;

import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.Cookie;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import jakarta.servlet.http.HttpSession;
@SuppressWarnings("serial")
@WebServlet(urlPatterns = "/logout")
public class LogoutController extends HttpServlet {

	/**
	 * 
	 */

	private static final long serialVersionUID = 1L;
	 @Override
	    protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
	        HttpSession session = req.getSession(false);
	        if (session != null) {
	            session.invalidate();
	        }
	        
	        Cookie[] cookies = req.getCookies();
	        if (cookies != null) {
	            for (Cookie cookie : cookies) {
	                if (cookie.getName().equals("username")) {
	                    cookie.setMaxAge(0);
	                    cookie.setPath("/");
	                    resp.addCookie(cookie);
	                    break;
	                }
	            }
	        }
	        resp.sendRedirect(req.getContextPath() + "/login");
	    }
	    
	    @Override
	    protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
	        doGet(req, resp);
	    }
	}

