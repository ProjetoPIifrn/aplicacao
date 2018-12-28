<!DOCTYPE html>
<html>
    <head>
        <meta name="layout" content="main" />
        <g:set var="entityName" value="${message(code: 'admLab.label', default: 'AdmLab')}" />
        <title><g:message code="default.list.label" args="[entityName]" /></title>


        <style>
        #super {
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
    <a href="/admLab/create"><button id= "super">Criar adm</button></a>
    <a href="/lab/create"><button id= "super">Criar lab</button></a>
    <a href="/supervisorLab/create"><button id= "super">Criar sup</button></a>


        <div style="border-style: solid; height: 78vh; padding: 30px">

            <g:render template="adm" model="adms:adms"></g:render>
            <a href="/alunos/index"><button id= "super">Listar Aluno</button></a>
            <a href="/supervisorLab/index"><button id= "super">Listar Sup</button></a>
            <a href="/admLab/index"><button id= "super">Listar Adm</button></a>

        </div>

    </body>


</html>