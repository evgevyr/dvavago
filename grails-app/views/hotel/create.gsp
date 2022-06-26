<%@ page import="dvavago.Country" %>
<!DOCTYPE html>
<html>
<head>
    <meta name="layout" content="main"/>
    <title>Создание отеля</title>
</head>

<body>
<div class="row h-25"></div>

<div class="row justify-content-center align-items-center mb-3">
    <ul class="nav nav-pills">
        <li class="nav-item">
            <a href="${createLink(uri: '/')}" class="btn btn-outline-light text-light">
                Поиск
            </a>
        </li>
        <li class="nav-item">
            <g:link class="btn btn-outline-light text-light" action="index">
                Список отелей
            </g:link>
        </li>
    </ul>
</div>

<div class="row justify-content-center align-items-center">
    <div class="dimmed-window col-3">
        <p class="h4 text-white text-center mt-3">Создание отеля</p>
        <g:form resource="${this.hotel}" method="POST">
            <f:with bean="${this.hotel}">
                <div class="form-group">
                    <label class="text-white" for="nameInput">Название</label>
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
                    <label class="text-white" for="countryInput">Страна</label>
                    <g:select class="form-control"
                              id="countryInput"
                              name="country.id"
                              optionValue="name"
                              optionKey="id"
                              from="${Country.getAll()}"/>
                    <g:hasErrors>
                        <ul>
                            <g:eachError var="err" field="country">
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
                    <label class="text-white" for="starsInput">Звезд</label>
                    <f:input property="stars" id="starsInput" class="form-control"/>
                    <g:hasErrors>
                        <ul>
                            <g:eachError var="err" field="stars">
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
                    <label class="text-white" for="linkInput">Ссылка</label>
                    <f:input property="link"
                             id="linkInput"
                             class="form-control"/>
                    <g:hasErrors>
                        <ul>
                            <g:eachError var="err" field="link">
                                <li class="list-unstyled">
                                    <small class="text-danger">
                                        <g:message error="${err}"/>
                                    </small>
                                </li>
                            </g:eachError>
                        </ul>
                    </g:hasErrors>
                </div>

                <div class="row align-items-center justify-content-center">
                    <button type="submit" class="btn btn-outline-light mb-3">
                        Создать
                    </button>
                </div>
            </f:with>
        </g:form>
    </div>
</div>
</body>
</html>
