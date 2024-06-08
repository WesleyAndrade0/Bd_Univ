-- Criar tabelas principais
CREATE TABLE IF NOT EXISTS areas (
    id INT AUTO_INCREMENT PRIMARY KEY,
    nome VARCHAR(200) NOT NULL
);

CREATE TABLE IF NOT EXISTS cursos (
    id INT AUTO_INCREMENT PRIMARY KEY,
    nome VARCHAR(200) NOT NULL,
    area_id INT,
    FOREIGN KEY (area_id) REFERENCES areas (id)
);

CREATE TABLE IF NOT EXISTS alunos (
    id INT AUTO_INCREMENT PRIMARY KEY,
    nome VARCHAR(200) NOT NULL,
    sobrenome VARCHAR(200) NOT NULL,
    email VARCHAR(220) NOT NULL UNIQUE
);

CREATE TABLE IF NOT EXISTS matriculas (
    id INT AUTO_INCREMENT PRIMARY KEY,
    aluno_id INT,
    curso_id INT,
    FOREIGN KEY (aluno_id) REFERENCES alunos (id),
    FOREIGN KEY (curso_id) REFERENCES cursos (id),
    UNIQUE (aluno_id, curso_id)
);

-- Criar tabela temporária para nomes
CREATE TEMPORARY TABLE IF NOT EXISTS temp_nomes (
    id INT AUTO_INCREMENT PRIMARY KEY,
    nome VARCHAR(200),
    sobrenome VARCHAR(200)
);

-- Inserir dados na tabela temporária
INSERT INTO temp_nomes (nome, sobrenome) VALUES
('Ana', 'Silva'), ('Bruno', 'Souza'), ('Carlos', 'Oliveira'), ('Daniela', 'Santos'),
('Eduardo', 'Pereira'), ('Fernanda', 'Lima'), ('Gustavo', 'Carvalho'), ('Helena', 'Ribeiro'),
('Igor', 'Almeida'), ('Juliana', 'Costa'), ('Kleber', 'Gomes'), ('Larissa', 'Martins'),
('Marcos', 'Araújo'), ('Natalia', 'Melo'), ('Otavio', 'Barbosa'), ('Patricia', 'Rocha'),
('Rafael', 'Dias'), ('Simone', 'Nogueira'), ('Thiago', 'Campos'), ('Valeria', 'Cardoso'),
('Wagner', 'Teixeira'), ('Xavier', 'Fernandes'), ('Yara', 'Monteiro'), ('Zeca', 'Correia'),
('Alice', 'Gonçalves'), ('Bernardo', 'Vieira'), ('Clara', 'Freitas'), ('Diego', 'Rodrigues'),
('Elisa', 'Alves'), ('Fabio', 'Moreira'), ('Gabriela', 'Moura'), ('Henrique', 'Castro'),
('Isabela', 'Farias'), ('João', 'Ferreira'), ('Karen', 'Lopes'), ('Lucas', 'Machado'),
('Marina', 'Borges'), ('Nicolas', 'Cavalcanti'), ('Olivia', 'Pinto'), ('Pedro', 'Santana'),
('Quintino', 'Duarte'), ('Renata', 'Barros'), ('Samuel', 'Morais'), ('Tais', 'Ramos'),
('Ulisses', 'Reis'), ('Vera', 'Braga'), ('Willian', 'Cunha'), ('Ximena', 'Azevedo'),
('Yuri', 'Macedo'), ('Zuleica', 'Siqueira'), ('Alfredo', 'Rossi'), ('Beatriz', 'Aguiar'),
('Camila', 'Viana'), ('Domingos', 'Miranda'), ('Estela', 'Vasconcelos'), ('Fernando', 'Assis'),
('Graziella', 'Branco'), ('Heitor', 'Campos'), ('Irene', 'Cavalcante'), ('Julio', 'Chagas'),
('Kelly', 'Coelho'), ('Livia', 'Cordeiro'), ('Mateus', 'Correa'), ('Norma', 'Cruz'),
('Oscar', 'Figueiredo'), ('Paulo', 'Goulart'), ('Raquel', 'Guimaraes'), ('Sergio', 'Lacerda'),
('Tatiana', 'Matos'), ('Vicente', 'Moraes'), ('Waleska', 'Neves'), ('Xuxa', 'Nunes'),
('Yasmin', 'Peixoto'), ('Ziraldo', 'Pires'), ('Adriana', 'Queiroz'), ('Breno', 'Resende'),
('Cecilia', 'Rezende'), ('Davi', 'Rios'), ('Eliana', 'Sales'), ('Felipe', 'Santiago'),
('Giovana', 'Serra'), ('Hugo', 'Sousa'), ('Ivana', 'Tavares'), ('Jonas', 'Torres'),
('Karina', 'Vaz'), ('Leonardo', 'Xavier'), ('Melissa', 'Amorim'), ('Nair', 'Aragao'),
('Otto', 'Barreto'), ('Paula', 'Bezerra'), ('Roberto', 'Brito'), ('Sara', 'Camargo'),
('Tulio', 'Canuto'), ('Vitor', 'Carmo'), ('Walter', 'Chaves'), ('Xander', 'Couto'),
('Yuri', 'Dantas'), ('Zenaide', 'Duarte'), ('Amelia', 'Evangelista'), ('Bianca', 'Falcao'),
('Cristiano', 'Faro'), ('Denise', 'Ferraz'), ('Erick', 'Fiorentino'), ('Fernanda', 'Franco'),
('Geraldo', 'Garcia'), ('Helga', 'Godoy'), ('Ian', 'Henrique'), ('Janaina', 'Henriques'),
('Luan', 'Jardim'), ('Marcela', 'Lacerda'), ('Nelson', 'Lemos'), ('Odete', 'Lessa'),
('Patricio', 'Lima'), ('Rebeca', 'Linhares'), ('Silvio', 'Lins'), ('Tereza', 'Magalhaes'),
('Ursula', 'Maldonado'), ('Vinicius', 'Marques'), ('Waldir', 'Martins'), ('Xander', 'Mascarenhas'),
('Yago', 'Matos'), ('Zilda', 'Medeiros'), ('Alex', 'Meireles'), ('Barbara', 'Mello'),
('Claudio', 'Mendes'), ('Doroteia', 'Menezes'), ('Eduarda', 'Mesquita'), ('Fabiana', 'Moraes'),
('George', 'Muniz'), ('Heloisa', 'Nery'), ('Ines', 'Novaes'), ('Jorge', 'Nunes'),
('Larissa', 'Pacheco'), ('Milena', 'Paredes'), ('Noemi', 'Paz'), ('Olavo', 'Pedrosa'),
('Priscila', 'Pena'), ('Reginaldo', 'Penha'), ('Sebastiana', 'Peres'), ('Teodoro', 'Pimenta'),
('Valdemar', 'Pinho'), ('Wanda', 'Pontes'), ('Ximena', 'Porto'), ('Yasmin', 'Prado'),
('Zeus', 'Queiroga'), ('Anelise', 'Quintana'), ('Beto', 'Ramalho'), ('Clarice', 'Rego'),
('Diego', 'Rezende'), ('Eliana', 'Ribeiro'), ('Fernando', 'Rodrigues'), ('Gisele', 'Salles'),
('Humberto', 'Sampaio'), ('Ivone', 'Saraiva'), ('Joaquim', 'Seabra'), ('Katia', 'Serpa'),
('Luiz', 'Siqueira'), ('Manuela', 'Soares'), ('Neusa', 'Souza'), ('Orlando', 'Tavares'),
('Paloma', 'Teixeira'), ('Rodrigo', 'Torres'), ('Susana', 'Vaz'), ('Tonico', 'Xavier'),
('Ulisses', 'Amorim'), ('Vitória', 'Aragao'), ('Washington', 'Barreto'), ('Xuxa', 'Bezerra'),
('Yara', 'Brito'), ('Zoraide', 'Camargo'), ('Aline', 'Canuto'), ('Bruna', 'Carmo'),
('Cristina', 'Chaves'), ('David', 'Couto'), ('Elias', 'Dantas'), ('Francisco', 'Duarte'),
('Gina', 'Evangelista'), ('Horacio', 'Falcao'), ('Isis', 'Faro'), ('Juliano', 'Ferraz'),
('Kleber', 'Fiorentino'), ('Lara', 'Franco'), ('Matheus', 'Garcia'), ('Nina', 'Godoy'),
('Omar', 'Henrique'), ('Pedro', 'Henriques'), ('Renan', 'Jardim'), ('Sabrina', 'Lacerda'),
('Thales', 'Lemos'), ('Valentim', 'Lessa');

DELIMITER //

-- Procedure para inserir alunos
DROP PROCEDURE IF EXISTS InserirAlunos;

CREATE PROCEDURE InserirAlunos()
BEGIN
    DECLARE i INT DEFAULT 1;
    DECLARE total INT;
    DECLARE nome VARCHAR(200);
    DECLARE sobrenome VARCHAR(200);
    DECLARE email VARCHAR(200);

    -- Obter o total de registros na tabela temporária
    SELECT COUNT(*) INTO total FROM temp_nomes;

    WHILE i <= total DO
        -- Selecionar nome e sobrenome da tabela temporária
        SELECT nome, sobrenome INTO nome, sobrenome FROM temp_nomes WHERE id = i;

        -- Gerar o email
        SET email = CONCAT(nome, '.', sobrenome, '@dominio.com');

        -- Inserir na tabela alunos
        INSERT INTO alunos (nome, sobrenome, email) VALUES (nome, sobrenome, email);

        -- Incrementar o contador
        SET i = i + 1;
    END WHILE;
END //

DELIMITER ;

-- Chamar a procedure para inserir alunos
CALL InserirAlunos();

-- Inserir áreas adicionais
INSERT INTO areas (nome) VALUES ('Ciências Humanas');
INSERT INTO areas (nome) VALUES ('Ciências Exatas');
INSERT INTO areas (nome) VALUES ('Saúde');
INSERT INTO areas (nome) VALUES ('Negócios');

DELIMITER //

-- Procedure para inserir cursos
DROP PROCEDURE IF EXISTS InserirCursos;

CREATE PROCEDURE InserirCursos()
BEGIN
    -- Cursos de Engenharia
    INSERT INTO cursos (nome, area_id) VALUES ('Engenharia Civil', 1);
    INSERT INTO cursos (nome, area_id) VALUES ('Engenharia Elétrica', 1);
    INSERT INTO cursos (nome, area_id) VALUES ('Engenharia Mecânica', 1);
    INSERT INTO cursos (nome, area_id) VALUES ('Engenharia de Produção', 1);
    INSERT INTO cursos (nome, area_id) VALUES ('Engenharia de Computação', 1);

    -- Cursos de Ciências Humanas
    INSERT INTO cursos (nome, area_id) VALUES ('História', 2);
    INSERT INTO cursos (nome, area_id) VALUES ('Geografia', 2);
    INSERT INTO cursos (nome, area_id) VALUES ('Filosofia', 2);
    INSERT INTO cursos (nome, area_id) VALUES ('Sociologia', 2);
    INSERT INTO cursos (nome, area_id) VALUES ('Psicologia', 2);

    -- Cursos de Ciências Exatas
    INSERT INTO cursos (nome, area_id) VALUES ('Matemática', 3);
    INSERT INTO cursos (nome, area_id) VALUES ('Física', 3);
    INSERT INTO cursos (nome, area_id) VALUES ('Química', 3);
    INSERT INTO cursos (nome, area_id) VALUES ('Estatística', 3);
    INSERT INTO cursos (nome, area_id) VALUES ('Ciência da Computação', 3);

    -- Cursos de Saúde
    INSERT INTO cursos (nome, area_id) VALUES ('Medicina', 4);
    INSERT INTO cursos (nome, area_id) VALUES ('Enfermagem', 4);
    INSERT INTO cursos (nome, area_id) VALUES ('Farmácia', 4);
    INSERT INTO cursos (nome, area_id) VALUES ('Odontologia', 4);
    INSERT INTO cursos (nome, area_id) VALUES ('Fisioterapia', 4);

    -- Cursos de Negócios
    INSERT INTO cursos (nome, area_id) VALUES ('Administração', 5);
    INSERT INTO cursos (nome, area_id) VALUES ('Contabilidade', 5);
    INSERT INTO cursos (nome, area_id) VALUES ('Economia', 5);
    INSERT INTO cursos (nome, area_id) VALUES ('Marketing', 5);
    INSERT INTO cursos (nome, area_id) VALUES ('Recursos Humanos', 5);
END //

DELIMITER ;

-- Chamar a procedure para inserir 25 cursos
CALL InserirCursos();

DELIMITER //

-- Inserir um curso
DROP PROCEDURE IF EXISTS InserirCurso;

CREATE PROCEDURE InserirCurso (
    IN p_nome VARCHAR(200),
    IN p_area_id INT
)
BEGIN
    INSERT INTO cursos (nome, area_id) VALUES (p_nome, p_area_id);
END //

-- Obter o ID de um curso pelo nome e área
DROP FUNCTION IF EXISTS ObterIdCurso;

CREATE FUNCTION ObterIdCurso (
    p_nome VARCHAR(200),
    p_area_id INT
) RETURNS INT
BEGIN
    DECLARE v_id INT;
    SELECT id INTO v_id
    FROM cursos
    WHERE nome = p_nome AND area_id = p_area_id;
    RETURN v_id;
END //

-- Matricular aluno
DROP PROCEDURE IF EXISTS MatricularAluno;

CREATE PROCEDURE MatricularAluno (
    IN p_nome VARCHAR(200),
    IN p_sobrenome VARCHAR(200),
    IN p_curso_id INT
)
BEGIN
    DECLARE v_email VARCHAR(200);
    DECLARE v_aluno_id INT;

    -- Gerar email
    SET v_email = CONCAT(p_nome, '.', p_sobrenome, '@dominio.com');

    -- Verificar se o aluno já existe
    SELECT id INTO v_aluno_id
    FROM alunos
    WHERE email = v_email;

    -- Se o aluno não existir, insere
    IF v_aluno_id IS NULL THEN
        INSERT INTO alunos (nome, sobrenome, email) VALUES (p_nome, p_sobrenome, v_email);
        SET v_aluno_id = LAST_INSERT_ID();
    END IF;

    -- Verificar se o aluno já está matriculado
    IF NOT EXISTS (
        SELECT 1
        FROM matriculas
        WHERE aluno_id = v_aluno_id AND curso_id = p_curso_id
    ) THEN
        -- Matricular o aluno
        INSERT INTO matriculas (aluno_id, curso_id) VALUES (v_aluno_id, p_curso_id);
    ELSE
        SIGNAL SQLSTATE '45000' SET MESSAGE_TEXT = 'Aluno já matriculado';
    END IF;
END //

DELIMITER ;

-- Inserir um curso
CALL InserirCurso('Engenharia de Software', 1);

-- Matricular aluno no curso de Engenharia de Software (ID 1)
CALL MatricularAluno('João', 'Silva', 1);
