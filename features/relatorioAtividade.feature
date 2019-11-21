# language: pt
Funcionalidade: Relatório das atividades
    O monitor pode accesar seus relatorios de atividades e os professores podem acessar os relatórios de atividades de todos os monitores

Cenário de Fundo:
    ado que o banco possui uma disciplina
    E que o banco possui uma turma cadastrada
    E que o banco possui uma monitoria
    E que o banco possui uma atividade registrada
    E que o "monitor" está logado
    E que eu estou na página de acesso aos relatórios das atividades
    Quando eu clico em "Visualizar relatório"
    Então eu devo estar na página do relatório da atividade

Cenario: Monitor visualiza todos os relatorios (Happy Path)
    Quando o monitor visualiza o relatorio
        |Título            |Dia          |Horário de início e término|
        |Aula de Revisão   |21/11/2019   |12:15 às 13:50a            |
        |Revisão de Provas |26/11/2019   |12:15 às 13:50             |
    
    E quando ele clica em registro especifico 
    Entao o monitor deve estar na pagina do registro selecionado
    E o monitor deve ver as informacoes completas do registro
    E ele pode editar ou excluir o registro de atividade
    
Cenario: Professor pode visualizar o relatorio especifico (Happy Path)
    Quando professor escolhe um relatorio especifico para visualizar
    Entao  professor visualiza o relatorio do monitor 
        |Título            |Dia          |Horário de início e término|
        |Aula de Revisão   |21/11/2019   |12:15 às 13:50a            |
        |Revisão de Provas |26/11/2019   |12:15 às 13:50             |
    
Cenario: Professor seleciona um relatorio especifico (Sad Path)
    Quando professor escolhe um relatorio inexistente do monitor 
    E o professor aperta em visualizar
    Entao o professor deve ficar na mesma pagina 
    E deve aparecer uma mensagem de erro falando que nao existe o relatorio 