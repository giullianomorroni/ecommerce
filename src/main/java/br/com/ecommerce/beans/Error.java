package br.com.ecommerce.beans;

import java.io.Serializable;

public class Error implements Serializable{

	private static final long serialVersionUID = 5875554418073348631L;
	private static Integer status = new Integer(400);

	public Integer getStatus() {
		return status;
	}
	
}
