<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1" isErrorPage="true"%>
<!DOCTYPE html>
<html>

<head>
    <meta charset="UTF-8">
    <title>redfox | 404</title>
    <script type="text/javascript"></script>
    <style>
        * {
            padding: 0%;
            margin: 0%;
        }
        
        body {
            width: 100%;
        }
        
        .main {
            display: flex;
            justify-content: center;
        }
        
        .error-container {
            margin-top: 100px;
            border-radius: 40px;
            padding: 30px;
            text-align: center;
        }
        
        .error-header {
            padding: 30px;
        }
        
        h1 {
            font-size: 200px;
            font-family: roboto, arial, helvetica;
            clip-path: clip;
            font-weight: bolder;
            -webkit-text-fill-color: transparent;
            -webkit-background-clip: text;
            background-clip: text;
            background-size: 50%;
            text-shadow: 1px 10px 3px rgba(0, 0, 0, 0.2);
            background-image: url('https://images.pexels.com/photos/110854/pexels-photo-110854.jpeg?auto=compress&cs=tinysrgb&h=750&w=1260');
        }
        
        .error-type {
            padding: 10px;
        }
        
        .error-type p {
            font-size: 30px;
            font-weight: bolder;
            font-family: roboto, arial, helvetica;
            text-shadow: 1px 4px 3px rgba(0, 0, 0, 0.2);
        }
        
        .error-text {
            padding: 10px;
        }
        
        .error-text p {
            font-family: Roboto, arial, helvetica;
            text-shadow: 1px 4px 3px rgba(0, 0, 0, 0.2);
        }
        
        .error-controlls {
            padding: 30px;
        }
        
        .error-controlls a {
            padding: 10px;
            color: #fff;
            font-family: roboto, arial, helvetica;
            font-weight: bold;
            text-decoration: none;
            background-color: black;
            border-radius: 30px;
            box-shadow: 1px 6px 1px 1px rgba(0, 0, 0, 0.2);
        }
        
        .error-controlls a:hover {
            transition: 0.3s;
            background-color: white !important;
            color: black;
        }
    </style>
</head>

<body>
    <div class="main">
        <div class="error-container">
            <div class="error-header">
                <h1>Oops!</h1>
            </div>
            <div class="error-main">
                <div class="error-type">
                    <p>404-PAGE NOT FOUND</p>
                </div>
                <div class="error-text">
                    <P>The page you are looking for might not exist.</P>
                    <p>had its name changed or temporarily unavailable.</p>
                   
                </div>
            </div>
            <div class="error-controlls">
                <a href="<%= request.getContextPath() %>/landing">GO TO HOMEPAGE</a>
            </div>
        </div>
    </div>
</body>

</html>