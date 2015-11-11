package controller;

import java.io.IOException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

/**
 * Servlet implementation class LoginServlet
 */
public class LoginServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
	private static final String success = "success.jsp";  
	private static final String retailer = "retailer.jsp";
	private static final String customer = "customer.jsp";
	private static final String wholesaler = "wholesaler.jsp";
	private static final String supplier = "supplier.jsp";
	private static final String redirect = "error.jsp";   
    /**
     * @see HttpServlet#HttpServlet()
     */
    public LoginServlet() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		//response.getWriter().append("Served at: ").append(request.getContextPath());
		
		String user = request.getParameter("user");
		String pass = request.getParameter("pass");
		String role = request.getParameter("radios");
		
	

		if(user.equals("Jd123")&& pass.equals("UAlbany456")&& role.equals("radio2"))
			response.sendRedirect(wholesaler);
		else if (user.equals("Jd123")&& pass.equals("UAlbany456")&& role.equals("radio1"))
			response.sendRedirect(supplier);
		else if (user.equals("Jd123")&& pass.equals("UAlbany456")&& role.equals("radio3"))
			response.sendRedirect(retailer);
		else if (user.equals("Jd123")&& pass.equals("UAlbany456")&& role.equals("radio4"))
			response.sendRedirect(customer);
			
		else if (user.equals("")&& pass.equals("UAlbany456")) {
			request.setAttribute("error2","Username not entered !!!");
			RequestDispatcher rd = request.getRequestDispatcher("/login.jsp");            
			rd.forward(request, response);
		}
		
		else if (user.equals("Jd123")&& pass.equals("")) {
			request.setAttribute("error3","Password not entered !!!");
			RequestDispatcher rd = request.getRequestDispatcher("/login.jsp");            
			rd.forward(request, response);
		}
		
		else if (user.equals("")&& pass.equals("")) {
			request.setAttribute("error4","Enter Username and Password");
			RequestDispatcher rd = request.getRequestDispatcher("/login.jsp");            
			rd.forward(request, response);
		}

		else {
		request.setAttribute("error","Invalid Username or Password.");
		RequestDispatcher rd = request.getRequestDispatcher("/login.jsp");            
		rd.forward(request, response);
		}
		
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		doGet(request, response);
	}

}
