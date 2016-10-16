<%@ page language="java" contentType="text/html; charset=UTF-8"
         pageEncoding="UTF-8" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<meta name="author" content="Paul Galushkin">
<head>
    <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
    <title>Users List</title>
    <!-- Bootstrap CSS -->
    <link href="<c:url value="/resources/css/bootstrap.min.css" />" rel="stylesheet">
    <%-- <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.5/css/bootstrap.min.css"> --%>
    <style type="text/css">
        .myrow-container {
            margin: 20px;
        }
    </style>
</head>
<body class=".container-fluid">
<div class="container myrow-container">
    <div class="panel panel-success">
        <div class="panel-heading">
            <h3 class="panel-title">
                <div align="left"><b>Users list</b></div>
                <div align="right"><a href="createUser">Add new user</a></div>
            </h3>
        </div>

        <div class="panel-body">

            <c:if test="${empty userList}">
                <p>There are no users</p> <br/><a href="getAllUsers">back to homepage</a>
            </c:if>

            <c:if test="${not empty userList}">

                <form action="searchUser" class="form-inline">
                        <div class="form-group">
                            <label for="searchName">Search users: </label><input type="text" class="form-control" name="searchName" id="searchName"
                                                 placeholder="Jane Doe"/>
                        </div>
                        <input class="btn btn-success" type="submit" value='Search'/>
                        <a class="btn btn-warning" href="getAllUsers" role="button">Show all</a>
                </form>

                <br/>

                <table class="table table-hover table-bordered">
                    <thead class="bg-primary">
                    <tr>
                        <th class="text-center">ID</th>
                        <th class="text-center">Name</th>
                        <th class="text-center">Age</th>
                        <th class="text-center">Admin</th>
                        <th class="text-center">Date</th>
                        <th class="text-center">Edit</th>
                        <th class="text-center">Delete</th>
                    </tr>
                    </thead>
                    <tbody>

                    <c:set var="count" value="0" scope="page"/>

                    <c:forEach items="${userList}" var="usr">

                        <c:choose>
                            <c:when test="${count % 2 == 0}"> <tr> </c:when>
                            <c:otherwise> <tr class="bg-info"> </c:otherwise>
                        </c:choose>

                        <%--<tr class="active">--%>
                        <th class="text-center"><c:out value="${usr.id}"/></th>
                        <th><c:out value="${usr.name}"/></th>
                        <th class="text-center"><c:out value="${usr.age}"/></th>
                        <th class="text-center col-xs-1">
                            <c:choose>
                                <c:when test="${usr.isAdmin == false}"> <input type="checkbox"/> </c:when>
                                <c:otherwise> <input type="checkbox" checked="checked"/> </c:otherwise>
                            </c:choose>
                        </th>
                        <th class="text-center col-xs-3"><c:out value="${usr.createdDate}"/></th>
                        <th class="text-center col-xs-1"><a class="btn btn-primary btn-xs"
                                                            href="editUser?id=<c:out value='${usr.id}'/>" role="button">Edit</a>
                        </th>
                        <th class="text-center col-xs-1"><a class="btn btn-danger btn-xs"
                                                            href="deleteUser?id=<c:out value='${usr.id}'/>"
                                                            role="button">Delete</a></th>
                        <%--<th class="text-center"><a href="editUser?id=<c:out value='${usr.id}'/>">Edit</a></th>--%>
                        <%--<th class="text-center"><a href="deleteUser?id=<c:out value='${usr.id}'/>">Delete</a></th>--%>
                        </tr>
                        <c:set var="count" value="${count + 1}" scope="page"/>
                    </c:forEach>
                    </tbody>
                </table>

                <ul class="pagination">
                    <c:url value="/list" var="prev">
                        <c:param name="page" value="${page-1}"/>
                    </c:url>
                    <c:if test="${page > 1}">
                        <li><a href="<c:out value="${prev}" />" class="pn prev">Prev</a></li>
                    </c:if>

                    <c:forEach begin="1" end="${maxPages}" step="1" varStatus="i">
                        <c:choose>
                            <c:when test="${page == i.index}">
                                <li><span style="color: #0000ff; font-weight: bold">${i.index}</span></li>
                            </c:when>
                            <c:otherwise>
                                <c:url value="/list" var="url">
                                    <c:param name="page" value="${i.index}"/>
                                </c:url>
                                <li><a href='<c:out value="${url}" />'>${i.index}</a></li>
                            </c:otherwise>
                        </c:choose>
                    </c:forEach>
                    <c:url value="/list" var="next">
                        <c:param name="page" value="${page + 1}"/>
                    </c:url>
                    <c:if test="${page + 1 <= maxPages}">
                        <li><a href='<c:out value="${next}" />' class="pn next">Next</a></li>
                    </c:if>
                </ul>

            </c:if>
        </div>
    </div>
    <%--
        <script src="https://ajax.googleapis.com/ajax/libs/jquery/2.1.3/jquery.min.js"></script>
        <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.5/js/bootstrap.min.js"></script>
     --%>

    <script src="<c:url value="/resources/js/jquery-2.1.3.js"/>"></script>
    <script src="<c:url value="/resources/js/bootstrap.min.js"/>"></script>
</body>
</html>