<%@ page import="dvavago.Country" contentType="text/html;charset=UTF-8" %>
<html>
<head>
    <meta name="layout" content="main"/>
    <title>Home Page</title>
</head>

<body>

<div class="row h-25"></div>

<div class="row justify-content-center align-items-center mb-3">
    <ul class="nav nav-pills">
        <li class="nav-item">
            <a href="${createLink(uri: '/hotel/index')}" class="btn btn-outline-light text-light">
                Список отелей
            </a>
        </li>
        <li class="nav-item">
            <a href="${createLink(uri: '/country/index')}" class="btn btn-outline-light text-light">
                Список стран
            </a>
        </li>
    </ul>
</div>

<div class="row justify-content-center align-items-center">
    <div class="col-5 dimmed-window">
        <div class="h2 text-white text-center mt-3">Поиск лучших отелей</div>
        <g:form action="query" controller="Search">
            <div class="form-row mb-4">
                <div class="col">
                    <label class="text-white" for="hotelInput">Название отеля</label>
                    <input class="form-control"
                           type="text"
                           name="hotelName"
                           id="hotelInput"
                           placeholder="Отель..."
                           pattern="[A-Za-zА-Яа-яЁё ]{,255}"
                           title="Значение поля не должно превышать 255 символов!"
                           required/>
                </div>

                <div class="col">
                    <label class="text-white" for="countryInput">Страна</label>
                    <g:select id="countryInput"
                              class="form-control"
                              name="country.id"
                              optionValue="name"
                              optionKey="id"
                              from="${Country.getAll()}"
                              required="true"/>
                </div>

                <div class="col-2 mt-4">
                    <button id="searchButton" class="btn btn-outline-light form-control mt-1"
                            type="submit">Искать!</button>
                </div>
            </div>
        </g:form>
    </div>
</div>
</body>
</html>