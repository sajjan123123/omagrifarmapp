package com.agrifarm.products;

import java.io.IOException;
import java.io.PrintWriter;
import java.util.ArrayList;
import java.util.HashSet;
import java.util.List;
import java.util.Set;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.agrifarm.model.Item;
import com.agrifarm.model.ProductList;
import com.agrifarm.model.SuccessMessageData;
import com.google.gson.Gson;


@WebServlet("/cart")
public class CartServlet extends HttpServlet {

	private static final long serialVersionUID = 1L;
	private Gson gson = new Gson();

	public CartServlet() {
		super();
	}

	protected void doGet(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		String action = request.getParameter("action");
		HttpSession session = request.getSession();
		if (action == null) {
			doGet_DisplayCart(request, response);
		} else {
			if (action.equalsIgnoreCase("buy")) {
				doGet_Buy(request, response);
				// send count to notify
				List<Item> cart = (List<Item>) session.getAttribute("cart");
				SuccessMessageData success= new SuccessMessageData("Added Item to Cart Successfully", cart.size());
				String successJsonString = this.gson.toJson(success);
				response.setContentType("text/html");
				PrintWriter out = response.getWriter();
				out.println(successJsonString);
				out.close();
			} else if (action.equalsIgnoreCase("remove")) {
				doGet_Remove(request, response);
			} else if (action.equalsIgnoreCase("buyAtCart")) {
				doGet_Buy(request, response);
				doGet_DisplayCart(request, response);
			} else if (action.equalsIgnoreCase("minusOneAtCart")) {
				doGet_MinusOneItem(request, response);
				doGet_DisplayCart(request, response);
			} 
			
		}
	}

	protected void doGet_DisplayCart(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		request.getRequestDispatcher("/jsp/checkout.jsp").forward(request, response);
	}

	protected void doGet_MinusOneItem(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		HttpSession session = request.getSession();
		if (session.getAttribute("cart") == null) {
			List<Item> cart = new ArrayList<Item>();
			cart.add(new Item(ProductList.getProductByID(request.getParameter("id")), 1));
			session.setAttribute("cart", cart);
		} else {
			List<Item> cart = (List<Item>) session.getAttribute("cart");
			int index = isExisting(request.getParameter("id"), cart);
			if (index == -1) {
				cart.add(new Item(ProductList.getProductByID(request.getParameter("id")), 1));
			} else {
				int quantity = cart.get(index).getQuantity() - 1;
				if(quantity <= 0){
					// cart.get(index).setQuantity(0);
					doGet_RemoveItem(request, response);
				}else{
					cart.get(index).setQuantity(quantity);	
				}
			}
			session.setAttribute("cart", cart);
		}
	}
	protected void doGet_RemoveItem(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		HttpSession session = request.getSession();
		List<Item> cart = (List<Item>) session.getAttribute("cart");
		int index = isExisting(request.getParameter("id"), cart);
		cart.remove(index);
		session.setAttribute("cart", cart);
	}
	
	protected void doGet_Remove(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		HttpSession session = request.getSession();
		List<Item> cart = (List<Item>) session.getAttribute("cart");
		int index = isExisting(request.getParameter("id"), cart);
		cart.remove(index);
		session.setAttribute("cart", cart);
		response.sendRedirect("cart");
	}

	protected void doGet_Buy(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		HttpSession session = request.getSession();
		// add ID to cartIdsList
		Set<String> cartIdsList = new HashSet<String>();
		if (session.getAttribute("cart") == null) {
			cartIdsList.add(request.getParameter("id"));
			session.setAttribute("cartIdsList", cartIdsList);
		}else {
			cartIdsList = (Set<String>) session.getAttribute("cartIdsList");
			cartIdsList.add(request.getParameter("id"));
			session.setAttribute("cartIdsList", cartIdsList);
		}
		
		if (session.getAttribute("cart") == null) {
			List<Item> cart = new ArrayList<Item>();
			cart.add(new Item(ProductList.getProductByID(request.getParameter("id")), 1));
			session.setAttribute("cart", cart);
		} else {
			List<Item> cart = (List<Item>) session.getAttribute("cart");
			int index = isExisting(request.getParameter("id"), cart);
			if (index == -1) {
				cart.add(new Item(ProductList.getProductByID(request.getParameter("id")), 1));
			} else {
				int quantity = cart.get(index).getQuantity() + 1;
				cart.get(index).setQuantity(quantity);
			}
			session.setAttribute("cart", cart);
		}
		//response.sendRedirect("cart");
	}

	private int isExisting(String id, List<Item> cart) {
		for (int i = 0; i < cart.size(); i++) {
			if (cart.get(i).getProduct().getId().equalsIgnoreCase(id)) {
				return i;
			}
		}
		return -1;
	}

	protected void doPost(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
	}

}
