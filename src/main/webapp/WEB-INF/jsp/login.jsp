<html>
<head>
<link href="webjars/bootstrap/3.3.6/css/bootstrap.min.css"
	rel="stylesheet">
<style>
.topSpace {
	margin-top: 10px
}
</style>
</head>
<body>
	<div class="container" style="margin-top: 50px;margin-left:350px">
		<div class="row">
			<div class="col-md-12">
				<div class="col-md-1"></div>
				<div class="col-md-6">
					<h3>Welcome To Login Page</h3>
				</div>
			</div>
		</div>
		<form method="post" autocomplete="off">
			<div class="row">
				<div class="col-md-12">
					<label class="col-md-2">Name: </label>
					<div class="form-group col-md-3">
						<input type="text" class="form-control" name="name">
					</div>
				</div>
			</div>
			<div class="row">
				<div class="col-md-12">
					<label class="col-md-2">Password: </label>
					<div class="form-group col-md-3">
						<input class="form-control" type="password" name="password">
					</div>
				</div>
			</div>
			<div class="row">
				<div class="col-md-12">
					<div class="col-md-1">
						<button type="submit" class="btn btn-success">Submit</button>
					</div>
					<div class="col-md-6">
						<font color="red">${rMessage}</font>
					</div>
				</div>
			</div>
		</form>
	</div>
</body>
</html>