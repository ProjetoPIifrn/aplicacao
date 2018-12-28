<!DOCTYPE html>
<html>
    <head>
        <meta name="layout" content="main" />
        <g:set var="entityName" value="${message(code: 'supervisorLab.label', default: 'SupervisorLab')}" />
        <title><g:message code="default.list.label" args="[entityName]" /></title>
        <style>
        {
            height: 300px;

        }
        #visor {
            margin:10px;
            width: 120px;
            height: 50px;
            font-family: verdana;
            background-color: green;
        }
        body{
            height: -350px;
            background-color: #696969;

        }
        h3 {

            font-family: verdana;
        }
        #ze{
            background-color: white;
        }
        h4{
            font-color: white;
            align: "Center";
        }

        </style>

    </head>

    <body>
    <font color="white"> <h3> <font size="30">Lista de supervisores</font></h3></font>  </br>



    </div>
        <div id="list-supervisorLab" class="content scaffold-list" role="main">
            <g:if test="${flash.message}">

                <div class="message" role="status">${flash.message}</div>
            </g:if>
            <f:table collection="${supervisorLabList}" />

            <div class="">
                <g:paginate total="${supervisorLabCount ?: 0}" />
            </div>
        </div>
    <div style="border-style: solid; height: 78vh; padding: 30px">

        <g:render template="supervisor" model="sup:sup"></g:render>
        <a href="/alunos/index"><button id= "visor">Listar aluno</button></a>

    </div>

    </body>
</html>