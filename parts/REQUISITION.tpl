<?php

// При отправке формы заказа
if (isset($_POST["req_sbm"]))
{
	$headers = "Content-Type: text/html; charset=UTF-8";
	require_once 'config.php';
	// Сбор данных из формы
	$name = $_POST["name"] ?? "null";
	$client_mail = $_POST["email"] ?? "null";
	$req_type = $_POST["req_type"] ?? "null";
	$comment = $_POST["comment"] ?? "null";

	$message_topic = "Заказ на разработку сайта";
	// Формирование текста письма
	$message_text = "Имя клиента: " . $name . "\n";
	$message_text .= "Email клиента: " . $client_mail . "\n";
	$message_text .= "Тип заказа: " . $req_type . "\n";
	$message_text .= "Сообщение клиента: " . $comment . "\n";
	// Отправка письма на мой адрес почты
	mail($email, $message_topic, $message_text, $headers);

	// echo "<p>Ваше письмо успешно отправлено</p>";
}

?>
<div class="requisition">
	<a name="form"><div class="requsion_wrapper">
		<div class="requisition_form">
			<span class="req_form_header">Оформить заявку</span>
			<form action="" method="POST">
				<div id="error_msg"></div>
				<div class="req_form_fieds">
					<span>Ваше имя:</span>
					<span>Ваш email:</span>
					<span>Что заказываем?</span>
					<span>Ваш комментарий</span>
				</div>
				<div class="req_form_wrapper">
					<input type="text" name="name" class="form_text_fields" autofocus="">
					<input type="text" name="email" class="form_text_fields">
					<select name="req_type" class="form_text_fields">
						<option value="a1">Landing page</option>
						<option value="a2">Сайт-визитка</option>
						<option value="a3">Сайт компании</option>
					</select>
					<textarea class="form_text_fields" name="comment"></textarea>
					<input type="submit" id="req_sbm" name="req_sbm" class="form_sbm">
				</div>
			</form>
		</div>
	</div></a>
</div>
<script type="text/javascript" src="src/requisition.js"></script>