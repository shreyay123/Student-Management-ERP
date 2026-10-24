<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>

<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Admin Dashboard</title>

<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/css/bootstrap.min.css" rel="stylesheet">

<style>
    body {
        background-color: #f4f6f9;
        font-family: Arial, sans-serif;
    }

    .navbar-custom {
        background: #4e73df;
    }

    .navbar-custom button {
        color: #fff;
        border-color: #fff;
    }

    .section-card {
        background: #fff;
        padding: 25px;
        border-radius: 12px;
        box-shadow: 0 10px 25px rgba(0,0,0,0.1);
        margin-bottom: 30px;
    }

    .section-title {
        text-align: center;
        font-weight: 600;
        margin-bottom: 20px;
        color: #333;
    }

    table th {
        background-color: #f1f1f1;
    }

    .action-buttons button {
        margin-right: 5px;
    }
</style>

<script>
    function getSelectedStudentId() {
        const radios = document.getElementsByName("studentId");
        for (let r of radios) {
            if (r.checked) return r.value;
        }
        alert("Please select a student first");
        return null;
    }

    function fees() {
        let id = getSelectedStudentId();
        if (id) {
            hiddenStudentId.value = id;
            fn.action = "/fees";
            fn.submit();
        }
    }

    function batchupdate() {
        let id = getSelectedStudentId();
        if (id) {
            hiddenStudentId.value = id;
            fn.action = "/editbatch";
            fn.submit();
        }
    }

    function remove() {
        let id = getSelectedStudentId();
        if (id) {
            hiddenStudentId.value = id;
            fn.action = "/remove";
            fn.submit();
        }
    }
</script>
</head>

<body>

<!-- NAVBAR -->
<nav class="navbar navbar-custom px-4 sticky-top">
    <span class="navbar-brand text-white fw-bold">Student Management</span>
    <div>
        <a href="#enroll" class="btn btn-outline-light btn-sm">Enroll</a>
        <a href="#view" class="btn btn-outline-light btn-sm">View</a>
        <a href="/" class="btn btn-outline-light btn-sm">Logout</a>
    </div>
</nav>

<div class="container mt-4">

<!-- ENROLL SECTION -->
<section id="enroll" class="section-card">
    <h3 class="section-title">Student Enrollment</h3>

    <form action="enroll_student">
        <div class="row g-3">
            <div class="col-md-6">
                <input class="form-control" name="studentFullName" placeholder="Full Name">
            </div>
            <div class="col-md-6">
                <input class="form-control" name="studentEmail" placeholder="Email">
            </div>
            <div class="col-md-4">
                <input class="form-control" name="StudentAge" placeholder="Age">
            </div>
            <div class="col-md-4">
                <input class="form-control" name="studentCollageName" placeholder="College Name">
            </div>
            <div class="col-md-4">
                <input class="form-control" name="feesPaid" placeholder="Fees Paid">
            </div>

            <div class="col-md-6">
                <select class="form-select" name="batchMode">
                    <option selected disabled>Batch Mode</option>
                    <option>Online</option>
                    <option>Offline</option>
                </select>
            </div>

            <div class="col-md-6">
                <select class="form-select" name="batchNumber">
                    <option selected disabled>Batch Number</option>
                    <option>FDJ-160</option>
                    <option>REG-160</option>
                    <option>FDJ-161</option>
                    <option>REG-161</option>
                    <option>FDJ-162</option>
                    <option>REG-162</option>
                </select>
            </div>

            <div class="text-center mt-3">
                <button class="btn btn-primary px-5">Enroll Student</button>
            </div>
        </div>
    </form>
</section>

<!-- VIEW SECTION -->
<section id="view" class="section-card">
    <h3 class="section-title">Student Details</h3>

    <form action="search" class="d-flex justify-content-center mb-3">
        <select class="form-select w-25 me-2" name="batchNumber">
            <option selected disabled>Select Batch</option>
            <option>FDJ-160</option>
            <option>REG-160</option>
            <option>FDJ-161</option>
            <option>REG-161</option>
        </select>
        <button class="btn btn-outline-primary">Search</button>
    </form>

    <p class="text-center text-danger fw-bold">${message}</p>

    <table class="table table-hover table-bordered align-middle text-center">
        <thead>
            <tr>
                <th>ID</th>
                <th>Name</th>
                <th>Email</th>
                <th>Age</th>
                <th>College</th>
                <th>Course</th>
                <th>Batch</th>
                <th>Mode</th>
                <th>Fees</th>
                <th>Select</th>
            </tr>
        </thead>
        <tbody>
            <c:forEach items="${data}" var="s">
                <tr>
                    <td>${s.studentId}</td>
                    <td>${s.studentFullName}</td>
                    <td>${s.studentEmail}</td>
                    <td>${s.studentAge}</td>
                    <td>${s.studentCollageName}</td>
                    <td>${s.studentCourse}</td>
                    <td>${s.batchNumber}</td>
                    <td>${s.batchMode}</td>
                    <td>${s.feesPaid}</td>
                    <td><input type="radio" name="studentId" value="${s.studentId}"></td>
                </tr>
            </c:forEach>
        </tbody>
    </table>

    <form name="fn" method="post" class="text-center action-buttons">
        <input type="hidden" id="hiddenStudentId" name="studentId">
        <button type="button" class="btn btn-outline-primary" onclick="fees()">Fees</button>
        <button type="button" class="btn btn-outline-success" onclick="batchupdate()">Shift Batch</button>
        <button type="button" class="btn btn-outline-danger" onclick="remove()">Remove</button>
    </form>
</section>

</div>

</body>
</html>
