package br.com.ecommerce.controllers;

import javax.inject.Inject;

import br.com.caelum.vraptor.Consumes;
import br.com.caelum.vraptor.Controller;
import br.com.caelum.vraptor.Get;
import br.com.caelum.vraptor.Path;
import br.com.caelum.vraptor.Post;
import br.com.caelum.vraptor.Result;
import br.com.caelum.vraptor.view.Results;
import br.com.ecommerce.beans.ShoppingCart;
import br.com.ecommerce.beans.Success;

@Controller
public class CartController {

	private Result result;
	private ShoppingCart shoppingCart;

	protected CartController() {
		this(null,null);
	}

	@Inject
	public CartController(Result result, ShoppingCart shoppingCart) {
		this.result = result;
		this.shoppingCart = shoppingCart;
	}

	@Get
	@Path("/outofstock/{message}")
	public void error(String message){
		result.include("error", message);
	}
	
	@Get
	@Path("/mycart")
	public void index(){
		result.include(shoppingCart);
	}

	@Post
	@Consumes("application/json")
	@Path("/item/add/")
	public void addItem(Long productId, Integer quantity) {
		try {
			if(quantity == null)
				quantity = 1;
			shoppingCart.addToCart(productId, quantity);
		} catch (Exception e) {
			result.redirectTo(this).error("Out of stock");
			return;
		}
		result.use(Results.json()).from(new Success()).serialize();  
	}

	@Post
	@Consumes("application/json")
	@Path("/item/decrease/")
	public void decreaseItem(Long productId) {
		try {
			shoppingCart.increaseOrDecreaseCart(productId, false);
		} catch (Exception e) {
			result.forwardTo(this).error("Out of stock");
		}
		result.use(Results.json()).from(new Success()).serialize();  
	}

	@Post
	@Consumes("application/json")
	@Path("/item/increase/")
	public void increaseItem(Long productId) {
		try {
			shoppingCart.increaseOrDecreaseCart(productId, true);
		} catch (Exception e) {
			result.forwardTo(this).error("Out of stock");
		}
		result.use(Results.json()).from(new Success()).serialize();  
	}

}