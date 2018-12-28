<!DOCTYPE html>
<html>
    <head>
        <meta name="layout" content="main" />
        <g:set var="entityName" value="${message(code: 'supervisorLab.label', default: 'SupervisorLab')}" />
        <title><g:message code="default.show.label" args="[entityName]" /></title>
    </head>

    <body>
    <style>

    body {
        height: -350px;
        background-color: #696969;

    }

    h3 {

        font-family: verdana;
    }

    #oioi {
        background-color: white;
    }

    h4 {
        font-color: white;
        align: "Center";
    }

    </style>

    <font color="white"><h3><font size="24">Ver administrador de laboratório</font></h3></font>  </br>
    <div id="oioi">

        <a href="#show-supervisorLab" class="skip" tabindex="-1"><g:message code="default.link.skip.label" default="Skip to content&hellip;"/></a>
        <div class="nav" role="navigation">

        </div>
        <div id="show-supervisorLab" class="content scaffold-show" role="main">
            <h1><g:message code="default.show.label" args="[entityName]" /></h1>
            <g:if test="${flash.message}">
            <div class="message" role="status">${flash.message}</div>
            </g:if>
            <f:display bean="supervisorLab" />
            <g:form resource="${this.supervisorLab}" method="DELETE">
                <fieldset class="buttons">
                    <g:link class="edit" action="edit" resource="${this.supervisorLab}"><g:message code="default.button.edit.label" default="Edit" /></g:link>
                    <input class="delete" type="submit" value="${message(code: 'default.button.delete.label', default: 'Delete')}" onclick="return confirm('${message(code: 'default.button.delete.confirm.message', default: 'Are you sure?')}');" />
                </fieldset>
            </g:form>
        </div>
    </body>
</html>
