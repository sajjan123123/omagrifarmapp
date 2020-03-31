package com.agrifarm.products;

import java.io.Console;
import java.io.IOException;
import java.io.PrintWriter;
import java.util.ArrayList;
import java.util.List;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.agrifarm.model.Item;
import com.agrifarm.model.Product;
import com.agrifarm.model.ProductList;

/**
 * Servlet implementation class HelloServlet
 */
@WebServlet("/path")
public class PathLinksServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public PathLinksServlet() {
        super();
        // TODO Auto-generated constructor stub
        //SingleController?action=student"
        //String action = request.getParameter("action");
    }

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) 
			throws ServletException, IOException {
		HttpSession session = request.getSession();
		if (session.getAttribute("productList") == null) {
			List<Product> productList= ProductList.getProductList();
			session.setAttribute("productList", productList);
		}
		String action = request.getParameter("action");
		session.setAttribute("productCount",0);
		if(session.getAttribute("cart") != null){
			List<Item> cart = (List<Item>) session.getAttribute("cart");
			session.setAttribute("productCount", cart.size());
		}
		if(action.equalsIgnoreCase("home")){
			request.getRequestDispatcher("/index.jsp").forward(request, response);
		}
		if(action.equalsIgnoreCase("aboutus")){
			request.getRequestDispatcher("/jsp/aboutus.jsp").forward(request, response);
		}
		
		if(action.equalsIgnoreCase("alphonso")){
			request.getRequestDispatcher("/jsp/alphonso.jsp").forward(request, response);
		}
		if(action.equalsIgnoreCase("mallika")){
			request.getRequestDispatcher("/jsp/mallika.jsp").forward(request, response);
		}
		if(action.equalsIgnoreCase("dassehri")){
			request.getRequestDispatcher("/jsp/dassehri.jsp").forward(request, response);
		}
		if(action.equalsIgnoreCase("kaser")){
			request.getRequestDispatcher("/jsp/kaser.jsp").forward(request, response);
		}
		if(action.equalsIgnoreCase("jaggery")){
			request.getRequestDispatcher("/jsp/jaggery.jsp").forward(request, response);
		}
		if(action.equalsIgnoreCase("jaggerypowder")){
			request.getRequestDispatcher("/jsp/jaggerypowder.jsp").forward(request, response);
		}
		if(action.equalsIgnoreCase("amachurpowder")){
			request.getRequestDispatcher("/jsp/amachurpowder.jsp").forward(request, response);
		}
		if(action.equalsIgnoreCase("jam")){
			request.getRequestDispatcher("/jsp/jam.jsp").forward(request, response);
		}
		if(action.equalsIgnoreCase("mangopapad")){
			request.getRequestDispatcher("/jsp/mangopapad.jsp").forward(request, response);
		}
		if(action.equalsIgnoreCase("products")){
			request.getRequestDispatcher("/jsp/products.jsp").forward(request, response);
		}
		if(action.equalsIgnoreCase("contact")){
			request.getRequestDispatcher("/jsp/contact.jsp").forward(request, response);
		}
		if(action.equalsIgnoreCase("checkout")){
			request.getRequestDispatcher("/jsp/checkout.jsp").forward(request, response);
		}
		if(action.equalsIgnoreCase("test")){
			request.getRequestDispatcher("/test.jsp").forward(request, response);
		}
		
	}

}
