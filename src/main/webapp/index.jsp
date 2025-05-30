<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <title>Hospital Management System</title>
    <style>
        body {
            margin: 0;
            font-family: 'Segoe UI', Tahoma, Geneva, Verdana, sans-serif;
            background-color: #f8f8f8;
            color: #333;
        }

        .container {
            max-width: 800px;
            margin: 60px auto;
            padding: 40px;
            background-color: #ffffff;
            border-radius: 12px;
            box-shadow: 0 4px 16px rgba(0, 0, 0, 0.1);
            text-align: center;
        }

        h2 {
            color: #6a0dad;
            margin-bottom: 30px;
        }

        .nav-link {
            display: inline-block;
            margin: 12px 15px;
            padding: 12px 20px;
            background-color: #eae0f5;
            color: #6a0dad;
            text-decoration: none;
            border-radius: 8px;
            font-size: 16px;
            font-weight: 500;
            transition: all 0.3s ease;
        }

        .nav-link:hover {
            background-color: #d1b3f3;
            color: #fff;
        }

        @media (max-width: 600px) {
            .nav-link {
                display: block;
                margin: 10px auto;
                width: 80%;
            }
        }
    </style>
</head>
<body>

    <div class="container">
        <h2>🏥 Hospital Management System</h2>
        <a href="patientadd.jsp" class="nav-link">➕ Add Patient</a>
        <a href="patientupdate.jsp" class="nav-link">✏️ Update Patient</a>
        <a href="patientdelete.jsp" class="nav-link">🗑️ Delete Patient</a>
        <a href="DisplayPatientsServlet" class="nav-link">📋 Display Patient</a>
        <a href="reports.jsp" class="nav-link">📊 Reports</a>
    </div>

</body>
</html>
