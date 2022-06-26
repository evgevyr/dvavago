<!DOCTYPE html>
<html>
<head>
    <meta name="layout" content="main"/>
    <title>Редактирование страны</title>
</head>

<body>
<div class="row h-25"></div>

<div class="row justify-content-center align-items-center mb-3">
    <ul class="nav nav-pills">
        <li class="nav-item">
            <a href="${createLink(uri: '/')}" class="btn btn-outline-light text-light">
                <svg xmlns="http://www.w3.org/2000/svg" width="16" height="16" fill="currentColor" class="bi bi-search"
                     viewBox="0 0 16 16">
                    <path d="M11.742 10.344a6.5 6.5 0 1 0-1.397 1.398h-.001c.03.04.062.078.098.115l3.85 3.85a1 1 0 0 0 1.415-1.414l-3.85-3.85a1.007 1.007 0 0 0-.115-.1zM12 6.5a5.5 5.5 0 1 1-11 0 5.5 5.5 0 0 1 11 0z"/>
                </svg>
                Поиск
            </a>
        </li>
        <li class="nav-item">
            <g:link class="btn btn-outline-light text-light" action="index">
                Список стран
            </g:link>
        </li>
    </ul>
</div>

<div class="row justify-content-center align-items-center">
    <div class="dimmed-window col-3">
        <p class="h4 text-white text-center mt-3">Редактирование страны</p>
        <g:form resource="${this.country}" method="PUT">
            <f:with bean="${this.country}">
                <div class="form-group">
                    <label class="text-white" for="nameInput">Страна</label>
                    <f:input property="name" class="form-control" id="nameInput"/>
                </div>

                <div class="form-group">
                    <label class="text-white" for="capitalInput">Столица</label>
                    <f:input property="capital" class="form-control" id="capitalInput"/>
                </div>

                <div class="row align-items-center justify-content-center">
                    <button type="submit" class="btn btn-outline-light mb-3">
                        Сохранить
                    </button>
                </div>
            </f:with>
        </g:form>
    </div>
</div>
</body>
</html>
