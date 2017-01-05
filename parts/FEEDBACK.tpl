<?php

// При отправке формы заказа
if (isset($_POST["feedback_sbm"]))
{
	require_once 'config.php';
	$headers = "Content-Type: text/html; charset=UTF-8";
	// Сбор данных из формы
	$name = $_POST["name"] ?? "null";
	$client_mail = $_POST["email"] ?? "null";
	$topic = $_POST["topic"] ?? "null";
	$message = $_POST["message"] ?? "null";

	$message_topic = "Обратная связь";
	// Формирование текста письма
	$message_text = "Имя клиента: " . $name . "\n";
	$message_text .= "Email клиента: " . $client_mail . "\n";
	$message_text .= "Тема сообщения: " . $topic . "\n";
	$message_text .= "Сообщение клиента: " . $message . "\n";
	// Отправка письма на мой адрес почты
	mail($email, $message_topic, $message_text, $headers);

	// echo "<p>Ваше письмо успешно отправлено</p>";
}

?>
<div class="feedback">
	<div class="feedback_wrapper">
		<h1>Написать письмо</h1>
		<hr>
		<form class="feedback_form" accept="" method="POST">
			<div id="error_msg"></div>
			<div class="feedback_feelds">
				<span>Имя</span>
				<span>Email</span>
				<span>Тема сообщения</span>
				<span>Текст сообщения</span>
			</div>
			<div class="feedback_form_wrapper">
				<input type="text" name="name" autofocus="">
				<input type="text" name="email">
				<input type="text" name="topic">
				<textarea name="message"></textarea>
				<input type="submit" name="feedback_sbm" id="feedback_sbm">
			</div>
		</form>
	</div>
</div>
<script type="text/javascript" src="src/feedback.js"></script>