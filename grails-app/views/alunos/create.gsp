<!DOCTYPE html>
<html>
    <head>
        <meta name="layout" content="main" />
        <g:set var="entityName" value="${message(code: 'alunos.label', default: 'Alunos')}" />
        <title><g:message code="default.create.label" args="[entityName]" /></title>
    </head>
    <body>
     <style>
            #create-alunos {
               height: 300px;

                }
                body{
                height: -350px;
                background-color: #696969;

                 }
                 h3 {

                    font-family: verdana;
                 }
                 #formula{
                     background-color: white;
                 }
                 h4{
                    font-color: white;
                    align: "Center";
                 }

                         </style>

           <font color="white"> <h3> <font size="30">Registrar uso</font></h3></font>  </br>

                        <ul align="left">

            <g:if test="${flash.message}">
            <div class="message" role="status">${flash.message}</div>
            </g:if>
            <g:hasErrors bean="${this.alunos}">
            <ul class="errors" role="alert">
                <g:eachError bean="${this.alunos}" var="error">
                <li <g:if test="${error in org.springframework.validation.FieldError}">data-field-id="${error.field}"</g:if>><g:message error="${error}"/></li>
                </g:eachError>
            </ul>e
            </g:hasErrors>
            <g:form resource="${this.alunos}" method="POST">
                <div id="formula">
                <fieldset class="form">
                                    <f:all bean="alunos"/>

                                </fieldset>
                                </div>
                                </br>
                  <h4>
                    <g:submitButton  name="create" class="save" value="${message(code: 'default.button.create.label', default: 'Create')}" />

                  </h4>

            </g:form>
            </br>
            </br>
            </br>
            </br>
            </br>
            </br>
            </br>
            </br>


        </div>
                                </ul >



    </body>
</html>
