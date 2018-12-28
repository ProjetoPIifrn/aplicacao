<table style="width:100%">
    <tr>
        <th>Nome</th>
        <th>Matricula</th>
        <th>Turma</th>
        <th>Laboratório/sala</th>

    </tr>
    <g:if test="${sup.size() > 0}">
        <g:each in="${sup}" var="supervisor">
            <tr>
                <td>${supervisor.nome}</td>
                <td>${supervisor.matricula}</td>
                <td>${supervisor.turma}</td>
                <td>${supervisor.lab}</td>

            </tr>
        </g:each>
    </g:if>
    <g:else>
        <script>
            alert("Não existem supervisores cadastrados")
        </script>
    </g:else>


</table>
