<%@ page contentType="text/html;charset=UTF-8" %>
<html>
<head>
    <meta name="layout" content="main"/>
    <title>Список стран</title>
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
            <g:link class="btn btn-outline-light text-light" action="create">
                Создать
            </g:link>
        </li>
    </ul>
</div>

<div class="row mt-5">
    <p class="h3 text-white">Список стран</p>
    <table class="table table-hover table-striped">
        <thead>
        <tr class="bg-white">
            <g:sortableColumn property="name" title="Название"/>
            <g:sortableColumn property="capital" title="Столица"/>
            <th>Действия</th>
        </tr>
        </thead>
        <tbody class="bg-white">
        <g:each in="${countryList}" var="country">
            <tr>
                <td>${country.name}</td>
                <td>${country.capital}</td>
                <td class="d-inline-flex">
                    <g:form resource="${country}" action="edit" class="mr-1">
                        <button type="submit" class="btn btn-outline-dark">
                            <%--TODO: Add icon--%>
                            Редактировать
                        </button>
                    </g:form>
                    <g:form resource="${country}" method="DELETE">
                        <button type="submit" class="btn btn-outline-dark">
                            <%--TODO: Add icon--%>
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