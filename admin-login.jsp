<!DOCTYPE html>
<html>

<head>
    <meta charset="UTF-8">
    <title>Insert title here</title>
    <script type="text/javascript"></script>
    <style>
        * {
            margin: 0;
            padding: 0;
        }
        
        body {
            background: black;
        }
        
        section {
            justify-content: center;
            display: flex;
            padding-top: 30vh;
        }
        
        .form-container {
            background-color: white;
            width: 300px;
            border-radius: 20px;
            padding: 30px;
        }
        
        .form-top {
            margin-bottom: 30px;
            text-align: center;
        }
        
        .form-top h1 {
            text-shadow: 0px 2px 0px rgba(0, 0, 0, 0.158);
            font-size: 30px;
            font-family: -apple-system, BlinkMacSystemFont, 'Segoe UI', Roboto, Oxygen, Ubuntu, Cantarell, 'Open Sans', 'Helvetica Neue', sans-serif;
        }
        
        .input-container {
            margin-bottom: 20px;
        }
        
        label {
            font-size: 15px;
            font-family: -apple-system, BlinkMacSystemFont, 'Segoe UI', Roboto, Oxygen, Ubuntu, Cantarell, 'Open Sans', 'Helvetica Neue', sans-serif;
        }
        
        .input-container input {
            border-radius: 10px;
            padding: 0px;
            width: 100%;
            height: 40px;
            border: none;
            box-shadow: 0px 3px 3px rgba(0, 0, 0, 0.164);
        }
        
        .form-bottom button {
            transition: ease 0.6s;
            box-shadow: 0px 3px 3px rgba(0, 0, 0, 0.164);
            border: none;
            width: 100%;
            height: 40px;
            font-size: 16px;
            font-weight: lighter;
            font-family: -apple-system, BlinkMacSystemFont, 'Segoe UI', Roboto, Oxygen, Ubuntu, Cantarell, 'Open Sans', 'Helvetica Neue', sans-serif;
        }
        
        .form-bottom button:hover {
            transition: ease 0.6s;
            font-weight: bolder;
            background: black !important;
            color: white !important;
            border: none;
            border-radius: 10px;
        }
    </style>
</head>

<body>
    <section>
        <div class="form-container">
            <div class="form-inner">
                <form action="login" method="post">
                    <div class="form-top">
                        <h1>Admin dashboard</h1>
                    </div>
                    <div class="form-main">
                        <label>Username</label>
                        <div class="input-container">
                            <input type="text" name="username" placeholder="Username" id="username" required="required">
                        </div>
                        <label>Password</label>
                        <div class="input-container">
                            <input type="password" name="password" placeholder="Password" id="username" required="required">
                        </div>
                    </div>
                    <div class="form-bottom">
                        <button>LOGIN</button>
                    </div>
                </form>
            </div>
        </div>
    </section>
</body>

</html>