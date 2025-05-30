<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <title>Report Criteria</title>
    <style>
        body {
            font-family: 'Segoe UI', Tahoma, Geneva, Verdana, sans-serif;
            background-color: #f7f2fa;
            margin: 0;
            padding: 0;
            color: #333;
        }

        .top-bar {
            background-color: #d5b4f3;
            padding: 20px;
            text-align: center;
            font-size: 24px;
            font-weight: bold;
            color: #5e189a;
            box-shadow: 0 4px 8px rgba(0, 0, 0, 0.05);
        }

        .form-wrapper {
            background-color: #fff;
            max-width: 500px;
            margin: 40px auto;
            padding: 30px 40px;
            box-shadow: 0 6px 16px rgba(0, 0, 0, 0.06);
            border-radius: 12px;
        }

        .form-wrapper h2 {
            text-align: center;
            color: #6a1b9a;
            margin-bottom: 25px;
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
        input[type="date"] {
            width: 100%;
            padding: 10px;
            border: 1px solid #d1c4e9;
            border-radius: 6px;
            font-size: 14px;
            background-color: #fefcff;
        }

        .submit-btn {
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

        .submit-btn:hover {
            background-color: #801acb;
        }

        .back-link {
            display: block;
            margin-top: 20px;
            text-align: center;
            color: #9b30ff;
            text-decoration: none;
            font-weight: 500;
        }

        .back-link:hover {
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

    <div class="top-bar">
        Hospital Management System
    </div>

    <div class="form-wrapper">
        <h2>Report Criteria</h2>
        <%
            String reportType = (String) request.getAttribute("reportType");
        %>
        <form action="ReportServlet" method="post">
            <input type="hidden" name="reportType" value="<%= reportType %>">

            <% if ("dateRange".equals(reportType)) { %>
                <div class="form-group">
                    <label for="startDate">Start Date:</label>
                    <input type="date" id="startDate" name="startDate" required>
                </div>
                <div class="form-group">
                    <label for="endDate">End Date:</label>
                    <input type="date" id="endDate" name="endDate" required>
                </div>
            <% } else if ("ailment".equals(reportType)) { %>
                <div class="form-group">
                    <label for="ailment">Ailment:</label>
                    <input type="text" id="ailment" name="ailment" placeholder="Enter ailment (e.g., Fever)" required>
                </div>
            <% } else if ("doctor".equals(reportType)) { %>
                <div class="form-group">
                    <label for="doctor">Doctor Name:</label>
                    <input type="text" id="doctor" name="doctor" placeholder="Enter doctor's name" required>
                </div>
            <% } %>

            <button type="submit" class="submit-btn">Generate Report</button>
        </form>

        <a class="back-link" href="reports.jsp">← Back to Reports</a>
    </div>

</body>
</html>
