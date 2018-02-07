<%@ taglib uri = "http://java.sun.com/jsp/jstl/core" prefix = "c" %>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<!DOCTYPE html>
<html>
    <head>
        <title>Библиотека фантастики<</title>
        <meta charset="utf-8">
        <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0-beta.2/css/bootstrap.min.css" integrity="sha384-PsH8R72JQ3SOdhVi3uxftmaW6Vc51MKb0q5P2rRUpPvrszuE4W1povHYgTpBfshb" crossorigin="anonymous">
        <link href="/css/base.css" rel="stylesheet">
    </head>
    <body>

        <header>
            <nav class="navbar navbar-expand-md navbar-dark fixed-top bg-dark">
                <c:url value="/" var="index_url"></c:url>
                <a class="navbar-brand" href="${index_url}"># Библиотека фантастики</a> <span style="color: #fff;">{ Добавить книгу }</span>
            </nav>
        </header>

        <div class="container">
            <br>
            <br>
            <c:url value="/insert" var="insert_url"></c:url>
            <form:form method="post" modelAttribute="insertBook" action="${insert_url}">
                <div class="form-group row">
                    <form:label path="title" class="col-sm-2 col-form-label">Название:</form:label>
                    <div class="col-sm-10">
                        <form:input path="title" type="text" class="form-control"/>
                    </div>
                </div>
                <div class="form-group row">
                    <form:label path="description" class="col-sm-2 col-form-label">Описание:</form:label>
                    <div class="col-sm-10">
                        <form:input path="description" type="text" class="form-control"/>
                    </div>
                </div>
                <div class="form-group row">
                    <form:label path="author" class="col-sm-2 col-form-label">Автор:</form:label>
                    <div class="col-sm-10">
                        <form:input path="author" type="text" class="form-control"/>
                    </div>
                </div>
                <div class="form-group row">
                    <form:label path="isbn" class="col-sm-2 col-form-label">ISBN:</form:label>
                    <div class="col-sm-10">
                        <form:input path="isbn" type="text" class="form-control"/>
                    </div>
                </div>
                <div class="form-group row">
                    <form:label path="printYear" class="col-sm-2 col-form-label">Год издания:</form:label>
                    <div class="col-sm-10">
                        <form:input path="printYear" type="text" class="form-control"/>
                    </div>
                </div>
                <div class="form-group row">
                    <div class="col-sm-12">
                        <input type="submit" value="Добавить книгу" class="btn btn-primary float-right"/>
                    </div>
                </div>
            </form:form>
        </div>

    </body>
</html>
