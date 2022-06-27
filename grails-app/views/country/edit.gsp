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
            <g:link class="btn btn-outline-light text-light" action="index">
                Назад
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
                    <f:input property="name"
                             class="form-control"
                             id="nameInput"
                             pattern="[A-Za-zА-Яа-яЁё ]{,255}"
                             title="Значение поля не должно превышать 255 символов!"/>
                    <g:hasErrors>
                        <ul>
                            <g:eachError var="err" field="name">
                                <li class="list-unstyled">
                                    <small class="text-danger">
                                        <g:message error="${err}"/>
                                    </small>
                                </li>
                            </g:eachError>
                        </ul>
                    </g:hasErrors>
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
