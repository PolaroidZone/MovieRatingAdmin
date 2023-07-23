 <%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    <%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %> 
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
        
        tr {
            height: 30px;
        }
        
        th {
            width: 200px;
            padding-top: 10px;
            padding-left: 10px;
        }
        
        td {
            padding: 10px;
        }
        
        .action-buttton {
            display: block;
            float: left;
            border: 1px solid;
            background: rgb(255, 255, 255);
            padding: 4px;
            transition: ease 0.4s;
            margin-top: 3px;
        }
        
        .action-buttton:hover {
            background: rgb(0, 0, 0);
            color: white;
            padding: 4px;
            border-radius: 10px;
            transition: ease 0.4s;
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
                <li><a href="<%= request.getContextPath()%>/add-movie">New Movie</a></li>
                <li><a href="<%= request.getContextPath()%>/list" style=" text-decoration: underline;">Employees</a></li>
                <li><a href="<%= request.getContextPath()%>/movies">Movies</a></li>
            </ul>
            <a href="<%= request.getContextPath() %>/logout" class="logout-btn">Logout</a>
        </nav>
    </header>
    <section>
        <div class="Movie-list-con">
            <table>
                <thead>
                    <tr>
                        <th>ID</th>
                        <th>full name</th>
                        <th>Username</th>
                        <th>password</th>
                        <th>email</th>
                        <th>Admin Actions</th>
                    </tr>
                </thead>
                <tbody>
                    <c:forEach var="user" items="${listEmp}">
                        <tr>
                            <td>
                                <c:out value="${user.id}" /> </td>
                            <td>
                                <c:out value="${user.fullname}" /> </td>
                            <td>
                                <c:out value="${user.username}" /> </td>
                            <td>
                                <c:out value="${user.password}" /> </td>
                            <td>
                                <c:out value="${user.email}" /> </td>
                            <td><a class="action-buttton" href="edit?id=<c:out value='${user.id}' />">Edit</a> &nbsp;&nbsp;&nbsp;&nbsp; <a class="action-buttton" href="deleteEmployees?id=<c:out value='${user.id}' />">Delete</a> </td>
                        </tr>
                    </c:forEach>
                </tbody>
            </table>
        </div>
    </section>
</body>

</html>