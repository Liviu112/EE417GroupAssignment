
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

function addtocart(idd)
{
	
	
	var quan=document.getElementById("input_number").value;
	if(quan==null || quan=="")
	{
		alert("Please, select a quantity above 0.")
	}
	else
	{
		let myobj = 
			{
				id : idd,
				price : 13,
				quantity : quan
			};
		
		
		if(sessionStorage.getItem('data')== null)
		{
				
				sessionStorage.setItem('data','[]');
				var old_data = JSON.parse(sessionStorage.getItem('data'));
				old_data.push(myobj);
				
		}
		else
		{
			var old_data = JSON.parse(sessionStorage.getItem('data'));
		
			var i;
			var possible = new Boolean(true);
			
			for (i = 0; i < old_data.length; i++) {
				
				if(old_data[i].id==myobj.id)
				{
					//dont create a new object in session storage if the object is already in the basket
					//this boolean permits just to update the quantity in the basket
					possible=false;
				}
			}
			
			if(possible==true)
			{
				old_data.push(myobj);
			}
			else
			{
				for (i = 0; i < old_data.length; i++) {
		  		
					if(old_data[i].id==myobj.id)
					{	
						old_data[i].quantity=parseInt(old_data[i].quantity)+parseInt(myobj.quantity);
					}
				
				}	
			}
			
		
		}
	
		sessionStorage.setItem('data',JSON.stringify(old_data));
		
		update_basket(quan);
	}
	
	
	
		
}

function update_basket(quantity)
{
	if(sessionStorage.getItem('basket')==null)
	{
		sessionStorage.setItem('basket',quantity);
		//session.setAttribute("basket",quantity);
		
	}
	else
	{
		var ba = sessionStorage.getItem('basket');
		ba=parseInt(ba)+parseInt(quantity);
		
		sessionStorage.setItem('basket',ba);

		
	}
	
	alert("Added to your basket !");
	window.location.reload();
}





