function comprar(productId, quantity){
	if(quantity == null){
		quantity = $("#quantity").val();
	}

	var dataString = "{productId:"+productId+",quantity:"+quantity+"}";
	console.log(dataString);
	$("#"+productId+"_check").fadeIn();
	setTimeout(function(){$("#"+productId+"_check").fadeOut();},1000);

	$.ajax({
        type: "POST",
        url: "/ecommerce/item/add/",
        data: dataString,
        dataType: "json",
        contentType: "application/json;",
        success: function(data, textStatus, jqXHR) {
        	console.log("success " + data);
        },
        error: function(jqXHR, textStatus, errorThrown){
        	console.log("error " + textStatus);
        	window.location="/ecommerce/outofstock/Out of Stock";
        }
	});

	setTimeout(function(){
		$("#items").fadeOut(500, function() {
			location.reload();	
		});
	},1000);
}

function adicionarAoCarrinho(productId){
	comprar(productId, 1);
}

function aumentarOuDiminuirQuantidadeItem(productId, increase){
	var dataString = "{productId:"+productId+"}";
	var url = "";
	if(increase){url ="/ecommerce/item/increase/";} 
	else {url = "/ecommerce/item/decrease/";}

	$.ajax({
        type: "POST",
        data: dataString,
        url: url,
        dataType: "json",
        contentType: "application/json;",
        success: function(data, textStatus, jqXHR) {
        	console.log("success " + data);
        },
        error: function(jqXHR, textStatus, errorThrown){
        	console.log("error " + textStatus);
        	window.location="/ecommerce/outofstock/Out of Stock";
        }
	});

	setTimeout(function(){
		$("#items").fadeOut(500, function() {
			location.reload();	
		});
	},500);
}