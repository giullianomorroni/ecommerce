package br.com.ecommerce.controllers;

import javax.inject.Inject;

import br.com.caelum.vraptor.Controller;
import br.com.caelum.vraptor.Get;
import br.com.caelum.vraptor.Path;
import br.com.caelum.vraptor.Result;
import br.com.ecommerce.beans.Product;
import br.com.ecommerce.beans.Products;

@Controller
public class ProductController {

	private Result result;
	private Products products;

	protected ProductController() {
		this(null,null);
	}

	@Inject
	public ProductController(Result result, Products products) {
		this.result = result;
		this.products = products;
	}

	@Get
	@Path("/product/{productId}")
	public void index(Long productId){
		Product product = products.findById(productId);
		result.include(product);
	}

}