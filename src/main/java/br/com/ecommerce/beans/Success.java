package br.com.ecommerce.beans;

import java.io.Serializable;

public class Success implements Serializable{

	private static final long serialVersionUID = 5875554418073348631L;
	private static Integer status = new Integer(200);

	public Integer getStatus() {
		return status;
	}
	
}
