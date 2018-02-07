<%@ taglib uri = "http://java.sun.com/jsp/jstl/core" prefix = "c" %>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" pageEncoding="UTF-8" %>
<!DOCTYPE html>
<html>
    <head>
        <title>Библиотека фантастики</title>
        <meta charset="utf-8">
        <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0-beta.2/css/bootstrap.min.css" integrity="sha384-PsH8R72JQ3SOdhVi3uxftmaW6Vc51MKb0q5P2rRUpPvrszuE4W1povHYgTpBfshb" crossorigin="anonymous">
        <link href="/css/base.css" rel="stylesheet">
    </head>
    <body>

        <header>
            <nav class="navbar navbar-expand-md navbar-dark fixed-top bg-dark">
                <a class="navbar-brand" href="/"># Библиотека фантастики</a> <span style="color: #fff;">{ Заменить книгу }</span>
            </nav>
        </header>

        <div class="container">
            <br>
            <br>
            <c:url value="/update" var="update_url"></c:url>
            <form:form method="post" modelAttribute="editBook" action="${update_url}">
                <input type="hidden" name="id" value="${list.id}"/>
                <input type="hidden" name="page" value="${page}"/>
                <input type="hidden" name="query" value="${query}"/>
                <input type="hidden" name="read" value="${read}"/>
                <div class="form-group row">
                    <form:label path="title" class="col-sm-2 col-form-label">Название:</form:label>
                    <div class="col-sm-10">
                        <form:input path="title" type="text" value="${fn:escapeXml(list.title)}" class="form-control"/>
                    </div>
                </div>
                <div class="form-group row">
                    <form:label path="description" class="col-sm-2 col-form-label">Описание:</form:label>
                    <div class="col-sm-10">
                        <form:input path="description" type="text" value="${fn:escapeXml(list.description)}" class="form-control"/>
                    </div>
                </div>
                <div class="form-group row">
                    <form:label path="author" class="col-sm-2 col-form-label">Автор:</form:label>
                    <div class="col-sm-10">
                        <form:input path="author" type="text" value="${fn:escapeXml(list.author)}" class="form-control" readonly="true"/>
                    </div>
                </div>
                <div class="form-group row">
                    <form:label path="isbn" class="col-sm-2 col-form-label">ISBN:</form:label>
                    <div class="col-sm-10">
                        <form:input path="isbn" type="text" value="${fn:escapeXml(list.isbn)}" class="form-control"/>
                    </div>
                </div>
                <div class="form-group row">
                    <form:label path="printYear" class="col-sm-2 col-form-label">Год издания:</form:label>
                    <div class="col-sm-10">
                        <form:input path="printYear" type="text" value="${fn:escapeXml(list.printYear)}" class="form-control"/>
                    </div>
                </div>
                <div class="form-group row">
                    <div class="col-sm-12">
                        <input type="submit" value="Заменить книгу" class="btn btn-primary float-right">
                    </div>
                </div>
            </form:form>
        </div>

    </body>
</html>
