<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/functions" prefix="fn"%>
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


<title>Students Directory</title>
</head>

<body>

	<div>

		<h1>
			<div class="shadow p-1 mb-3 bg-light text-info border border-dark"
				style="text-align: center">Students Directory</div>


		</h1>

		<!-- Add a search form -->
		<div class="container ">
			<form action="/studentmanagement/student/search" class="form-inline">

				<!-- Add a button -->
				<a href="/studentmanagement/student/showFormForAdd"
					class="shadow p-1 mb-3 btn btn-outline-info btn-sm "> Add
					Student </a> 
					<hr>
					<a href="/studentmanagement/logout"
					class="shadow p-1 mb-3 btn btn-outline-dark btn-sm"
					style="position: absolute; bottom:100;right:0"> Logout </a>


			</form>
			<c:choose>
				<c:when test="${fn:length(Students) > 0}">



					<table class="table table-bordered table-striped">
						<thead class="thead-dark">
							<tr>
								<th>ID-NO</th>
								<th>FirstName</th>
								<th>LastName</th>
								<th>Course</th>
								<th>Country</th>
								<th>Action</th>
							</tr>
						</thead>
						<tbody>
							<c:forEach items="${Students}" var="tempStudent">
								<tr>
									<td><c:out value="${tempStudent.id}" /></td>
									<td><c:out value="${tempStudent.firstName}" /></td>
									<td><c:out value="${tempStudent.lastName}" /></td>
									<td><c:out value="${tempStudent.course}" /></td>
									<td><c:out value="${tempStudent.country}" /></td>
									<td>
										<!-- Add "update" button/link --> <a
										href="/studentmanagement/student/showFormForUpdate?studentId=${tempStudent.id}"
										class="btn btn-outline-secondary btn-sm col-4"> Update </a> <!-- Add "delete" button/link -->
										<a
										href="/studentmanagement/student/delete?studentId=${tempStudent.id}"
										class="btn btn-outline-danger btn-sm col-4"
										onclick="if (!(confirm('Are you sure you want to delete this Student details?'))) return false">
											Delete </a>

									</td>

								</tr>
							</c:forEach>

						</tbody>
					</table>
				</c:when>
				<c:otherwise>
					<div class="col-lg-12" style="text-align: center">
						<span
							class="shadow d-block p-1 bg-info text-white bg-gray border border-light ">No
							STUDENTS yet. Click on ADD Student to add New Student Details</span>

					</div>
				</c:otherwise>
			</c:choose>
		</div>
	</div>

</body>
</html>