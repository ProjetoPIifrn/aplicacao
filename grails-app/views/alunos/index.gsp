<!DOCTYPE html>
<html>
    <head>
        <meta name="layout" content="main" />
        <g:set var="entityName" value="${message(code: 'alunos.label', default: 'Alunos')}" />
        <title><g:message code="default.list.label" args="[entityName]" /></title>
    </head>

    <body>
     <style>
        #list-alunos {
           height: 300px;

            }
            body{
            background-color: #696969;

             }
             h3 {
                font-color: white;
                font-family: verdana;
             }

                     </style>

       <font color="white"> <h3> <font size="30">Lista de alunos</font></h3></font>  </br>






    <div style="border-style: solid; height: 78vh; padding: 30px; font-color: white">

        <g:render template="alunos" model="alu:alu"></g:render>

    </div>

    </body>
</html>