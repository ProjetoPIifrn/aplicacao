<!DOCTYPE html>
<html>
    <head>
        <meta name="layout" content="main" />
        <g:set var="entityName" value="${message(code: 'lab.label', default: 'Lab')}" />
        <title><g:message code="default.list.label" args="[entityName]" /></title>
        <style>
         {
            height: 300px;

        }
         #lab {
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




    <div style="border-style: solid; height: 78vh; padding: 30px; font-color: white">

        <g:render template="lab" model="labo:labo"></g:render>
        <a href="/lab/create"><button id= "lab">Adcionar lab</button></a>
        <a href=""><button id= "lab">Remover</button></a>


    </div>
    </body>
</html>