<table style="width:100%">
    <tr>
        <th>Nome</th>
        <th>Matrícula</th>
        <th>Turma</th>
        <th>Turno</th>
        <th>Data</th>
    </tr>
    <g:if test="${alu.size() > 0}">
        <g:each in="${alu}" var="alunos">
            <tr>
                <td>${alunos.nome}</td>
                <td>${alunos.matricula}</td>
                <td>${alunos.turma}</td>
                <td>${alunos.turno}</td>
                <td>${alunos.data}</td>

            </tr>
        </g:each>
    </g:if>
    <g:else>
        <script>
            alert("Não existem alunos")
        </script>
    </g:else>


</table>
