<%@ page contentType="text/html;charset=UTF-8" import="dvavago.Country" %>
<html>
<head>
    <meta name="layout" content="main"/>
    <title>Справочник стран</title>
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
            <a href="${createLink(uri: '/hotel/index')}" class="btn btn-outline-light text-light">
                Справочник отелей
            </a>
        </li>
        <li class="nav-item">
            <g:link class="btn btn-outline-light text-light" action="create" controller="country">
                Создать страну
            </g:link>
        </li>
    </ul>
</div>

<div class="row mt-5">
    <p class="h3 text-white">Справочник стран</p>
    <table class="table table-hover table-striped">
        <thead>
        <tr class="bg-white">
            <g:sortableColumn property="name" title="Название"/>
            <g:sortableColumn property="capital" title="Столица"/>
            <th>Действия</th>
        </tr>
        </thead>
        <tbody class="bg-white">
        <g:each in="${Country.getAll()}" var="country">
            <tr>
                <td>${country.name}</td>
                <td>${country.capital}</td>
                <td class="d-inline-flex">
                    <g:form resource="${country}" action="edit" class="mr-1">
                        <button type="submit" class="btn btn-outline-dark">
                            Редактировать
                        </button>
                    </g:form>
                    <g:form resource="${country}" method="DELETE">
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