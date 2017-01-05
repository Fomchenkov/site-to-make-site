let feedbackFormSubmit = document.getElementById("feedback_sbm");
feedbackFormSubmit.addEventListener("click", validateFeedBackForm);

// Проверка формы обратной связи
function validateFeedBackForm(event) 
{
	// Проверка email на корректность
	function isEmail(email) 
	{
		var re = /^\w+([\.-]?\w+)*@\w+([\.-]?\w+)*(\.\w{2,3})+$/;
		return re.test(email);
	}

	// Успешно ли пройдена валидация
	let isNormal = true;

	let name = document.getElementsByName("name")[0];
	let email = document.getElementsByName("email")[0];
	let topic = document.getElementsByName("topic")[0];
	let message = document.getElementsByName("message")[0];

	let elements = [name, email, topic, message];

	// div для вывода текста ошибок
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

	alert("Сообщение успешно отправлено");
}
