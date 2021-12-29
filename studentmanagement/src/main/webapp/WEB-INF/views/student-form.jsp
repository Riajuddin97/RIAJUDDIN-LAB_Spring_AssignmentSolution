<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>

<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html>
<html>

<head>
<!-- Required meta tags -->
<meta charset="utf-8">
<meta name="viewport"
	content="width=device-width, initial-scale=1, shrink-to-fit=no">

<!-- Bootstrap CSS -->
<link rel="stylesheet"
	href="https://stackpath.bootstrapcdn.com/bootstrap/4.2.1/css/bootstrap.min.css"
	integrity="sha384-GJzZqFGwb1QTTN6wy59ffF1BuGJpLSa9DkKMp0DgiMDm4iYMj70gZWKYbI706tWS"
	crossorigin="anonymous">

<title>Save Student</title>
</head>
<body >

	<div>

		<h1>
			<div class="shadow p-1 mb-3 bg-light text-info border border-dark"
			style="text-align: center">Student Directory
			</div>
			</h1>
		
		<div class="container">
			<a href="/studentmanagement/student/list"
				class="p-1 mb-2 btn btn btn-outline-secondary col-2">Back to
				Students List</a>
			<hr>

			<p class="shadow col-4 p-2  text-light bg-info border border-light "
				style="text-align: center">Enter the Student Details</p>

			<form action="/studentmanagement/student/save" method="POST">

				<!-- Add hidden form field to handle update -->
				<input type="hidden" name="id" value="${Student.id}" />

				<div class="form-inline">
					<input type="text" name="firstName" value="${Student.firstName}"
						class="form-control mb-4 col-4" placeholder="FirstName">



				</div>

				<div class="form-inline">

					<input type="text" name="lastName" value="${Student.lastName}"
						class="form-control mb-4 col-4" placeholder="LastName">



				</div>

				<div class="form-inline">

					<input type="text" name="course" value="${Student.course}"
						class="form-control mb-4 col-4" placeholder="Course">



				</div>
				<div class="form-inline">

					<input type="text" name="country" value="${Student.country}"
						class="form-control mb-4 col-4" placeholder="Country">



				</div>

				<button type="submit"
					class="p-1 mb-2 btn btn btn-outline-success col-2">Save</button>

			</form>

			<hr>
		</div>

	</div>
</body>
</html>