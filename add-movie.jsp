<!DOCTYPE html>
<html>

<head>
    <meta charset="UTF-8">
    <title>Insert title here</title>
    <script type="text/javascript"></script>
    <style>
          * {
            padding: 0;
            margin: 0;
        }
        
        body {
            display: flex;
        }
        
        .logo {
            color: rgb(0, 0, 0);
            font-family: -apple-system, BlinkMacSystemFont, 'Segoe UI', Roboto, Oxygen, Ubuntu, Cantarell, 'Open Sans', 'Helvetica Neue', sans-serif;
        }
        
        header {
            padding-top: 30px;
            position: fixed;
            height: 100%;
            width: 220px;
            padding-left: 20px;
        }
        
        .icon {
            margin-top: 3rem;
            width: 170px;
            height: 170px;
            margin-bottom: 2rem;
        }
        
        .profile {
            width: 100%;
            height: 100%;
            border-radius: 50%;
            background-color: rgb(255, 255, 255);
            box-shadow: 1px 2px 4px 0px rgba(0, 0, 0, 0.26);
        }
        
        nav {
            width: 100%;
        }
        
        nav ul {
            padding-top: 1rem;
            padding-bottom: 2rem;
        }
        
        nav ul li,
        a {
            margin-top: 1rem;
            list-style: none;
            text-decoration: none;
            color: rgb(0, 0, 0);
            font-size: 18px;
            font-family: -apple-system, BlinkMacSystemFont, 'Segoe UI', Roboto, Oxygen, Ubuntu, Cantarell, 'Open Sans', 'Helvetica Neue', sans-serif;
        }
        
        header a:hover {
            font-size: 20px;
            font-weight: bolder;
            transition: ease 0.4s;
        }
        
        .logout-btn:hover {
            transition: cubic-bezier(0.55, 0.055, 0.675, 0.19) 0.3s;
            border-radius: 30px;
            color: rgb(255, 255, 255);
            background: rgb(0, 0, 0);
        }
        
        .logout-btn {
            font-size: 20px;
            font-weight: bold;
            padding-top: 10px;
            padding-bottom: 12px;
            padding-left: 65px;
            padding-right: 65px;
            border: solid 1px rgb(0, 0, 0);
            color: rgb(0, 0, 0);
            background: rgb(255, 255, 255);
            box-shadow: 1 2 10px rgb(255, 255, 255);
            transition: cubic-bezier(0.55, 0.055, 0.675, 0.19) 0.3s;
        }
        
        section {
            width: 100%;
            height: 100vh;
            padding-left: 260px;
            padding-right: 2rem;
            padding-top: 2rem;
            padding-bottom: 2rem;
        }
        
       .Movie-list-con {
            width: 100%;
            height: 100vh;
            border-radius: 20px;
            box-shadow: -1px 0px 9px 0px rgba(0, 0, 0, 0.219);
        }
        
        .from-container {
            justify-content: center;
            display: flex;
            padding-top: 60px;
        }
        
        .inputs {
            margin-bottom: 20px;
        }
        
        form {
            margin-top: 30px;
        }
        
        .inputs input {
            margin-top: 10px;
            width: 350px;
            height: 40px;
            padding: px;
            border-radius: 3px;
            border: none !important;
            box-shadow: 0px 1px 4px 1px rgba(0, 0, 0, 0.253);
        }
        
        .btn-primary {
            width: 100%;
            height: 40px;
            border: 1px solid black;
            background-color: white;
            transition: cubic-bezier(0.55, 0.055, 0.675, 0.19) 0.3s;
        }
        
        .btn-primary:hover {
            transition: cubic-bezier(0.55, 0.055, 0.675, 0.19) 0.3s;
            border-radius: 20px;
            background-color: black;
            font-weight: bolder;
            color: white;
        }
        .header-text{
        	font-family: -apple-system, BlinkMacSystemFont, 'Segoe UI', Roboto, Oxygen, Ubuntu, Cantarell, 'Open Sans', 'Helvetica Neue', sans-serif;
        }
    </style>

</head>

<body>
    <header>
        <nav>
            <h1 class="logo">RedFox-Admin</h1>
            <div class="icon">
                <div class="profile">
                    <img src="" alt="">
                </div>
            </div>
            <h2 style="color: rgb(0, 0, 0); font-size: 30px; font-weight: bolder">
                <% out.println(session.getAttribute("username")); %>
            </h2>
            <ul>
                <li><a href="<%= request.getContextPath()%>/add-employee">New Employee</a></li>
                <li><a href="<%= request.getContextPath()%>/add-movie" style=" text-decoration: underline;">New Movie</a></li>
                <li><a href="<%= request.getContextPath()%>/list" >Employees</a></li>
                <li><a href="<%= request.getContextPath()%>/movies">Movies</a></li>
            </ul>
            <a href="<%= request.getContextPath() %>/logout" class="logout-btn">Logout</a>
        </nav>
    </header>
    <section>
        <div class="Movie-list-con">
            <div class="from-container">
                <div class="form-main">
                <h2 class="header-text">Add New Movie</h2>
                    <form action="insertMovie" method="post">
                        <div class="top"></div>
                        <div class="main">
                            <label>Title</label>
                            <div class="inputs">
                                <input type="text" name="title" id="title">
                            </div>

                            <label>Year</label>
                            <div class="inputs">
                                <input type="text" name="year" id="year">
                            </div>

                            <label>Genre</label>
                            <div class="inputs">
                                <input type="text" name="genre" id="genre">
                            </div>

                            <label>Main actor/s</label>
                            <div class="inputs">
                                <input type="text" name="actor" id="actor">
                            </div>

                            <label>Director</label>
                            <div class="inputs">
                                <input type="text" name="director" id="director">
                            </div>   
                            <button type="submit" class="btn-primary">Add movie</button>
                        </div>
                    </form>
                </div>
            </div>
        </div>
    </section>
</body>

</html>