<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <title>Generate Reports</title>
    <style>
        body {
            font-family: 'Segoe UI', Tahoma, Geneva, Verdana, sans-serif;
            background-color: #f7f2fa;
            margin: 0;
            padding: 0;
            color: #333;
        }

        .header {
            background-color: #d5b4f3;
            padding: 30px;
            text-align: center;
            color: #5e189a;
            box-shadow: 0 4px 8px rgba(0, 0, 0, 0.05);
        }

        .header h1 {
            margin: 0;
            font-size: 32px;
        }

        .header p {
            font-size: 18px;
            margin-top: 8px;
            color: #6a1b9a;
        }

        .container {
            padding: 40px 20px;
            text-align: center;
        }

        .container h2 {
            margin-bottom: 30px;
            color: #5e189a;
        }

        .report-grid {
            display: flex;
            flex-wrap: wrap;
            justify-content: center;
            gap: 30px;
        }

        .report-card {
            background-color: #fff;
            border: 2px solid #e0ccff;
            border-radius: 12px;
            box-shadow: 0 6px 16px rgba(0, 0, 0, 0.06);
            width: 320px;
            padding: 25px;
            text-align: left;
            transition: transform 0.2s ease, box-shadow 0.2s ease;
        }

        .report-card:hover {
            transform: translateY(-6px);
            box-shadow: 0 12px 24px rgba(0, 0, 0, 0.1);
        }

        .report-card h3 {
            color: #7b1fa2;
            margin-bottom: 12px;
        }

        .report-card p {
            font-size: 15px;
            color: #555;
            margin-bottom: 18px;
        }

        .report-link {
            display: inline-block;
            background-color: #9b30ff;
            color: white;
            padding: 10px 16px;
            border-radius: 8px;
            text-decoration: none;
            font-weight: bold;
        }

        .report-link:hover {
            background-color: #7b1fa2;
        }

        .back-link {
            display: inline-block;
            margin-top: 40px;
            text-decoration: none;
            color: #9b30ff;
            font-weight: 500;
        }

        .back-link:hover {
            text-decoration: underline;
        }

        @media (max-width: 768px) {
            .report-card {
                width: 90%;
            }
        }
    </style>
</head>
<body>

    <div class="header">
        <h1>Hospital Management System</h1>
        <p>Report Generation Dashboard</p>
    </div>

    <div class="container">
        <h2>Select a Report to Generate</h2>

        <div class="report-grid">
            <div class="report-card">
                <h3>Patients Admitted in Date Range</h3>
                <p>Get a report of all patients admitted between specific dates for statistical and operational review.</p>
                <a href="ReportCriteriaServlet?reportType=dateRange" class="report-link">Generate Report</a>
            </div>

            <div class="report-card">
                <h3>Patients with Specific Ailment</h3>
                <p>Filter and view patients diagnosed with a particular ailment or health condition.</p>
                <a href="ReportCriteriaServlet?reportType=ailment" class="report-link">Generate Report</a>
            </div>

            <div class="report-card">
                <h3>Patients Assigned to Specific Doctor</h3>
                <p>Generate a summary of patients under the care of a chosen doctor for review or audits.</p>
                <a href="ReportCriteriaServlet?reportType=doctor" class="report-link">Generate Report</a>
            </div>
        </div>

        <a href="index.jsp" class="back-link">&larr; Back to Home</a>
    </div>

</body>
</html>
