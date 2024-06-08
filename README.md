# Bd_Univ

# Descrição do Código SQL

O código fornecido é um script SQL que cria tabelas para armazenar informações sobre áreas de estudo, cursos, alunos e matrículas, juntamente com procedimentos e funções para gerenciar os dados nessas tabelas. Primeiramente são criadas tabelas de áreas, cursos, alunos e matrículas, além de uma tabela temporária para armazenamento de nomes. Em seguida, ele preenche a tabela temporária com nomes de amostra. A seguir, define um procedimento para inserir alunos utilizando os dados da tabela temporária. Depois disso, insere áreas adicionais e cursos pré-definidos através de procedimentos. Por fim, define um procedimento para inserção de um único curso e outro procedimento para matrícula de um aluno em um curso. A última parte do script insere um novo curso no banco de dados e matricula um aluno nesse curso.

## Arquivos SQL

- `Banco de dados`: Este arquivo contém as instruções em SQL.
  
## Tabelas Criadas

Tabela "areas": Esta tabela armazena informações sobre as áreas de estudo disponíveis, como Ciências Humanas, Ciências Exatas, Saúde e Negócios. Cada área é identificada por um ID único e possui um nome descritivo.

Tabela "cursos": Nesta tabela são registrados os cursos oferecidos dentro de cada área de estudo. Cada curso tem um ID único, um nome descritivo e uma referência ao ID da área à qual pertence.

Tabela "alunos": Aqui são registrados os dados dos alunos matriculados nos cursos. Cada aluno tem um ID único, um nome, um sobrenome e um endereço de e-mail único.

Tabela "matriculas": Esta tabela registra as matrículas dos alunos nos cursos. Cada matrícula é identificada por um ID único e contém referências aos IDs do aluno e do curso correspondentes. Também garante que um aluno não possa se matricular no mesmo curso mais de uma vez.

Tabela temporária "temp_nomes": É uma tabela temporária utilizada apenas durante a execução de determinadas operações. Neste caso, ela armazena temporariamente uma lista de nomes e sobrenomes que são posteriormente inseridos na tabela de alunos.

#MODELO LÓGICO SIMPLIFICADO
![image](https://github.com/WesleyAndrade0/Bd_Univ/assets/167809767/a46d5c8a-9788-4b53-9100-281d54db3a49)
