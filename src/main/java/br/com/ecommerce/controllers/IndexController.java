package br.com.ecommerce.controllers;

import javax.inject.Inject;

import br.com.caelum.vraptor.Controller;
import br.com.caelum.vraptor.Get;
import br.com.caelum.vraptor.Path;
import br.com.caelum.vraptor.Result;
import br.com.ecommerce.beans.Products;

@Controller
public class IndexController {

	private Result result;
	private Products products;

	protected IndexController() {
		this(null, null);
	}

	@Inject
	public IndexController(Result result, Products products) {
		this.result = result;
		this.products = products;
	}

	@Get
	@Path("/index")
	public void index() {
		result.include("items", products.itens());
	}


}