$(document).ready (function(){
	
	$("form").on("submit",function(){
		if($("#customer_name").val()==""){
			alert('Please Enter Your Name.')
			return false;
		};
		if($("#customer_email").val()==""){
			alert('Please Enter Your Email.')
			return false;
		}
		if($("#customer_message").val()==""){
			alert("Don't you want to leave us a message?")
			return false;
		}
	});

});




	

