<%@taglib uri="http://www.springframework.org/tags/form" prefix="form"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Adding Todo</title>
<link href="webjars/bootstrap/3.3.6/css/bootstrap.min.css"
	rel="stylesheet">
</head>
<body>
	<div class="container" style="margin-top: 50px;margin-left:350px">
		<form:form method="post" modelAttribute="todo" autocomplete="off">
			<div class="row">
				<div class="col-md-12">
					<form:label path="desc" class="col-md-2">Description: </form:label>
					<div class="form-group col-md-3	">
						<form:input class="form-control" required="required" type="text"
							path="desc" />
					</div>
					<div class="col-md-3	">
						<form:errors path="desc" cssClass="text-warning" />
					</div>
				</div>
			</div>
			<div class="row">
				<div class="col-md-12">
					<form:label path="targetDate" class="col-md-2">Target Date: </form:label>
					<div class="form-group col-md-3	">
						<form:input class="form-control" required="required" type="text"
							path="targetDate" />
					</div>
					<div class="col-md-3	">
						<form:errors path="targetDate" cssClass="text-warning" />
					</div>
				</div>
			</div>
			<div class="row">
				<div class="col-md-12">
					<form:label path="isDone" class="col-md-2">Is It Done: </form:label>
					<div class="form-group col-md-3	">
						<form:select class="form-control" required="required" type="text"
							path="isDone" >
							<form:option value="True">True</form:option>
							<form:option value="False">False</form:option>
							</form:select>
					</div>
					<div class="col-md-3	">
						<form:errors path="isDone" cssClass="text-warning" />
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
		</form:form>
	</div>
	<script src="webjars/jquery/1.9.1/jquery.min.js"></script>
	<script src="webjars/bootstrap/3.3.6/js/bootstrap.min.js"></script>
	<script
		src="webjars/bootstrap-datepicker/1.0.1/js/bootstrap-datepicker.js"></script>

	<script>
		$('#targetDate').datepicker({
			format : 'dd/mm/yyyy'
		});
	</script>
</body>
</html>