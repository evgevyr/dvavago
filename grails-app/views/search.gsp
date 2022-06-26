<%--
  Created by IntelliJ IDEA.
  User: evgevyr
  Date: 2022-06-23
  Time: 15:14
--%>

<%@ page contentType="text/html;charset=UTF-8" %>
<html>
<head>
    <meta name="layout" content="main"/>
    <title>Home Page</title>
</head>

<body>

<div class="container h-100">
    <div class="row h-100 justify-content-center align-items-center">
        <div class="w-50 h-25 dimmed-window">
            <div class="row justify-content-center h2 text-white">
                <h1>Поиск дешевых отелей</h1>
            </div>
            <g:form class="h-50 form-inline row justify-content-center align-items-center" controller="search" action="search">
                <div class="input-group w-100">
                    <input type="search" class="form-control" name="searchString">
                    <div class="input-group-prepend">
                        <select class="custom-select">
                            <option selected>Страна</option>
                            <option value="1">Бельгия</option>
                            <option value="2">Англия</option>
                            <option value="3">Хуянглия</option>
                        </select>
                    </div>
                    <button type="submit" class="btn btn-primary ml-4">Искать</button>
                </div>
            </g:form>
        </div>
    </div>
</div>

<%--<div class="h-100 d-flex align-items-start justify-content-center fieldcontain">
    <g:form name="search_form" controller="search">
        <div class="input-group">
            <input type="search" placeholder="Название отеля..." name="search" class="form-control">
            <button type="button" class="btn btn-primary ml-3">Искать</button>
        </div>
    </g:form>
</div>--%>
</body>
</html>