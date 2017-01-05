let reqFormSubmit = document.getElementById("req_sbm");
reqFormSubmit.addEventListener("click", validateRequisitionForm);

function validateRequisitionForm(event) 
{
	function isEmail(email) 
	{
		var re = /^\w+([\.-]?\w+)*@\w+([\.-]?\w+)*(\.\w{2,3})+$/;
		return re.test(email);
	}

	let isNormal = true;

	let name = document.getElementsByName("name")[0];
	let email = document.getElementsByName("email")[0];
	let req_type = document.getElementsByName("req_type")[0];
	let comment = document.getElementsByName("comment")[0];

	let elements = [name, email, req_type, comment];

	let err_msg = document.getElementById("error_msg");

	for (let i = 0; i < elements.length; i++)
	{
		if (elements[i].value == "")
		{
			// Уведомить пользователя
			elements[i].style.border = "2px solid red";
			isNormal = false;
			err_msg.innerHTML = "Заполните все поля";
		}
		else
		{
			elements[i].style.border = "";
		}
	}

	if (!isEmail(email.value))
	{
		email.style.border = "2px solid red";
		err_msg.innerHTML = "Некорректный email";
		isNormal = false;
	}
	else
	{
		email.style.border = "";
	}

	if (!isNormal)
	{
		event.preventDefault();
		return false;
	}

	alert("Ваш запрос на разработку сайта успешно отправлен");
}
