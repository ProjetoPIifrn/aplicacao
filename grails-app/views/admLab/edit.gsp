<!DOCTYPE html>
<html>
    <head>
        <meta name="layout" content="main" />
        <g:set var="entityName" value="${message(code: 'admLab.label', default: 'AdmLab')}" />
        <title><g:message code="default.edit.label" args="[entityName]" /></title>
    </head>
    <body>
    <style>
    #show-alunos {
        height: 300px;

    }
    body{
        height: -350px;
        background-color: #696969;

    }
    h3 {

        font-family: verdana;
    }
    #pancreas{
        background-color: white;
    }
    h4{
        font-color: white;
        align: "Center";
    }

    </style>


    <font color="white"> <h3> <font size="24">Ver administrador de laboratório</font></h3></font>  </br>
    <div id="pancreas">
        <a href="#edit-admLab" class="skip" tabindex="-1"><g:message code="default.link.skip.label" default="Skip to content&hellip;"/></a>
        <div class="nav" role="navigation">
            <ul>
                <li><a class="home" href="${createLink(uri: '/')}"><g:message code="default.home.label"/></a></li>
                <li><g:link class="list" action="index"><g:message code="default.list.label" args="[entityName]" /></g:link></li>
                <li><g:link class="create" action="create"><g:message code="default.new.label" args="[entityName]" /></g:link></li>
            </ul>
        </div>
        <div id="edit-admLab" class="content scaffold-edit" role="main">
            <h1><g:message code="default.edit.label" args="[entityName]" /></h1>
            <g:if test="${flash.message}">
            <div class="message" role="status">${flash.message}</div>
            </g:if>
            <g:hasErrors bean="${this.admLab}">
            <ul class="errors" role="alert">
                <g:eachError bean="${this.admLab}" var="error">
                <li <g:if test="${error in org.springframework.validation.FieldError}">data-field-id="${error.field}"</g:if>><g:message error="${error}"/></li>
                </g:eachError>
            </ul>
            </g:hasErrors>
            <g:form resource="${this.admLab}" method="PUT">
                <g:hiddenField name="version" value="${this.admLab?.version}" />
                <fieldset class="form">
                    <f:all bean="admLab"/>
                </fieldset>
                <fieldset class="buttons">
                    <input class="save" type="submit" value="${message(code: 'default.button.update.label', default: 'Update')}" />
                </fieldset>
            </g:form>
        </div>
    </body>
</html>
