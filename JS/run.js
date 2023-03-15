// var x = 10;
// var y = (x>10)?1:0;
// var z = (x>=10)?((y==0)?10:20):((y==1)?1:0);

// if (x>=10) {
// 	if (y==0) {
// 		z=10;
// 	}
// 	else{
// 		z=20;
// 	}
// }
// else{
// 	if (y==1) {
// 		z=1;
// 	}
// 	else{
// 		z=0;
// 	}
// }

// console.log(y);



// var svetofor = prompt('Введите цвет (red, yellow, green)');
// switch(svetofor){
// 	case 'red':
// 		console.log('Stop!');
// 		break;
// 	case 'yellow':
// 		console.log('Attention!');
// 		break;
// 	case 'green':
// 		console.log('Go!');
// 		break;
// 	default:
// 		console.log('Crush!');
// }



// if ((10>5)||(5>11)) {
// 	if (confirm("Вы уверены, что хотите вывести сообщение?")) {
// 		alert(111);
// 	}
// }



// function sum(x, y) {
// 	var z = x + y;
// 	console.log(z);
// }
// sum(5, 8)

// var a = 1, b = 2, c = -2;
// function d() {
// 	var d = b*b-4*a*c;
// 	return d;
// }

// function solution() {
// 	if (d()>=0) {
// 		var x1 = (-b+Math.round(Math.sqrt(d())))/(2*a);
// 		var x2 = (-b-Math.round(Math.sqrt(d())))/(2*a);
// 		console.log('x1 = '+x1+ "; x2" + x2);
// 	} else{
// 		alert("Нет действительных корней");
// 	}
// }
// solution();



// function fact(n) {
// 	if ((n==0) || (n==1)) {
// 		return 1;
// 	}
// 	return n * fact(n-1);
// }

// // 3! * fact(2) = 3 * 2 * fact(1) = 6
// alert(fact(3));





// var a = prompt('Введите a: ');
// var b = prompt('Введите b: ');
// 	if (a > 0 && b > 0){
// 	x = a - b;
// 	alert(x);
// 	}	else if (a < 0 && b < 0){
// 			x = a * b;
// 			alert (x);
// 		}	else if (a > 0 && b < 0 || a < 0 && b > 0) {
// 				x = a + b;
// 				alert (x);
// 			}


var a = +prompt ('Введите число от 1 до 15');
	switch (a) {
		case 1:
			alert ( 'Ваше число 1');
		case 2:
			alert ( 'Ваше число 2');
		case 3:
			alert ( 'Ваше число 3');
		case 4:
			alert ( 'Ваше число 4');
		case 5:
			alert ( 'Ваше число 5');
		case 6:
			alert ( 'Ваше число 6');
		case 7:
			alert ( 'Ваше число 7');
		case 8:
			alert ( 'Ваше число 8');
		case 9:
			alert ( 'Ваше число 9');
		case 10:
			alert ( 'Ваше число 10');
		case 11:
			alert ( 'Ваше число 11');
		case 12:
			alert ( 'Ваше число 12');
		case 13:
			alert ( 'Ваше число 13');
		case 14:
			alert ( 'Ваше число 14');
		case 15:
			alert ( 'Ваше число 15');
			break;
	}


// var a = prompt('Введите a: ');
// var b = prompt('Введите b: ');

// function plus(a, b) {
// 	return a + b;
// }

// function minus(a, b) {
// 	return a - b;
// }

// function div (a, b) {
// 	return a / b;
// }

// function mult (a, b) {
// 	return a * b;
// }

// var arg1 = prompt('Введите arg1: ');
// var arg1 = prompt('Введите arg2: ');
// var operation = prompt('Введите operation: ');
// function mathOperation(arg1, arg2, operation){
// 	switch(operation){
// 		 case 'сложение':
// 			 return arg1 + arg2;
// 			 break;
// 		 case 'вычитание':
// 			 return arg1 - arg2;
// 			 break;
// 		 case 'деление':
// 			 return arg1 / arg2;
// 			 break;
// 		 case 'умножение':
// 			 return arg1 * arg2;
// 			 break;
// 		}
// }