<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <title>Add New Patient</title>
    <style>
        body {
            margin: 0;
            font-family: 'Segoe UI', Tahoma, Geneva, Verdana, sans-serif;
            background-color: #f9f8fb;
            color: #333;
        }

        .header {
            background-color: #eee1f5;
            padding: 30px 20px;
            text-align: center;
            color: #5a189a;
            box-shadow: 0 4px 6px rgba(0, 0, 0, 0.05);
        }

        .form-wrapper {
            max-width: 600px;
            margin: 40px auto;
            background-color: #fff;
            padding: 30px;
            border-radius: 12px;
            box-shadow: 0 8px 20px rgba(0, 0, 0, 0.05);
        }

        h2 {
            text-align: center;
            color: #6a0dad;
            margin-bottom: 30px;
        }

        .form-group {
            margin-bottom: 20px;
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
            padding: 12px;
            border: 1px solid #d0c3e2;
            border-radius: 8px;
            font-size: 15px;
            background-color: #fdfdfe;
        }

        input[type="text"]:focus,
        input[type="number"]:focus,
        input[type="date"]:focus,
        select:focus {
            border-color: #b087d6;
            outline: none;
            box-shadow: 0 0 5px rgba(106, 13, 173, 0.2);
        }

        .submit-btn {
            width: 100%;
            padding: 14px;
            background-color: #c084fc;
            color: white;
            font-size: 16px;
            border: none;
            border-radius: 10px;
            cursor: pointer;
            transition: background-color 0.3s ease;
        }

        .submit-btn:hover {
            background-color: #a855f7;
        }

        .back-link {
            margin-top: 20px;
            text-align: center;
        }

        .back-link a {
            color: #8a2be2;
            text-decoration: none;
            font-weight: 500;
        }

        .back-link a:hover {
            text-decoration: underline;
        }

        @media (max-width: 600px) {
            .form-wrapper {
                margin: 20px;
                padding: 20px;
            }
        }
    </style>
</head>
<body>

    <div class="header">
        <h1>Add New Patient</h1>
        <p>Fill the form below to register a new patient</p>
    </div>

    <div class="form-wrapper">
        <h2>Patient Registration</h2>
        <form action="AddPatientServlet" method="post">
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
                <select id="gender" name="gender" required>
                    <option value="">-- Select --</option>
                    <option value="Male">Male</option>
                    <option value="Female">Female</option>
                    <option value="Other">Other</option>
                </select>
            </div>

            <div class="form-group">
                <label for="admissionDate">Admission Date</label>
                <input type="date" id="admissionDate" name="admissionDate" required>
            </div>

            <div class="form-group">
                <label for="ailment">Ailment/Condition</label>
                <input type="text" id="ailment" name="ailment" required>
            </div>

            <div class="form-group">
                <label for="doctor">Assigned Doctor</label>
                <input type="text" id="doctor" name="doctor" required>
            </div>

            <input type="submit" class="submit-btn" value="Add Patient">
        </form>

        <div class="back-link">
            <a href="index.jsp">&larr; Back to Home</a>
        </div>
    </div>

</body>
</html>
