<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib uri="http://www.springframework.org/tags" prefix="spring" %>
<%@ taglib uri="http://www.springframework.org/tags/form" prefix="form" %>
<%@ page session="false" %>
<!DOCTYPE html>
<html>
<head>
    <title>SearchList</title>


    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
    <meta http-equiv="x-ua-compatible" content="ie=edge">

    <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0-alpha.5/css/bootstrap.min.css" integrity="sha384-AysaV+vQoT3kOAXZkl02PThvDr8HYKPZhNT5h/CXfBThSRXQ6jW5DO2ekP5ViFdi" crossorigin="anonymous">



    <style type="text/css">
        table {
            width: 100%;
        }

        thead, tbody, tr, td, th { display: block; }

        tr:after {
            content: ' ';
            display: block;
            visibility: hidden;
            clear: both;
        }

        thead th {
            height: 50px;

            /*text-align: left;*/
        }

        tbody {
            height: 220px;
            overflow: scroll;
            overflow-x: hidden;
        }

        thead {
            /* fallback */
        }


        tbody td, thead th {
            width: 14.28%;
            float: left;
        }
    </style>

</head>
<body>

<nav class="navbar navbar-light bg-faded">
    <h1 class="navbar-brand mb-0">CrudApp</h1>
    <ul class="nav navbar-nav">
        <li class="nav-item">
            <a class="nav-link" href="../../">Home</a>
        </li>
        <li class="nav-item">
            <a class="nav-link" href="../../users">Users</a>
        </li>

    </ul>

</nav>

<h1>Search List</h1>

<!--<c:if test="${!empty list}">
    <table class="tg">
        <tr>
            <th width="80">ID</th>
            <th width="120">Name</th>
            <th width="120">Age</th>
            <th width="120">isAdmin</th>
            <th width="120">Date</th>
        </tr>
        <c:forEach items="${list}" var="user">
            <tr>
                <td>${user.id}</td>
                <td>${user.name}</td>
                <td>${user.age}</td>
                <td>${user.isAdmin}</td>
                <td>${user.createdDate}</td>
            </tr>
        </c:forEach>
    </table>
</c:if>
<c:if test="${empty list}">
    no result
</c:if>-->

<br>

<c:if test="${!empty list}">
    <!--<table class="tg">
    <tr>
    <th width="80">ID</th>
    <th width="120">Name</th>
    <th width="120">Age</th>
    <th width="120">isAdmin</th>
    <th width="120">createdDate</th>
    <th width="60">Edit</th>
    <th width="60">Delete</th>
    </tr>
    </table>!-->
    <div>
        <table class="table table-striped">
            <thead>
            <tr>
                <th>ID</th>
                <th>Name</th>
                <th>Age</th>
                <th>isAdmin</th>
                <th>createdDate</th>
            </tr>
            </thead>

            <tbody>

            <c:forEach items="${list}" var="user">
                <tr>
                    <td>${user.id}</td>
                    <td>${user.name}</td>
                    <td>${user.age}</td>
                    <td>${user.isAdmin}</td>
                    <td>${user.createdDate}</td>

                </tr>
            </c:forEach>
            </tbody>
        </table>
    </div>
</c:if>
<c:if test="${empty list}">
    no result
</c:if>


<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.1.1/jquery.min.js" integrity="sha384-3ceskX3iaEnIogmQchP8opvBy3Mi7Ce34nWjpBIwVTHfGYWQS9jwHDVRnpKKHJg7" crossorigin="anonymous"></script>
<script src="https://cdnjs.cloudflare.com/ajax/libs/tether/1.3.7/js/tether.min.js" integrity="sha384-XTs3FgkjiBgo8qjEjBk0tGmf3wPrWtA6coPfQDfFEY8AnYJwjalXCiosYRBIBZX8" crossorigin="anonymous"></script>
<script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0-alpha.5/js/bootstrap.min.js" integrity="sha384-BLiI7JTZm+JWlgKa0M0kGRpJbF2J8q+qreVrKBC47e3K6BW78kGLrCkeRX6I9RoK" crossorigin="anonymous"></script>


</body>
</html>
