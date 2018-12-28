<table style="width:100%">
    <tr>
        <th>Nome</th>
        <th>Número</th>
        <th>supervisor</th>
    </tr>
    <g:if test="${labo.size() > 0}">
        <g:each in="${labo}" var="lab">
            <tr>
                <td>${lab.nome}</td>
                <td>${lab.num}</td>
                <td>${lab.supervisorLab.value}</td>

            </tr>
        </g:each>
    </g:if>
    <g:else>
        <script>
            alert("Não existem laboratórios cadastrados")
        </script>
    </g:else>


</table>
