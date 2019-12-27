function validateAdding() {
	
	let nameText = document.getElementById("name").value;
	let phoneText = document.getElementById("phone").value;
	let emailText = document.getElementById("email").value;
	
	for(int i = 0; i < nameText.length; i++) {
		if(!(nameText >= 65 && nameText <= 90 || nameText >= 97 && nameText <= 122))
			{
				alert("Alert: Name cannot contain numerics.");
				return false;
			}
	}
	
	if(phoneText.length != 10) {
		alert("Alert: Phone number cannot be of length.");
		return false;
	}
	
	return true;
	
}