<!DOCTYPE html>
<html>
    <head>
        <meta name="layout" content="main" />
        <g:set var="entityName" value="${message(code: 'lab.label', default: 'Lab')}" />
        <title><g:message code="default.create.label" args="[entityName]" /></title>
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
    #zz{
        background-color: white;
    }
    h4{
        font-color: white;
        align: "Center";
    }

    </style>


    <font color="white"> <h3> <font size="24">Criar novo administrador de laboratório</font></h3></font>  </br>
    <div id="zz">
        <a href="#create-lab" class="skip" tabindex="-1"><g:message code="default.link.skip.label" default="Skip to content&hellip;"/></a>
        <div class="nav" role="navigation">
            <ul>
                <li><g:link class="list" action="index"><g:message code="default.list.label" args="[entityName]" /></g:link></li>
            </ul>
        </div>
        <div id="create-lab" class="content scaffold-create" role="main">
            <g:if test="${flash.message}">
            <div class="message" role="status">${flash.message}</div>
            </g:if>
            <g:hasErrors bean="${this.lab}">
            <ul class="errors" role="alert">
                <g:eachError bean="${this.lab}" var="error">
                <li <g:if test="${error in org.springframework.validation.FieldError}">data-field-id="${error.field}"</g:if>><g:message error="${error}"/></li>
                </g:eachError>
            </ul>
            </g:hasErrors>
            <g:form resource="${this.lab}" method="POST">
                <fieldset class="form">
                    <f:all bean="lab"/>
                </fieldset>
                <fieldset class="buttons">
                    <g:submitButton name="create" class="save" value="${message(code: 'default.button.create.label', default: 'Create')}" />
                </fieldset>
            </g:form>
        </div>
    </body>
</html>
