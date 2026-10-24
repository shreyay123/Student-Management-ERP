<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
</head>
<body>
<div class="d-flex justify-content-center align-center">
		<div class="w-50 align-middle border border-info border-3 mt-2"
			style="hight: 500px">
			<h6 class="p-3 primary-text">
				<u>Batch details:</u>
			</h6>
			<div class="border border-secondary m-3 p-2">
				<table class="table table-hover border border-secondary">
					<tbody>
						<tr class="table-primaer fs-6">
							<th>StudentId</th>
							<td>${st.studentid}</td>
						</tr>
						<tr class="table-primaer fs-6">
							<th>Student Name</th>
							<td>${st.studentname}</td>
						</tr>
						<tr class="table-primaer fs-6">
							<th>Course name</th>
							<td>${st.studentCourse}</td>
						</tr>
						<tr class="table-primaer fs-6">
							<th>Batch no</th>
							<td>${st.batchNumber}</td>
						</tr>
						<tr class="table-primaer fs-6">
							<th>Fees paid</th>
							<td>${st.feespaid}</td>
						</tr>
					</tbody>
				</table>

				<form action="batchupdate">
					<input type="text" name="studentid" value="${st.studentID} hidden="true">
					<div class="bg-dark p-2 d-flex justify-content-between">

						<label for="amount" class="text-info">
							<b>Enter Enter batch Number</b>
							</label> 
							<input type="text" name="batchnumber" value="${st.batchNumber }">
					</div>
					<div class="d-flex justify-content-center">
						<button class="btn btn-success btn-sm">Batch update</button>
					</div>
				</form>
			</div>
		</div>
	</div>
</body>
</html>