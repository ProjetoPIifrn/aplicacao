<table style="width:100%">
    <tr>
        <th>Nome</th>
        <th>Matricula</th>
        <th>Setor</th>
    </tr>
    <g:if test="${adms.size() > 0}">
        <g:each in="${adms}" var="adm">
            <tr>
                <td>${adm.nome}</td>
                <td>${adm.matricula}</td>
                <td>${adm.setor}</td>

            </tr>
        </g:each>
    </g:if>
    <g:else>
        <script>
            alert("Não há admiministradores.")
        </script>
    </g:else>


</table>
