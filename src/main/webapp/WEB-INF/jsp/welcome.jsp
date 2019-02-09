<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<link href="webjars/bootstrap/3.3.6/css/bootstrap.min.css"
	rel="stylesheet">
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	<div class="container card-body"
		style="margin-top: 50px; margin-left: 350px">
		<div class="row">
			<div class="col-md-12">
				<div class="col-md-1"></div>
				<div class="col-md-6">
					<h2>Welcome ${namee}!!!</h2>
				</div>
			</div>
		</div>
		<div class="row">
			<div class="col-md-12">
				<div class="col-md-1"></div>
				<div class="col-md-6">
					<h3>
						<a href="/list-todos">Click here</a> to manage your todos
					</h3>
				</div>
			</div>
		</div>

	</div>
</body>
</html>