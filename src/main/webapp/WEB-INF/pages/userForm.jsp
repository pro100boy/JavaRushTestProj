<%@ page language="java" contentType="text/html; charset=UTF-8"
         pageEncoding="UTF-8" %>
<%@ taglib uri="http://www.springframework.org/tags/form" prefix="form" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<meta charset="utf-8">
<meta http-equiv="X-UA-Compatible" content="IE=edge">
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<meta name="author" content="Paul Galushkin">
<head>
    <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
    <title>User information</title>
    <!-- Bootstrap CSS -->
    <link href="<c:url value="/resources/css/bootstrap.min.css" />" rel="stylesheet">
    <%--<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.5/css/bootstrap.min.css">--%>
    <style type="text/css">
        .myrow-container {
            margin: 20px;
        }
    </style>
    <%--<script type="text/javascript">
        $(document).ready(function() {
            $('#myCheckbox').attr('checked', true);
        });
    </script>--%>
</head>
<body class=".container-fluid">
<div class="container myrow-container">
    <div class="panel panel-success">
        <div class="panel-heading">
            <h3 class="panel-title">
                User Details
            </h3>
        </div>
        <div class="panel-body">
            <form:form id="userRegisterForm" cssClass="form-horizontal" modelAttribute="user" method="post"
                       action="saveUser">

                <div class="form-group">
                    <div class="control-label col-xs-3"><form:label path="">Name</form:label></div>
                    <div class="col-xs-6">
                        <form:hidden path="id" value="${userObject.id}"/>
                        <form:input cssClass="form-control" path="name" placeholder="Jane Doe"
                                    value="${userObject.name}"/>
                    </div>
                </div>

                <div class="form-group">
                    <form:label path="" cssClass="control-label col-xs-3">Age</form:label>
                    <div class="col-xs-6">
                        <form:input cssClass="form-control" path="age" value="${userObject.age}"/>
                    </div>
                </div>

                <div class="form-group">
                    <form:label path="" cssClass="control-label col-xs-3">Admin</form:label>
                    <div class="checkbox">
                        <div class="col-xs-6">
                            <form:checkbox path="isAdmin" value="${userObject.isAdmin}" cssClass="col-xs-1"/>

                            <%--<c:choose>
                                <c:when test="${userObject.isAdmin == false}"> <label><input type="checkbox"
                                                                                             name="isadmin" onchange=""
                                                                                             value="false"></label> </c:when>
                                <c:otherwise> <label><input type="checkbox" name="isadmin" value="true"
                                                            checked="checked"></label> </c:otherwise>
                            </c:choose>--%>
                        </div>
                    </div>
                </div>

                <div class="form-group">
                    <div class="control-label col-xs-3"><form:label path="">Date</form:label></div>
                    <div class="col-xs-6">
                        <form:input cssClass="form-control" path="createdDate" value="${userObject.createdDate}"/>
                    </div>
                </div>

                <div class="form-group">
                    <div class="row">
                        <div class="col-xs-4"></div>
                        <div class="col-xs-4">
                            <input type="submit" id="saveUser" class="btn btn-primary btn-sm" value="Save"
                                   onclick="return submitUserForm();"/>
                        </div>
                        <div class="col-xs-1">
                            <a class="btn btn-default btn-sm" href="getAllUsers" role="button">Cancel</a>
                        </div>
                    </div>
                </div>
            </form:form>
        </div>
    </div>
</div>


<script src="<c:url value="/resources/js/jquery-2.1.3.js"/>"></script>
<script src="<c:url value="/resources/js/bootstrap.min.js"/>"></script>
<%--
<script src="https://ajax.googleapis.com/ajax/libs/jquery/2.1.3/jquery.min.js"></script>
<script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.5/js/bootstrap.min.js"></script>
 --%>
<script type="text/javascript">
    function submitUserForm() {

        // getting the user form values
        var name = $('#name').val().trim();
        var age = $('#age').val();
        var createdDate = $('#createdDate').val().trim();

        if (name.length == 0) {
            alert('Please enter name');
            $('#name').focus();
            return false;
        }

        if (createdDate.length == 0) {
            alert('Please enter date');
            $('#createdDate').focus();
            return false;
        }

        if (age <= 0) {
            alert('Please enter proper age');
            $('#age').focus();
            return false;
        }

        return true;
    };
</script>

</body>
</html>