<%@ page import="dvavago.Country" contentType="text/html;charset=UTF-8" %>
<html>
<head>
    <meta name="layout" content="main"/>
    <title>Home Page</title>
</head>

<body>

<div class="row h-100 justify-content-center align-items-center">
    <div class="col-5 h-25 dimmed-window">
        <div class="h2 text-white text-center mt-4">Поиск лучших отелей</div>
        <g:form action="index" method="GET">
            <div class="form-row">
                <div class="col">
                    <label class="text-white" for="queryInput">Название отеля</label>
                    <g:field class="form-control" type="text" name="query" id="queryInput" placeholder="Отель..."/>
                </div>
                <div class="col">
                    <label class="text-white" for="hotelInput">Страна</label>
                    <g:select id="hotelInput"
                              class="form-control"
                              name="country.id"
                              optionValue="name"
                              optionKey="id"
                              from="${Country.getAll()}"/>
                </div>
                <div class="col-2 mt-4">
                    <button id="searchButton" class="btn btn-outline-light form-control mt-1" type="submit">Искать!</button>
                </div>
            </div>
        </g:form>
    </div>
</div>
</body>
</html>