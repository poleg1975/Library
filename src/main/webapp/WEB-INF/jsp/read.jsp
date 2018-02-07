<%@ taglib uri = "http://java.sun.com/jsp/jstl/core" prefix = "c" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
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
             <c:url value="/" var="index_url"></c:url>
            <a class="navbar-brand" href="${index_url}"># Библиотека фантастики</a>
        </nav>
    </header>

    <div class="container-fluid">
    <div class="table-responsive">
    <table class="table table-striped">
        <thead>
            <tr>
                <th>ID</th>
                <th>Название</th>
                <th>Описание</th>
                <th>Автор</th>
                <th>ISBN</th>
                <th>Год издания</th>
            </tr>
        </thead>
        <tbody>
            <tr>
                <td>${list.id}</td>
                <td>${list.title}</td>
                <td>${list.description}</td>
                <td>${list.author}</td>
                <td>${list.isbn}</td>
                <td>${list.printYear}</td>
            </tr>
            <tr>
            <c:url value="/${page}/" var="link">
                <c:if test="${not empty query}">
                    <c:param name="query" value="${query}"/>
                </c:if>
                <c:if test="${not empty read}">
                    <c:param name="read" value="${read}"/>
                </c:if>
            </c:url>
                <td colspan="6"><a href="${link}">К списку книг</a></td>
            </tr>
        </tbody>
    </table>
    </div>
    </div>

    </body>
</html>
