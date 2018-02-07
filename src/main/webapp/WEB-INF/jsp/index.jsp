<%@ taglib uri = "http://java.sun.com/jsp/jstl/core" prefix = "c" %>
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
                <a class="navbar-brand" href="${index_url}"># Библиотека фантастики</a>
                <div class="collapse navbar-collapse" id="navbarsExampleDefault">
                    <ul class="navbar-nav mr-auto">
                        <li class="nav-item active">
                            <c:url value="/add" var="add_url"></c:url>
                            <a class="nav-link" href="${add_url}">Добавить книгу</a>
                        </li>
                    </ul>
                    <form class="form-inline mt-2 mt-md-0" method="get" action="${index_url}">
                        <select class="custom-select" name="read">
                          <option value="all" <c:if test="${read == 'all'}">selected</c:if>>Все книги</option>
                          <option value="read" <c:if test="${read == 'read'}">selected</c:if>>Прочитанные</option>
                          <option value="not_read" <c:if test="${read == 'not_read'}">selected</c:if>>Не прочитанные</option>
                        </select>
                        &nbsp;&nbsp;&nbsp;<input class="form-control mr-sm-2" type="text" placeholder="Искать книгу..." aria-label="Search" name="query" value="${query}">
                        <button class="btn btn-outline-success my-2 my-sm-0" type="submit">Поиск по библиотеке</button>
                    </form>
                </div>
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
                    <th>Прочитана</th>
                    <th>Действие</th>
                </tr>
            </thead>
            <tbody>

            <c:url value="" var="params">
                <c:if test="${not empty query}">
                    <c:param name="query" value="${query}"/>
                </c:if>
                <c:if test="${not empty read}">
                    <c:param name="read" value="${read}"/>
                </c:if>
            </c:url>

            <c:forEach var = "list" items = "${lists.content}">
                <tr>
                    <td>${list.id}</td>
                    <c:url value="/read/${list.id}/${page}/${params}" var="read_url"></c:url>
                    <td><a href="${read_url}">${list.title}</a></td>
                    <td>${list.description}</td>
                    <td>${list.author}</td>
                    <td>${list.isbn}</td>
                    <td>${list.printYear}</td>
                    <td>
                        <c:choose>
                            <c:when test="${list.readAlready}">
                                Да
                            </c:when>
                            <c:otherwise>
                                Нет
                            </c:otherwise>
                        </c:choose>
                    </td>
                    <td>
                        <c:url value="/edit/${list.id}/${page}/${params}" var="edit_url"></c:url>
                        <a href="${edit_url}">Заменить</a><br>
                        <c:url value="/delete/${list.id}/${page}/${params}" var="delete_url"></c:url>
                        <a href="${delete_url}">Удалить</a>
                    </td>
                </tr>
            </c:forEach>
            </tbody>
        </table>
        </div>

         <p class="text-center">
            <c:url value="/${page - 1}/" var="prev_url">
                <c:if test="${not empty query}">
                    <c:param name="query" value="${query}"/>
                </c:if>
                <c:if test="${not empty read}">
                    <c:param name="read" value="${read}"/>
                </c:if>
            </c:url>
             <c:choose>
                 <c:when test="${page > 1}">
                     <a href="${prev_url}">&laquo; Prev</a>
                 </c:when>
                 <c:otherwise>
                     &laquo; Prev
                 </c:otherwise>
             </c:choose>
             &nbsp;|&nbsp;
            <c:url value="/${page + 1}/" var="next_url">
                <c:if test="${not empty query}">
                    <c:param name="query" value="${query}"/>
                </c:if>
                <c:if test="${not empty read}">
                    <c:param name="read" value="${read}"/>
                </c:if>
            </c:url>
             <c:choose>
                 <c:when test="${page < pageMax}">
                     <a href="${next_url}">Next &raquo;</a>
                 </c:when>
                 <c:otherwise>
                     Next &raquo;
                 </c:otherwise>
             </c:choose>
         </p>

        </div>

    </body>
</html>
