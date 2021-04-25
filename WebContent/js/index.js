displayCart();
	

function main()
{
	let carts = document.querySelector('.add-cart');
	let productContainer = document.querySelector('.test');

	var nam=document.getElementById("nameflower").textContent;
	var id=document.getElementById("idflower").textContent;
	var pri=document.getElementById("priceflower").textContent;
	
	let product = 
{
	name: nam,
	tag: id,
	price: pri,
	inCart: 0
};


	
	carts.addEventListener('click',()=>{
		
		var quantity=document.getElementById("input_number").value;
	
		if(quantity==null || quantity=="" || quantity=='0')
		{
			alert("Please, select a quantity above 0.")
		}
		else
		{
			cartNumbers(product,quantity);
			totalCost(product,quantity);
			window.location.reload();
		}
		
	})
	

}


function cartNumbers(product,quan)
{
	
	productNumbers = localStorage.getItem('cartNumbers');
	productNumbers = parseInt(productNumbers);
	
	
	if(productNumbers)
	{
		localStorage.setItem('cartNumbers',productNumbers+parseInt(quan));
		
	}
	else
	{
		localStorage.setItem('cartNumbers',parseInt(quan));

		
	}
	
	setItems(product,quan);	
	
	alert("Item added to the basket.");
	
	
}


function setItems(product,quan)
{
	let cartItems = localStorage.getItem('productsInCart');
	cartItems=JSON.parse(cartItems);
	
	if(cartItems!= null)
	{	
		if(cartItems[product.tag]==undefined)
		{	
			cartItems = {
				...cartItems,
				[product.tag]: product
				
			}
		}
		
		cartItems[product.tag].inCart += parseInt(quan);
	}
	else
	{
		product.inCart = parseInt(quan);
		cartItems = {
		[product.tag]: product		
		}	
	}
		
	
	
	localStorage.setItem("productsInCart",JSON.stringify(cartItems));
	
}

function totalCost(product,quan)
{
	let cartCost = localStorage.getItem("totalCost");
	
	if(cartCost!= null)
	{
		cartCost=parseInt(cartCost);
		localStorage.setItem("totalCost",cartCost+quan*(product.price));
	}
	else
	{
		localStorage.setItem("totalCost",quan*(product.price));
	}
	
}

function displayCart()
{
	let cartItems = localStorage.getItem("productsInCart");
	cartItems=JSON.parse(cartItems);
	let productContainer = document.querySelector('.products');


	if(cartItems && productContainer)
	{
		productContainer.innerHTML='';
		
		Object.values(cartItems).map(item => {
			if(item.inCart != 0)	
			{
				productContainer.innerHTML += '<div class="product" style="padding-left:600px;margin-left:+500px;margin-bottom:30px;">';
			 	productContainer.innerHTML += '<ion-icon name="ellipse-sharp" ></ion-icon>';
				productContainer.innerHTML += '<img src="./Images-Products/flowers/mix/'+item.name+'.jpg" style="max-width:100px;">';
				console.log(productContainer);
				productContainer.innerHTML += '<span">'+item.name+'</span></div>';			
				i=(item.price);
				productContainer.innerHTML += '<span style="padding-left:130px;padding-right:100px;">$'+i+',00</span>';	
				productContainer.innerHTML += '<span style="padding-left:130px;padding-right:100px;">'+item.inCart+'</span>';
				i=(item.inCart)*(item.price);
				productContainer.innerHTML += '<span style="padding-left:150px;">$'+i+',00</span>';	
				productContainer.innerHTML += '</div>';	
				
				
			}	
			
			

				
		});
	
		productContainer.innerHTML += '<div class="basketTotalContainer">';
		productContainer.innerHTML += '<h3 style="margin-top:20px; margin-bottom: 20px; margin-left: -700px;">Total : '+'$'+localStorage.getItem("totalCost")+',00</h3>';
		productContainer.innerHTML += '</div>';
	}
	                
              
}

function changebasket()
{
	let cartItems = localStorage.getItem('productsInCart');
	cartItems=JSON.parse(cartItems);
	
	var x=document.getElementById("nameproduct").value;
	var y=document.getElementById("qtt").value;
	y=parseInt(y);
	
	
	if(x=="")
	{
		alert("Please give the name of the product.");
	}
	else if(y=="")
	{
		alert("Please give the quantity you want to add or remove.");
	}
	else if(isNaN(y))
	{
		alert("Please enter a available quantity.");
	}
	else
	{
		possible=0;
		for(let i in cartItems){
   			if(cartItems[i].name==x)
   			{
   				possible=1;
   				j=i;
   			}
		}
		
		if(possible==0)
		{
			alert("Product unknown.");
		}
		else
		{
			
			t=(cartItems[j].inCart)-((cartItems[j].inCart)*2);
			
			if(y<t)
			{
				alert("Not enough to remove");
			}
			else
			{
				cartItems[j].inCart+=y;
				
				
				localStorage.setItem("productsInCart",JSON.stringify(cartItems));
				
				
				cost=parseInt(localStorage.getItem("totalCost"));
				cost+=(cartItems[j].price)*y;
				localStorage.setItem("totalCost",cost);
				
				var nb = parseInt(localStorage.getItem("cartNumbers"));
				nb+=y;
				localStorage.setItem("cartNumbers",nb);

				
				if(y<0)
				{
					alert("quantity removed successfully.");
				}
				else if(y>0)
				{
					alert("quantity added successfully.");
				}
				else
				{
					alert("Select a number other than 0. ");
				}
				
				
			
				
				window.location.reload();
			}
		}
	}
	
	
}


function increments() {

if(document.getElementById("input_number").value=="")
{
	document.getElementById("input_number").value=1;
}
else
{
	var i =document.getElementById("input_number").value;
	i++;
	document.getElementById("input_number").value=i;
}

}

//Clear the basket
function clearbasket()
{
	localStorage.removeItem('cartNumbers');
	localStorage.removeItem('productsInCart');
	localStorage.removeItem('totalCost');
	
		
}


function decrements() {

if(document.getElementById("input_number").value=="" || document.getElementById("input_number").value==0)
{
	document.getElementById("input_number").value=0;
}
else
{
	var i =document.getElementById("input_number").value;
	i--;
	document.getElementById("input_number").value=i;
}

}