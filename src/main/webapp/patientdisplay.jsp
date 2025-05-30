<%@ page import="java.util.*, com.model.Patient" %>
<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <title>All Patients</title>
    <style>
        body {
            margin: 0;
            font-family: 'Segoe UI', Tahoma, Geneva, Verdana, sans-serif;
            background-color: #f9f8fb;
            color: #333;
        }

        .header {
            background-color: #f4e7ff;
            padding: 30px 20px;
            text-align: center;
            color: #5e189a;
            box-shadow: 0 4px 6px rgba(0, 0, 0, 0.05);
        }

        table {
            width: 90%;
            margin: 40px auto;
            border-collapse: collapse;
            background-color: #fff;
            box-shadow: 0 8px 15px rgba(0, 0, 0, 0.05);
            border-radius: 10px;
            overflow: hidden;
        }

        th, td {
            padding: 15px;
            text-align: center;
        }

        th {
            background-color: #ead4fc;
            color: #4b007d;
            font-weight: 600;
            text-transform: uppercase;
        }

        tr:nth-child(even) {
            background-color: #f8f5fc;
        }

        tr:hover {
            background-color: #f0e6fa;
        }

        .back-link {
            margin: 20px;
            text-align: center;
        }

        .back-link a {
            color: #9b30ff;
            text-decoration: none;
            font-weight: 500;
        }

        .back-link a:hover {
            text-decoration: underline;
        }

        @media (max-width: 768px) {
            table {
                font-size: 13px;
            }

            th, td {
                padding: 10px;
            }
        }
    </style>
</head>
<body>
    <div class="header">
        <h1>All Patients</h1>
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
            List<Patient> patients = (List<Patient>) request.getAttribute("listPatient");
            if (patients != null) {
                for (Patient p : patients) {
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
            }
        %>
    </table>

    <div class="back-link">
        <a href="index.jsp">&larr; Back to Home</a>
    </div>
</body>
</html>
