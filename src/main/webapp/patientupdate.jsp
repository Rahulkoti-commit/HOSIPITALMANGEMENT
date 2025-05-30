<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <title>Update Patient</title>
    <style>
        body {
            font-family: 'Segoe UI', Tahoma, Geneva, Verdana, sans-serif;
            background-color: #faf7fd;
            color: #333;
            margin: 0;
            padding: 0;
        }

        .header {
            background-color: #efd8fc;
            text-align: center;
            padding: 30px 20px;
            color: #5e189a;
            box-shadow: 0 4px 6px rgba(0, 0, 0, 0.04);
        }

        .form-wrapper {
            background-color: #fff;
            max-width: 600px;
            margin: 40px auto;
            padding: 30px 40px;
            box-shadow: 0 6px 18px rgba(0, 0, 0, 0.06);
            border-radius: 12px;
        }

        .form-wrapper h2 {
            margin-bottom: 25px;
            color: #6a1b9a;
            text-align: center;
        }

        .form-group {
            margin-bottom: 18px;
        }

        label {
            display: block;
            margin-bottom: 6px;
            font-weight: 500;
        }

        input[type="text"],
        input[type="number"],
        input[type="date"],
        select {
            width: 100%;
            padding: 10px 12px;
            border: 1px solid #d1c4e9;
            border-radius: 6px;
            font-size: 14px;
            background-color: #fefcff;
        }

        input[type="submit"] {
            width: 100%;
            padding: 12px;
            background-color: #9b30ff;
            color: #fff;
            font-size: 16px;
            border: none;
            border-radius: 8px;
            cursor: pointer;
            transition: background-color 0.3s ease;
        }

        input[type="submit"]:hover {
            background-color: #801acb;
        }

        .back-link {
            text-align: center;
            margin-top: 20px;
        }

        .back-link a {
            color: #9b30ff;
            text-decoration: none;
            font-weight: 500;
        }

        .back-link a:hover {
            text-decoration: underline;
        }

        @media (max-width: 600px) {
            .form-wrapper {
                margin: 20px;
                padding: 25px;
            }
        }
    </style>
</head>
<body>

    <div class="header">
        <h1>Update Patient Information</h1>
        <p>Modify details of an existing patient</p>
    </div>

    <div class="form-wrapper">
        <h2>Edit Patient Details</h2>
        <form action="UpdatePatientServlet" method="post">
            <div class="form-group">
                <label for="id">Patient ID</label>
                <input type="number" id="id" name="id" required>
            </div>

            <div class="form-group">
                <label for="name">Patient Name</label>
                <input type="text" id="name" name="name" required>
            </div>

            <div class="form-group">
                <label for="age">Age</label>
                <input type="number" id="age" name="age" required>
            </div>

            <div class="form-group">
                <label for="gender">Gender</label>
                <select name="gender" id="gender" required>
                    <option value="">-- Select --</option>
                    <option>Male</option>
                    <option>Female</option>
                    <option>Other</option>
                </select>
            </div>

            <div class="form-group">
                <label for="admissionDate">Admission Date</label>
                <input type="date" id="admissionDate" name="admissionDate" required>
            </div>

            <div class="form-group">
                <label for="ailment">Ailment</label>
                <input type="text" id="ailment" name="ailment" required>
            </div>

            <div class="form-group">
                <label for="doctor">Assigned Doctor</label>
                <input type="text" id="doctor" name="doctor" required>
            </div>

            <input type="submit" class="submit-btn" value="Update Patient">
        </form>

        <div class="back-link">
            <a href="index.jsp">&larr; Back to Home</a>
        </div>
    </div>

</body>
</html>
