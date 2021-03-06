package ogrenciotomasyonu;

import java.io.*;

import java.sql.SQLException;
 
import javax.servlet.*;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.*;
 
@WebServlet("/login")
public class UserLoginServlet extends HttpServlet {
    private static final long serialVersionUID = 1L;
 
    
    private userDAO userDao;
    public UserLoginServlet() {
        super();
    }
    
    public void init() {
    	  String jdbcURL = getServletContext().getInitParameter("jdbcURL");
    		String jdbcUsername = getServletContext().getInitParameter("jdbcUsername");
    		String jdbcPassword = getServletContext().getInitParameter("jdbcPassword");
 
    		userDao = new userDAO(jdbcURL, jdbcUsername, jdbcPassword); 
    }
    
  
    
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        String username = request.getParameter("username");
        String password = request.getParameter("password");
         
        
         
        try {
            user user = userDao.checkLogin(username, password);
            String destPage = "login.jsp";
             
            if (user != null) {
                HttpSession session = request.getSession();
                session.setAttribute("user", user);
                destPage = "home.jsp";
            } else {
                String message = "Invalid username/password";
                request.setAttribute("message", message);
            }
             
            RequestDispatcher dispatcher = request.getRequestDispatcher(destPage);
            dispatcher.forward(request, response);
             
        } catch (SQLException | ClassNotFoundException ex) {
            throw new ServletException(ex);
        }
    }

}