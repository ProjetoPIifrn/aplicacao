<!DOCTYPE html>
<html>
    <head>
        <meta name="layout" content="main" />
        <g:set var="entityName" value="${message(code: 'lab.label', default: 'Lab')}" />
        <title><g:message code="default.show.label" args="[entityName]" /></title>
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
        #gogo{
            background-color: white;
        }
        h4{
            font-color: white;
            align: "Center";
        }

        </style>
    </head>
        <body>
<font color="white"> <h3> <font size="24">Ver lab</font></h3></font>  </br>
<div id="gogo">

    <a href="#show-lab" class="skip" tabindex="-1"><g:message code="default.link.skip.label" default="Skip to content&hellip;"/></a>
        <div class="nav" role="navigation">
            <ul>
                <li><g:link class="list" action="index"><g:message code="default.list.label" args="[entityName]" /></g:link></li>
                <li><g:link class="create" action="create"><g:message code="default.new.label" args="[entityName]" /></g:link></li>
            </ul>
        </div>
        <div id="show-lab" class="content scaffold-show" role="main">
            <h1><g:message code="default.show.label" args="[entityName]" /></h1>
            <g:if test="${flash.message}">
            <div class="message" role="status">${flash.message}</div>
            </g:if>
            <f:display bean="lab" />
            <g:form resource="${this.lab}" method="DELETE">
                <fieldset class="buttons">
                    <g:link class="edit" action="edit" resource="${this.lab}"><g:message code="default.button.edit.label" default="Edit" /></g:link>
                    <input class="delete" type="submit" value="${message(code: 'default.button.delete.label', default: 'Delete')}" onclick="return confirm('${message(code: 'default.button.delete.confirm.message', default: 'Are you sure?')}');" />
                </fieldset>
            </g:form>
        </div>
    </body>
</html>
