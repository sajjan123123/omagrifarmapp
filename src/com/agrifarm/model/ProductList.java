package com.agrifarm.model;

import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;

public class ProductList {
	
	static HashMap<String,Product> productList=new HashMap<String, Product>();
	static{
		Product product1= new Product("ID1","Alphonso Mango","images/product.jpg",120);
		Product product2= new Product("ID2","Kesar Mango","images/productk.jpg",120);
		Product product3= new Product("ID3","Dassehri Mango","images/productd.jpg",120);
		Product product4= new Product("ID4","mallika Mango","images/productm.jpg",120);
		Product product5= new Product("ID5","Jaggery","images/product1.jpg",120);
		Product product6= new Product("ID6","Jaggery Powder","images/product2.jpg",80);
		Product product7= new Product("ID7","Amachur Powder","images/product3.jpeg",130);
		Product product8= new Product("ID8","jam","images/product4.jpg",110);
		Product product9= new Product("ID9","Mango papad","images/product5.jpg",120);
		productList.put("ID1",product1);
		productList.put("ID2",product2);
		productList.put("ID3",product3);
		productList.put("ID4",product4);
		productList.put("ID5",product5);
		productList.put("ID6",product6);
		productList.put("ID7",product7);
		productList.put("ID8",product8);
		productList.put("ID9",product9);
	}
	public static Product getProductByID(String id){
		return productList.get(id);
	}
	public static List<Product> getProductList(){
		ArrayList<Product> valueList = new ArrayList<Product>(productList.values());
		return valueList;
	}

}
