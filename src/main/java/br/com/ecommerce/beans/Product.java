package br.com.ecommerce.beans;

import java.io.Serializable;
import java.math.BigDecimal;

public class Product implements Serializable {

	private static final long serialVersionUID = -370463393811606785L;

	private Long id;
	private BigDecimal price = new BigDecimal(1.99);
	private String description = "abc abc abc abc abc abc";
	private String name = "Product Xyz";

	private Integer quantity;
	private Integer stock;
	private BigDecimal total;

	public Product() {
		super();
	}

	public Product(Long id){
		this.id = id;
	}
	
	public Product(Long id, Integer stock){
		this.id = id;
		this.stock = stock;
	}

	public void sumQuantity(Integer newQuantity){
		if(this.quantity == null)
			this.quantity = 0;
		this.quantity = this.quantity+newQuantity;
		this.total = this.price.multiply(new BigDecimal(this.quantity)); 
	}

	public void subtractQuantity(Integer newQuantity) {
		if(this.quantity == null)
			this.quantity = 0;
		this.quantity = this.quantity+newQuantity;
		this.total = this.price.multiply(new BigDecimal(this.quantity)); 
	}

	public Long getId() {
		return id;
	}

	public void setId(Long id) {
		this.id = id;
	}

	public BigDecimal getPrice() {
		return price;
	}

	public void setPrice(BigDecimal price) {
		this.price = price;
	}

	public String getDescription() {
		return description;
	}

	public void setDescription(String description) {
		this.description = description;
	}

	public Integer getQuantity() {
		return quantity;
	}

	public void setQuantity(Integer quantity) {
		this.quantity = quantity;
	}

	public BigDecimal getTotal() {
		return total;
	}

	public void setTotal(BigDecimal total) {
		this.total = total;
	}

	public String getName() {
		return name;
	}

	public void setName(String name) {
		this.name = name;
	}

	public Integer getStock() {
		return stock;
	}

	public void setStock(Integer stock) {
		this.stock = stock;
	}

	@Override
	public int hashCode() {
		final int prime = 31;
		int result = 1;
		result = prime * result + ((id == null) ? 0 : id.hashCode());
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
		Product other = (Product) obj;
		if (id == null) {
			if (other.id != null)
				return false;
		} else if (!id.equals(other.id))
			return false;
		return true;
	}

}
