<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<link href="webjars/bootstrap/3.3.6/css/bootstrap.min.css"
	rel="stylesheet">
</head>
<body>
	<div class="container" style="margin-top:10px">
		<form method="post">
			<div class="row">
				<div class="col-md-12">
					<label class="col-md-1">Description: </label>
					<div class="form-group col-md-3	">
						<input class="form-control" required="required" type="text" name="desc">
					</div>
				</div>
			</div>
			<div class="row">
			<div class="col-md-12">
			<div class="col-md-1">
				<button type="submit" class="btn btn-success">Add</button>			
			</div>
			</div>
			</div>
		</form>
	</div>
	<script src="webjars/jquery/1.9.1/jquery.min.js"></script>
	<script src="webjars/bootstrap/3.3.6/js/bootstrap.min.js"></script>
</body>
</html>