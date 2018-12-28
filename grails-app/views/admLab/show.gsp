<!DOCTYPE html>
<html>
<head>
    <meta name="layout" content="main"/>
    <g:set var="entityName" value="${message(code: 'admLab.label', default: 'AdmLab')}"/>
    <title><g:message code="default.show.label" args="[entityName]"/></title>
    <font color="white"><h3><font size="24">Ver administrador de laboratório</font></h3></font>

    <style>

    body {
        height: -350px;
        background-color: #696969;

    }

    h3 {

        font-family: verdana;
    }

    #Karl {
        background-color: white;
    }

    h4 {
        font-color: white;
        align: "Center";
    }

    </style>
</head>
<body>
<content tag="nav">
    <li><g:link class="list" action="index"><g:message code="default.list.label"args="[entityName]"/></g:link></li>
    <li><g:link class="create" action="create"><g:message code="default.new.label"args="[entityName]"/></g:link></li>
    <g:link class="edit" action="edit" resource="${this.admLab}"><g:message code="default.button.edit.label"default="Edit"/></g:link>
    <input class="delete" type="submit"
           value="${message(code: 'default.button.delete.label', default: 'Delete')}"
           onclick="return confirm('${message(code: 'default.button.delete.confirm.message', default: 'Are you sure?')}');"/>
</content>
<font color="white"><h3><font size="24">Ver administrador de laboratório</font></h3></font>  </br>
    <div id="Karl">

        <a href="#show-admLab" class="skip" tabindex="-1"><g:message code="default.link.skip.label"
                                                                     default="Skip to content&hellip;"/></a>


        <div id="show-admLab" class="content scaffold-show" role="main">
            <g:if test="${flash.message}">
                <div class="message" role="status">${flash.message}</div>
            </g:if>
            <f:display bean="admLab"/>
            <g:form resource="${this.admLab}" method="DELETE">
                <fieldset class="buttons">
                    <g:link class="edit" action="edit" resource="${this.admLab}"><g:message code="default.button.edit.label"
                                                                                            default="Edit"/></g:link>
                    <input class="delete" type="submit"
                           value="${message(code: 'default.button.delete.label', default: 'Delete')}"
                           onclick="return confirm('${message(code: 'default.button.delete.confirm.message', default: 'Are you sure?')}');"/>
                </fieldset>
            </g:form>
        </div>
    </div>


</body>
</html>
