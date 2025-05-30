<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <title>Delete Patient</title>
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

        .form-container {
            max-width: 500px;
            margin: 40px auto;
            background-color: #fff;
            padding: 30px;
            border-radius: 12px;
            box-shadow: 0 8px 20px rgba(0, 0, 0, 0.05);
        }

        h2 {
            text-align: center;
            color: #6a0dad;
            margin-bottom: 25px;
        }

        .form-group {
            margin-bottom: 20px;
        }

        label {
            display: block;
            margin-bottom: 6px;
            font-weight: 500;
        }

        input[type="number"] {
            width: 100%;
            padding: 12px;
            border: 1px solid #d0c3e2;
            border-radius: 8px;
            font-size: 15px;
            background-color: #fdfdfe;
        }

        input[type="number"]:focus {
            border-color: #b087d6;
            outline: none;
            box-shadow: 0 0 5px rgba(106, 13, 173, 0.2);
        }

        .submit-btn {
            width: 100%;
            padding: 14px;
            background-color: #e573fc;
            color: white;
            font-size: 16px;
            border: none;
            border-radius: 10px;
            cursor: pointer;
            transition: background-color 0.3s ease;
        }

        .submit-btn:hover {
            background-color: #d146eb;
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
            .form-container {
                margin: 20px;
                padding: 20px;
            }
        }
    </style>
</head>
<body>

    <div class="header">
        <h1>Delete Patient Record</h1>
        <p>Remove an existing patient from the system</p>
    </div>

    <div class="form-container">
        <h2>Enter Patient ID</h2>
        <form action="DeletePatientServlet" method="post">
            <div class="form-group">
                <label for="id">Patient ID</label>
                <input type="number" id="id" name="id" placeholder="Enter Patient ID" required>
            </div>
            <input type="submit" class="submit-btn" value="Delete Patient">
        </form>

        <div class="back-link">
            <a href="index.jsp">&larr; Back to Home</a>
        </div>
    </div>

</body>
</html>
