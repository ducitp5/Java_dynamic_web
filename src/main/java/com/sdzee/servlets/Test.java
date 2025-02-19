package com.sdzee.servlets;

import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.sdzee.beans.Coyote;

/**
 * Servlet implementation class Test
 */
@WebServlet("/Test2")
public class Test extends HttpServlet {
	private static final long serialVersionUID = 1L;

    /**
     * Default constructor. 
     */
    public Test() {
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
	   	
//		usePrintWriter(response);
//		useRequesDispatcher(request, response);
		useBeanCoyote(request, response);
		
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		doGet(request, response);
	}
	
	public void useBeanCoyote(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

		String paramAuteur = request.getParameter("auteur");
		String message = "Transmission de variables : OK ! " + paramAuteur;

		Coyote premierBean = new Coyote();

		premierBean.setNom("Coyote");
		premierBean.setPrenom("Wile E.");

		request.setAttribute("test", message);
		request.setAttribute("coyote", premierBean);

		System.out.println("abc");
		this.getServletContext().getRequestDispatcher("/duc/NewFile.jsp").forward(request, response);
	}

	public void useRequesDispatcher(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		String paramAuteur = request.getParameter("auteur");
		String message = "Transmission de variables : OK ! " + paramAuteur;
		request.setAttribute("message", message);
		
		System.out.println("paramAuteur - " +paramAuteur);
		System.out.println("message - " +message);

		this.getServletContext()
			.getRequestDispatcher("duc/test.jsp")
			.forward(request, response);
	}

	public void usePrintWriter(HttpServletResponse response) throws IOException {
		
		response.setContentType("text/html");
		response.setCharacterEncoding( "UTF-8" );
		PrintWriter out = response.getWriter();
		out.println("<!DOCTYPE html>");
		out.println("<html>");
		out.println("<head>");
		out.println("<meta charset=\"utf-8\" />");
		out.println("<title>Test</title>");
		out.println("</head>");
		out.println("<body>");
		out.println("<p>Ceci est une page générée depuis une servlet.</p>");
		out.println("</body>");
		out.println("</html>");
	}
}
