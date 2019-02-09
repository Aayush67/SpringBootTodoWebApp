<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<html>
<head>
<meta charset="UTF-8">
<title>Todo's for ${namee}</title>
<link href="webjars/bootstrap/3.3.6/css/bootstrap.min.css"
    rel="stylesheet">
</head>
<body>
<div class="container">
	<h1>Your Todos</h1>
	<table class="table table-bordered">
		<caption>Your Todos are</caption>
		<thead>
			<tr>
				<th>Description</th>
				<th>Target Date</th>
				<th>Is It Done?</th>
				<th>Delete</th>
			</tr>
		</thead>
		<tbody>
			<c:forEach items="${todos}" var="todo">
				<tr>
					<td>${todo.desc}</td>
					<td>${todo.targetDate}</td>
					<td>${todo.isDone}</td>
					<td><a href="/delete-todo?id=${todo.id}" type="button" class="btn btn-warning">Delete</a></td>
				</tr>

			</c:forEach>

		</tbody>
	</table>
		<div>	<a class="button" href="/add-todo">Add a TODO</a>	</div>
	
</div>
		<script src="webjars/jquery/1.9.1/jquery.min.js"></script>
    <script src="webjars/bootstrap/3.3.6/js/bootstrap.min.js"></script>
</body>
</html>