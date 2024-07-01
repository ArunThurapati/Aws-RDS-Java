<%
    if ((session.getAttribute("userName") == null) || (session.getAttribute("userName") == "")) {
%>
You are not logged in<br/>
<a href="index.jsp">Please Login</a>
<% } else { %>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>TCS Company</title>
    <style>
        body {
            margin: 0;
            height: 100vh;
            background: linear-gradient(to bottom, black, gray);
            font-family: 'Arial', sans-serif;
            color: white;
            display: flex;
            justify-content: center;
            align-items: center;
            text-align: center;
            position: relative;
        }

        .header {
            width: 100%;
            position: absolute;
            top: 0;
            display: flex;
            justify-content: flex-end; /* Align content to the right */
            padding: 10px 20px;
            box-sizing: border-box;
        }

        .header .right a {
            color: #00f;
            text-decoration: none;
            font-weight: bold;
        }

        .content {
            display: flex;
            flex-direction: column;
            justify-content: center;
            align-items: center;
        }

        .logo {
            margin-bottom: 20px;
        }

        .ratan-tata {
            position: absolute;
            right: 20px;
            top: 50%;
            transform: translateY(-50%);
            width: 200px; /* Adjust width as needed */
            height: auto; /* Maintain aspect ratio */
            border-radius: 50%; /* Optional: makes the image circular */
        }

        h1 {
            font-size: 3em;
            font-family: 'Georgia', serif;
            font-weight: bold;
            /* Gradient Text */
            background: linear-gradient(to right, #F8F9F9);
            -webkit-background-clip: text;
            -webkit-text-fill-color: transparent;
            /* Text Shadow */
            text-shadow: 2px 2px 4px rgba(0, 0, 0, 0.5);
            /* New style for text color */
            color: white; /* Change text color to white */
        }
    </style>
</head>
<body>
    <div class="header">
        <div class="right"><a href='logout.jsp'>Log out</a></div>
    </div>
    <div class="content">
        <img src="https://mytcsbucket2003.s3.ap-south-1.amazonaws.com/tcs+logo.png" alt="TCS Logo" class="logo" width="600" height="300">
        <h1><%= "Arun welcomes you to TCS Company" %></h1>
    </div>
    <img src="https://mytcsbucket2003.s3.ap-south-1.amazonaws.com/tata4.png" height="600" class="ratan-tata">
</body>
</html>
<%
    }
%>
