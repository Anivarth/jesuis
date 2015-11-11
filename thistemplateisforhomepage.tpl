<!DOCTYPE HTML>
<html>
	<head>
		<title>Je suis(I am) {{name}}</title>
		<meta charset="utf-8" />
		<meta name="viewport" content="width=device-width, initial-scale=1" />
		<!--[if lte IE 8]><script src="assets/js/html5shiv.js"></script><![endif]-->
		<link rel="stylesheet" href="main_main_css" />
		<!--[if lte IE 9]><link rel="stylesheet" href="ie9" /><![endif]-->
		<!--[if lte IE 8]><link rel="stylesheet" href="ie8" /><![endif]-->
		<noscript><link rel="stylesheet" href="noscript.css" /></noscript>
		<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/font-awesome/4.4.0/css/font-awesome.min.css">
	</head>
	<body class="is-loading">

		<!-- Wrapper -->
			<div id="wrapper">

				<!-- Main -->
					<section id="main">
						<header>
							<span class="avatar"><img src="{{photo}}" alt="" /></span>
							<h1>{{name}}</h1>
							<p>{{job}}</p>
						</header>
						<hr />
						<footer>
							<ul class="icons">
								%if facebook and count!=3
									<li><a href="{{facebook}}" class="fa-facebook" target="_blank">Facebook</a></li>
								%end
								%if twitter and count!=3
								<li><a href="{{twitter}}" class="fa-twitter" target="_blank">Twitter</a></li>
								%end
								%if email and count!=3
								<li><a href="mailto:{{email}}" class=" fa-envelope-o" target="_blank">Mail</a></li>
								%end
								%if website and count!=3
								<li><a href="{{website}}" class="fa-globe" target="_blank">My Website</a></li>
								%end
								%if linkedin and count!=3
								<li><a href="{{linkedin}}" class="fa-linkedin" target="_blank">Linked In</a></li>
								%end
								%if instagram and count!=3
								<li><a href="{{instagram}}" class="fa-instagram" target="_blank">Instagram</a></li>
								%end
								%if coun! = 3
									%for i in range(count,3):
										<li><a href="http://jesuis.pythonanywhere.com" class="fa-globe" target="_blank">Je Suis</a></li>
									%end
								%end
							</ul>
						</footer>
					</section>

				<!-- Footer -->
					<footer id="footer">
						<ul class="copyright">
							<li>&copy; Je Suis</li>
							<li><a href="credits">Credits</a></li>
						</ul>
					</footer>

			</div>

		<!-- Scripts -->
			<!--[if lte IE 8]><script src="respond"></script><![endif]-->
			<script>
				if ('addEventListener' in window) {
					window.addEventListener('load', function() { document.body.className = document.body.className.replace(/\bis-loading\b/, ''); });
					document.body.className += (navigator.userAgent.match(/(MSIE|rv:11\.0)/) ? ' is-ie' : '');
				}
			</script>

	</body>
</html>