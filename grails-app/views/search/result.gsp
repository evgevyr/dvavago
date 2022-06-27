<%@ page contentType="text/html;charset=UTF-8" %>
<!DOCTYPE html>
<html>
<head>
    <meta name="layout" content="main"/>
    <title>Результаты поиска</title>
</head>

<body>
<div class="row mt-5">
    <ul class="nav nav-pills">
        <li class="nav-item">
            <a href="${createLink(uri: '/')}" class="btn btn-outline-light text-light">
                Новый поиск
            </a>
        </li>
        <li class="nav-item">
            <a href="${createLink(uri: '/countries')}" class="btn btn-outline-light text-light">
                Список стран
            </a>
        </li>
        <li class="nav-item">
            <a href="${createLink(uri: '/hotels')}" class="btn btn-outline-light text-light">
                Список отелей
            </a>
        </li>
    </ul>
</div>

<div class="row mt-5">
    <g:if test="${hotelList == null}">
        <p class="h3 text-white">По вашему запросу ничего не найдено</p>
    </g:if>
    <g:else>
        <p class="h3 text-white">Найдено отелей: ${hotelList.size()}</p>
    </g:else>
    <table class="table table-hover table-striped">
        <thead>
        <tr class="bg-white">
            <th>Название</th>
            <th>Звездность</th>
        </tr>
        </thead>
        <tbody class="bg-white">
        <g:each in="${hotelList}" var="hotel">
            <tr>
                <td>
                    ${hotel.name}
                    <g:if test="${hotel.link != null}">
                        <br>
                        <g:link url="${hotel.link}" target="_blank">Перейти на сайт</g:link>
                    </g:if>
                </td>
                <td>${hotel.stars}</td>
            </tr>
        </g:each>
        </tbody>
        <tfoot
    </table>
</div>
</body>
</html>