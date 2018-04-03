<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
	
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta charset="utf-8">
<meta name="viewport"
	content="width=device-width, initial-scale=1, shrink-to-fit=no">
<meta name="description" content="">
<meta name="author" content="">
<!--     <link rel="icon" href="../../../../favicon.ico"> -->

<title>SetInterval</title>

<!-- Bootstrap core CSS -->
<link href="/resources/bootstrap/dist/css/bootstrap.min.css"
	rel="stylesheet">

<!-- Custom styles for this template -->
<link href="/resources/bootstrap/cover.css" rel="stylesheet">
</head>

<body class="text-center">

	<div class="cover-container d-flex h-100 p-3 mx-auto flex-column">
		<header class="masthead mb-auto">
		<div class="inner">
			<h3 class="masthead-brand">CrizenSolution</h3>
			<nav class="nav nav-masthead justify-content-center"> <a
				class="nav-link active" href="/">Home</a> </nav>
		</div>
		</header>

		<main role="main" class="inner cover">
		<h1 class="cover-heading">현재시간</h1>
		<h1 class="cover-heading" id="currentTime"></h1>
		</main>

		<footer class="mastfoot mt-auto">
		<div class="inner">
			<p>
				CrizenSolution <a href="http://crizen.com/">Crizen</a>, by Choi
				Young Un.
			</p>
		</div>
		</footer>
	</div>


	<!-- Bootstrap core JavaScript
    ================================================== -->
	<!-- Placed at the end of the document so the pages load faster -->
	<script src="https://code.jquery.com/jquery-3.2.1.slim.min.js"
		integrity="sha384-KJ3o2DKtIkvYIK3UENzmM7KCkRr/rE9/Qpg6aAZGJwFDMVNA/GpGFF93hXpG5KkN"
		crossorigin="anonymous"></script>
	<script>
		window.jQuery
				|| document 
						.write('<script src="/resources/bootstrap/assets/js/vendor/jquery-slim.min.js"><\/script>')
	</script>
	<script src="/resources/bootstrap/assets/js/vendor/popper.min.js"></script>
	<script src="/resources/bootstrap/js/bootstrap.min.js"></script>
	
	<!-- moment -->
	<script src="https://cdnjs.cloudflare.com/ajax/libs/moment.js/2.20.1/moment.min.js" integrity="sha256-ABVkpwb9K9PxubvRrHMkk6wmWcIHUE9eBxNZLXYQ84k=" crossorigin="anonymous"></script>
	<script src="https://cdnjs.cloudflare.com/ajax/libs/moment.js/2.20.1/moment-with-locales.min.js" integrity="sha256-XWrGUqSiENmD8bL+BVeLl7iCfhs+pkPyIqrZQcS2Te8=" crossorigin="anonymous"></script>
	<script src="https://cdnjs.cloudflare.com/ajax/libs/moment.js/2.20.1/locale/ko.js" integrity="sha256-52Xn0wi4kPGcROqCAA5EoontBDks09MLjv7fd5WAj3U=" crossorigin="anonymous"></script>
	

	<!--     JavaScript -->
	<script>
	  var time = setInterval(function(){timer()}, 1000);
	  var date = new Date();

	   function timer() {
	      document.getElementById("currentTime").innerHTML = moment().format('YYYY-MM-DD HH:mm:ss');
	   } 
	   
		// 		현재시간을 가져옴
		var hour = date.getHours();
		// 		경우가 몇개안되기때문에 if와 else if를사용함
		if (hour < 12) {
			alert("좋은아침!");
		} else if (hour < 18) {
			alert("활기찬오후!");
		} else {
			alert("잘자요!");
		}
	</script>
</body>
</html>