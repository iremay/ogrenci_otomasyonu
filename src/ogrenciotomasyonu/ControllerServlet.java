package ogrenciotomasyonu;

import java.io.IOException;

import java.sql.SQLException;
import java.util.List;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

/**
 * Servlet implementation class ControllerServlet
 */
@WebServlet("/ControllerServlet")
public class ControllerServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
	private ogrenciDAO ogrenciDAO;

	public void init() {
        String jdbcURL = getServletContext().getInitParameter("jdbcURL");
        String jdbcUsername = getServletContext().getInitParameter("jdbcUsername");
        String jdbcPassword = getServletContext().getInitParameter("jdbcPassword");
 
        ogrenciDAO = new ogrenciDAO(jdbcURL, jdbcUsername, jdbcPassword);
 
    }
	
	
	protected void doPost(HttpServletRequest request, HttpServletResponse response) 
			   throws ServletException, IOException {
        doGet(request, response);
    }
		
	protected void doGet(HttpServletRequest request, HttpServletResponse response) 
			throws ServletException, IOException {
		// TODO Auto-generated method stub
		response.getWriter().append("Served at: ").append(request.getContextPath());
		  String action = request.getServletPath();
		  try {
	            
				switch (action) {
	            case "/yenikayit":
	                yeniogrencikaydi(request, response);
	                break;
	            case "/ekle":
	                ogrenciekle(request, response);
	                break;
	            case "/sil":
	                ogrencisil(request, response);
	                break;
	            case "/duzenle":
	                ogrenciduzenle(request, response);
	                break;
	            case "/guncelle":
	                ogrenciguncelle(request, response);
	                break;
	            default:
	                ogrencilistesi(request, response);
	                break;
	            }
	        } catch (SQLException ex) {
	            throw new ServletException(ex);
	        }
	}
	private void ogrencilistesi(HttpServletRequest request, HttpServletResponse response)
            throws SQLException, IOException, ServletException {
        List<ogrenci> ogrencilistesi= ogrenciDAO.ogrencilistesi();
        request.setAttribute("ogrencilistesi", ogrencilistesi);
        RequestDispatcher dispatcher = request.getRequestDispatcher("ogrencilistesi.jsp");
        dispatcher.forward(request, response);
    }
 
    private void yeniogrencikaydi(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        RequestDispatcher dispatcher = request.getRequestDispatcher("ogrenciformu.jsp");
        dispatcher.forward(request, response);
    }
 
    private void ogrenciguncelle(HttpServletRequest request, HttpServletResponse response)
            throws SQLException, ServletException, IOException {
        int id = Integer.parseInt(request.getParameter("id"));
        ogrenci existingogrenci = ogrenciDAO.ogrencigetir(id);
        RequestDispatcher dispatcher = request.getRequestDispatcher("ogrenciformu.jsp");
        request.setAttribute("ogrenci", existingogrenci);
        dispatcher.forward(request, response);
 
    }
 
    private void ogrenciekle(HttpServletRequest request, HttpServletResponse response)
            throws SQLException, IOException {
        String ad = request.getParameter("ad");
        String soyad = request.getParameter("soyad");
        String bolum = request.getParameter("bolum");
 
        ogrenci yeniogrenci= new ogrenci(ad, soyad, bolum);
        ogrenciDAO.ogrenciekle(yeniogrenci);
        response.sendRedirect("list");
    }
 
    private void ogrenciduzenle(HttpServletRequest request, HttpServletResponse response)
            throws SQLException, IOException {
        int id = Integer.parseInt(request.getParameter("id"));
        String ad = request.getParameter("ad");
        String soyad = request.getParameter("soyad");
        String bolum = request.getParameter("bolum");
 
        ogrenci ogrenci = new ogrenci(id, ad, soyad, bolum);
        ogrenciDAO.ogrenciduzenle(ogrenci);
        response.sendRedirect("list");
    }
 
    private void ogrencisil(HttpServletRequest request, HttpServletResponse response)
            throws SQLException, IOException {
        int id = Integer.parseInt(request.getParameter("id"));
 
        ogrenci ogrenci = new ogrenci(id);
        ogrenciDAO.ogrencisil(ogrenci);
        response.sendRedirect("list");
 
    }
	
    public ControllerServlet() {
        super();
        // TODO Auto-generated constructor stub
    }
}