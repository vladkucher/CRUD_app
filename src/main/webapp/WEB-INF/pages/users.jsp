<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib uri="http://www.springframework.org/tags" prefix="spring" %>
<%@ taglib uri="http://www.springframework.org/tags/form" prefix="form" %>
<%@ taglib prefix="from" uri="http://www.springframework.org/tags/form" %>
<%@ page session="false" %>
<!DOCTYPE html>
<html lang="en">
<head>
    <title>Users Page</title>



    <!--<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0-alpha.5/css/bootstrap.min.css" integrity="sha384-AysaV+vQoT3kOAXZkl02PThvDr8HYKPZhNT5h/CXfBThSRXQ6jW5DO2ekP5ViFdi" crossorigin="anonymous">
    <script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0-alpha.5/js/bootstrap.min.js" integrity="sha384-BLiI7JTZm+JWlgKa0M0kGRpJbF2J8q+qreVrKBC47e3K6BW78kGLrCkeRX6I9RoK" crossorigin="anonymous"></script>-->

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
        <li class="nav-item active">
            <a class="nav-link" href="#">Users</a>
        </li>
        <form class="form-inline float-xs-right" style="margin-bottom: 0%">
            <input class="form-control" type="text" id="customerId" placeholder="Username">
            <button class="btn btn-outline-success" onclick="handleClick(this.id);" type="submit">Find user</button>
        </form>
    </ul>

</nav>

<br>

<h1>User List</h1>

<c:if test="${!empty listUsers}">
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
                <th>Edit</th>
                <th>Delete</th>
            </tr>
            </thead>

            <tbody>

            <c:forEach items="${listUsers}" var="user">
                <tr>
                    <td>${user.id}</td>
                    <td>${user.name}</td>
                    <td>${user.age}</td>
                    <td>${user.isAdmin}</td>
                    <td>${user.createdDate}</td>
                    <td><a href="<c:url value='/edit/${user.id}'/>">Edit</a></td>
                    <td><a href="<c:url value='/remove/${user.id}'/>">Delete</a></td>
                </tr>
            </c:forEach>
            </tbody>
        </table>
    </div>
</c:if>


<h1>Add a User</h1>

<c:url var="addAction" value="/users/add"/>
<form:form action="${addAction}" commandName="user">
    <table>
        <c:if test="${!empty user.name}">
            <div class="form-group row" style="width:100%">
                <label style="width:8%; margin-left:26%;" for="example-text-input" class="col-xs-2 col-form-label">Id</label>
                <div class="col-xs-10" style="width:40%;">
                    <form:input path="id" readonly="true" id="example-text-input" class="form-control" disabled="true"/>
                </div>
            </div>
        </c:if>
        <div class="form-group row" style="width:100%">
            <label style="width:8%; margin-left:26%;" for="example-text-input" class="col-xs-2 col-form-label">Name</label>
            <div class="col-xs-10" style="width:40%;">
                <form:input id="example-text-input" class="form-control" path="name" type="text" required="required"/>
            </div>
        </div>

        <div class="form-group row" style="width:100%">
            <label style="width:8%; margin-left:26%;" for="example-text-input" class="col-xs-2 col-form-label">Age</label>
            <div class="col-xs-10" style="width:40%;">
                <form:input id="example-text-input" class="form-control" path="age" type="number" required="required"/>
            </div>
        </div>

        <!--<div class="form-group row" style="width:100%">
            <label style="width:8%; margin-left:26%;" for="example-text-input" class="col-xs-2 col-form-label">Is Admin</label>
            <div class="col-xs-10" style="width:40%;">
                <form:input id="example-text-input" class="form-control" path="isAdmin" type="text" required="required"/>
            </div>
        </div>-->

        <div class="form-group row" style="width:100%">
            <label style="width:8%; margin-left:26%;" for="example-text-input" class="col-xs-2 col-form-label">Is Admin</label>
            <div class="col-xs-10" style="width:40%;">
                <select class="form-control" id="example-text-input" path="isAdmin">
                    <option>false</option>
                    <option>true</option>
                </select>
            </div>
        </div>



        <div class="form-group row" style="width:100%">
            <label style="width:8%; margin-left:26%;" for="example-date-input" class="col-xs-2 col-form-label">Date</label>
            <div class="col-xs-10" style="width:40%;">
                <form:input  id="example-date-input" type="date" class="form-control" path="createdDate"/>
            </div>
        </div>

        <div align="center">
            <div>
                <c:if test="${!empty user.name}">
                    <input type="submit" class="btn btn-primary"
                           value="<spring:message text="Edit User"/>"/>
                </c:if>
                <c:if test="${empty user.name}">
                    <input type="submit" class="btn btn-primary"
                           value="<spring:message text="Add User"/>"/>
                </c:if>
            </div>
        </div>
    </table>
</form:form>



<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.1.1/jquery.min.js" integrity="sha384-3ceskX3iaEnIogmQchP8opvBy3Mi7Ce34nWjpBIwVTHfGYWQS9jwHDVRnpKKHJg7" crossorigin="anonymous"></script>
<script src="https://cdnjs.cloudflare.com/ajax/libs/tether/1.3.7/js/tether.min.js" integrity="sha384-XTs3FgkjiBgo8qjEjBk0tGmf3wPrWtA6coPfQDfFEY8AnYJwjalXCiosYRBIBZX8" crossorigin="anonymous"></script>
<script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0-alpha.5/js/bootstrap.min.js" integrity="sha384-BLiI7JTZm+JWlgKa0M0kGRpJbF2J8q+qreVrKBC47e3K6BW78kGLrCkeRX6I9RoK" crossorigin="anonymous"></script>

<script type="text/javascript">
    function handleClick(clickedId)
    {
            var currentValue = document.getElementById('customerId').value;
          if(currentValue != "") {
              var x = window.location.host + "/search/";
              var final = x.concat(currentValue);
              var link = "http://";
              final = link.concat(final);
              final = final + "/"
              window.open(final, '_blank');
          } else {
              alert("enter username");
          }
    }
</script>
</body>
</html>
