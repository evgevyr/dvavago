<%@ page contentType="text/html;charset=UTF-8" import="dvavago.Hotel" %>
<!DOCTYPE html>
<html>
<head>
    <meta name="layout" content="main"/>
    <title>Справочник отелей</title>
</head>

<body>
<div class="row mt-5">
    <ul class="nav nav-pills">
        <li class="nav-item">
            <a href="${createLink(uri: '/')}" class="btn btn-outline-light text-light">
                Поиск
            </a>
        </li>
        <li class="nav-item">
            <a href="${createLink(uri: '/country/index')}" class="btn btn-outline-light text-light">
                Справочник стран
            </a>
        </li>
        <li class="nav-item">
            <g:link class="btn btn-outline-light text-light" action="create" controller="hotel">
                Создать отель
            </g:link>
        </li>
    </ul>
</div>

<div class="row mt-5">
    <p class="h3 text-white">Справочник отелей</p>
    <table class="table table-hover table-striped">
        <thead>
        <tr class="bg-white">
            <g:sortableColumn property="name" title="Название" action=""/>
            <g:sortableColumn property="country.name" title="Страна"/>
            <g:sortableColumn property="stars" title="Звезды"/>
            <th>Действия</th>
        </tr>
        </thead>
        <tbody class="bg-white">
        <g:each in="${Hotel.getAll()}" var="hotel">
            <tr>
                <td>
                    ${hotel.name}
                    <g:if test="${hotel.link != null}">
                        <br>
                        <g:link url="${hotel.link}" target="_blank">Перейти на сайт</g:link>
                    </g:if>
                </td>
                <td>${hotel.country.name}</td>
                <td>${hotel.stars}</td>
                <td class="d-inline-flex">
                    <g:form resource="${hotel}" action="edit" class="mr-1">
                        <button type="submit" class="btn btn-outline-dark">
                            Редактировать
                        </button>
                    </g:form>
                    <g:form resource="${hotel}" method="DELETE">
                        <button type="submit" class="btn btn-outline-dark">
                            Удалить
                        </button>
                    </g:form>
                </td>
            </tr>
        </g:each>
        </tbody>
    </table>
</div>
</body>
</html>