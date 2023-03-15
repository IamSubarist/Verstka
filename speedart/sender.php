<?php
    $name = $_POST['name'];
	$phone = $_POST['phone'];
    $email = $_POST['email'];

	$to = "optimistroma927@gmail.com"; 
	$date = date ("d.m.Y"); 
	$time = date ("h:i");
	$from = $email;
	$subject = "Заявка c сайта";

	
	$msg="
    Имя: $name
    Телефон: $phone
    Почта: $email";	
	mail($to, $subject, $msg, "From: $from ");

?>

<p>Ваша заявка отправлена, скоро с вами свяжется специалист, ожидайте.</p>
