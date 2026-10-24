<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Shift Batch</title>

<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/css/bootstrap.min.css" rel="stylesheet">

<style>
    body {
        background: linear-gradient(to right, #4e73df, #1cc88a);
        font-family: Arial, sans-serif;
    }

    .shift-card {
        background: #fff;
        padding: 30px;
        border-radius: 12px;
        box-shadow: 0 15px 35px rgba(0,0,0,0.2);
    }

    .shift-title {
        font-weight: 600;
        text-align: center;
        margin-bottom: 25px;
        color: #333;
    }

    select {
        height: 45px;
    }

    .btn-shift {
        background-color: #4e73df;
        border: none;
        height: 45px;
        font-weight: 500;
    }

    .btn-shift:hover {
        background-color: #2e59d9;
    }
</style>

</head>

<body>

<section class="vh-100 d-flex align-items-center justify-content-center">
    <div class="container">
        <div class="row justify-content-center">
            <div class="col-lg-4 col-md-6">

                <div class="shift-card">
                    <h3 class="shift-title">Shift Student to New Batch</h3>

                    <form action="editbatch" method="get">

                        <!-- Student ID -->
                        <input type="hidden" name="studentId" value="${studentId}" />

                        <div class="mb-4">
                            <label class="form-label fw-semibold">Select New Batch</label>
                            <select name="batchNumber" class="form-select" required>
                                <option value="" disabled selected>Choose Batch</option>
                                <option>FDJ-160</option>
                                <option>REG-160</option>
                                <option>FDJ-161</option>
                                <option>REG-161</option>
                                <option>FDJ-162</option>
                                <option>REG-162</option>
                                <option>FDJ-163</option>
                                <option>REG-163</option>
                                <option>FDJ-164</option>
                                <option>REG-164</option>
                                <option>FDJ-165</option>
                                <option>REG-165</option>
                            </select>
                        </div>

                        <div class="d-grid">
                            <button type="submit" class="btn btn-shift text-white">
                                Shift Batch
                            </button>
                        </div>

                    </form>
                </div>

            </div>
        </div>
    </div>
</section>

</body>
</html>
