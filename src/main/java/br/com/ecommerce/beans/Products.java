package br.com.ecommerce.beans;

import java.io.Serializable;
import java.util.ArrayList;
import java.util.List;

import javax.enterprise.context.ApplicationScoped;
import javax.inject.Named;

@Named("products")
@ApplicationScoped
public class Products implements Serializable {

	private static final long serialVersionUID = -2950372717230664328L;
	private List<Product> itens;

	public Products() {
		super();
		this.itens();
	}

	public List<Product> itens(){
		if(itens == null){
			itens = new ArrayList<Product>();
		}
		if (itens.size() > 0){
			return itens;
		}
		itens.add(new Product(1L, 10));
		itens.add(new Product(2L, 5));
		itens.add(new Product(3L, 3));
		itens.add(new Product(4L, 4));
		itens.add(new Product(5L, 5));
		return itens;
	}

	public Product findById(Long id) {
		for (Product p : itens) {
			if(p.getId().equals(id)){
				return p;
			}
		}
		return null;
	}

	public void updateStock(Long id, Integer quantity){
		int indexOf = itens.indexOf(new Product(new Long(id)));
		if(indexOf < 0){
			return;
		}
		Product item = itens.remove(indexOf);
		Integer actualStock = item.getStock();
		Integer newStock = actualStock + quantity;
		item.setStock(newStock);
		itens.add(indexOf, item);
	}

	public Boolean inStock(Long id, Integer quantity){
		Product product = new Product(new Long(id));
		int indexOf = itens.indexOf(product);
		if(indexOf < 0){
			return false;
		}
		Product item = itens.get(indexOf);
		return item.getStock() >= quantity;
	}

	public List<Product> getItens() {
		return itens;
	}

}
