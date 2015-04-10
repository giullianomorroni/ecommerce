package br.com.ecommerce.beans;

import java.io.Serializable;
import java.util.ArrayList;
import java.util.List;

import javax.enterprise.context.SessionScoped;
import javax.inject.Inject;
import javax.inject.Named;


@Named("shoppingCart")
@SessionScoped
public class ShoppingCart implements Serializable {

	private static final long serialVersionUID = 3739784145981368712L;

	private List<Product> myCart;
	private Products products;

	public ShoppingCart(){
		this(null);
	}

	@Inject
	public ShoppingCart(Products products) {
		this.myCart = new ArrayList<Product>();
		this.products = products;
	}

	public void addToCart(Long id, Integer quantity) throws Exception {
		if(!products.inStock(id, quantity)){
			throw new Exception("Out Of Stock");
		}

		Product product;
		if(myCart.contains(new Product(id))) {
			int indexOf = myCart.indexOf(new Product(id));
			if(indexOf < 0){
				throw new Exception("Not Found");
			}
			product = myCart.get(indexOf);
			myCart.remove(product);
			product.sumQuantity(quantity);
			myCart.add(product);
		} else {
			product = products.findById(id);
			product.subtractQuantity(quantity);
			myCart.add(product);
		}
		products.updateStock(id, -quantity);
	}

	public void increaseOrDecreaseCart(Long id, Boolean increase) throws Exception{
		Product product;
		if(increase){
			if(!products.inStock(id, 1)){
				throw new Exception("Out Of Stock");
			}
			int indexOf = myCart.indexOf(new Product(id));
			if(indexOf < 0){
				throw new Exception("Not Found");
			}
			product = myCart.get(indexOf);
			myCart.remove(product);
			product.sumQuantity(1);
			myCart.add(product);
			products.updateStock(id, -1);
		} else {
			int indexOf = myCart.indexOf(new Product(id));
			if(indexOf < 0){
				throw new Exception("Not Found");
			}
			product = myCart.get(indexOf);
			myCart.remove(product);
			product.subtractQuantity(-1);
			myCart.add(product);
			products.updateStock(id, 1);
		}
	}

	public List<Product> getProducts() {
		return myCart;
	}

	@Override
	public int hashCode() {
		final int prime = 31;
		int result = 1;
		result = prime * result
				+ ((myCart == null) ? 0 : myCart.hashCode());
		return result;
	}

	@Override
	public boolean equals(Object obj) {
		if (this == obj)
			return true;
		if (obj == null)
			return false;
		if (getClass() != obj.getClass())
			return false;
		ShoppingCart other = (ShoppingCart) obj;
		if (myCart == null) {
			if (other.myCart != null)
				return false;
		} else if (!myCart.equals(other.myCart))
			return false;
		return true;
	}
	
}
