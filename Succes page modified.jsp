<!-- Example: combined_html_jsp.jsp -->

<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Combined HTML and JSP Example</title>
    <style>
        body {
            font-family: Arial, sans-serif;
            background-color: #f0f0f0;
            padding: 20px;
            text-align: center;
        }
        .container {
            background-color: #ffffff;
            padding: 20px;
            border-radius: 5px;
            box-shadow: 0 0 10px rgba(0,0,0,0.1);
            max-width: 600px;
            margin: 0 auto;
        }
    </style>
</head>
<body>
    <div class="container">
        <h1>Welcome to My Website</h1>
        
        <%-- Dynamic content example --%>
        <% String userName = (String) session.getAttribute("userName"); %>
        <% if (userName != null && !userName.isEmpty()) { %>
            <p>Welcome <%= userName %></p>
            <a href="logout.jsp">Logout</a>
        <% } else { %>
            <p>You are not logged in</p>
            <a href="login.jsp">Login</a>
        <% } %>
        
        <hr>
        <p>Today's date is: <%= new java.util.Date() %></p>
    </div>
</body>
</html>
