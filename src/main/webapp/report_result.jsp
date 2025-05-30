<%@ page import="java.util.*, com.model.Patient" %>
<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <title>Report Results</title>
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
            padding: 20px;
            text-align: center;
            color: #5e189a;
            font-size: 28px;
            font-weight: bold;
            box-shadow: 0 4px 8px rgba(0, 0, 0, 0.05);
        }

        table {
            width: 90%;
            margin: 40px auto;
            border-collapse: collapse;
            background-color: #fff;
            box-shadow: 0 6px 16px rgba(0, 0, 0, 0.06);
            border-radius: 12px;
            overflow: hidden;
        }

        th, td {
            padding: 14px 20px;
            text-align: left;
            border-bottom: 1px solid #eee;
        }

        th {
            background-color: #b089f4;
            color: white;
            font-weight: 600;
        }

        tr:hover {
            background-color: #f3eaff;
        }

        .back-link {
            text-align: center;
            margin: 30px;
        }

        .back-link a {
            text-decoration: none;
            color: #9b30ff;
            font-weight: 500;
        }

        .back-link a:hover {
            text-decoration: underline;
        }

        td[colspan="7"] {
            text-align: center;
            font-style: italic;
            color: #666;
            padding: 30px;
        }

        @media (max-width: 768px) {
            table {
                width: 100%;
                font-size: 14px;
            }

            th, td {
                padding: 10px 12px;
            }
        }
    </style>
</head>
<body>

    <div class="header">
        Report Results
    </div>

    <table>
        <tr>
            <th>ID</th>
            <th>Name</th>
            <th>Age</th>
            <th>Gender</th>
            <th>Admission Date</th>
            <th>Ailment</th>
            <th>Doctor</th>
        </tr>
        <%
            List<Patient> result = (List<Patient>) request.getAttribute("listPatient");
            if (result != null && !result.isEmpty()) {
                for (Patient p : result) {
        %>
        <tr>
            <td><%= p.getPatientID() %></td>
            <td><%= p.getPatientName() %></td>
            <td><%= p.getAge() %></td>
            <td><%= p.getGender() %></td>
            <td><%= p.getAdmissionDate() %></td>
            <td><%= p.getAilment() %></td>
            <td><%= p.getAssignedDoctor() %></td>
        </tr>
        <%
                }
            } else {
        %>
        <tr>
            <td colspan="7">No data found for the selected criteria.</td>
        </tr>
        <% } %>
    </table>

    <div class="back-link">
        <a href="reports.jsp">&larr; Back to Reports</a>
    </div>

</body>
</html>
