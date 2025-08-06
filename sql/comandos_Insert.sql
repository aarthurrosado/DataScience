-- Inserir dados na tabela usando apenas o conteudo
INSERT INTO T_SIP_DEPARTAMENTO VALUES (1, 'FINANCEIRO', 'FNC');
-- Inserir dados na tabela usando as colunas e os respectivos conteudos
INSERT INTO T_SIP_DEPARTAMENTO (CD_DEPTO, NM_DEPTO, SG_DEPTO)
    VALUES(3, 'Marketing', 'MKT');
-- USAR ; , Apenas no final do comando INTEIRO 

-- Consultar todas as linhas da tabela departamento
SELECT * FROM T_SIP_DEPARTAMENTO;

-- Insercao com manipulacao de DATA/HORA
INSERT INTO T_SIP_PROJETO (CD_PROJETO, NM_PROJETO, DT_INICIO, DT_TERMINO)
    VALUES(1, 'Projeto ABC',
            TO_DATE('01/02/2020', 'DD/MM/YYYY'),
            TO_DATE('15/11/2022', 'DD/MM/YYYY'));
-- Insercao de valores com numeros decimais
INSERT INTO T_SIP_FUNCIONARIO
    VALUES ( 01026, 1, 'Arthur Luiz Rosado Alves',
            TO_DATE('24/08/2005','DD/MM/YYYY'),
            TO_DATE('06/02/2026','DD/MM/YYYY'),
            'ALAMEDA DOS BOSQUES 680, CASA 119', 3600.56);
SELECT * FROM T_SIP_FUNCIONARIO;
-- FORMA IMPLICITA, Omite a coluna da lista durante insercao
INSERT INTO T_SIP_PROJETO(CD_PROJETO, NM_PROJETO, DT_INICIO)
    VALUES (2 , 'PROJETO CLAUS',
            TO_DATE('05/07/2022','DD/MM/YYYY'));
SELECT * FROM T_SIP_PROJETO;
-- FORMA EXPLICITA, define null a coluna ( boa pratica)
INSERT INTO T_SIP_PROJETO
    VALUES (3, 'PROJETO NASA',
            TO_DATE('01/04/2020','DD/MM/YYYY'),
            NULL );
SELECT * FROM T_SIP_PROJETO
