CREATE SCHEMA esporte;
use esporte;

CREATE TABLE athletes (
`name` VARCHAR(50),
noc VARCHAR(50),
discipline VARCHAR(50)
);

CREATE TABLE coaches (
`name` VARCHAR(50),
noc VARCHAR(50),
discipline VARCHAR(50),
`event` VARCHAR(50)
);

CREATE TABLE entries_gender (
discipline VARCHAR(50),
female INT,
male INT,
total INT
);

CREATE TABLE medals (
`rank` INT,
team_noc VARCHAR(50),
gold INT,
silver INT,
bronze INT,
total INT,
rank_by_total INT
);

CREATE TABLE teams (
`name` VARCHAR(50),
discipline VARCHAR(50),
noc VARCHAR(50),
`event` VARCHAR(50)
);

SELECT * FROM athletes;
SELECT * FROM coaches;
SELECT * FROM entries_gender;
SELECT * FROM medals;
SELECT * FROM teams;

/* 1 */
SELECT `name`, 'athletes' as tipo FROM athletes WHERE discipline = 'handball'
UNION
SELECT `name`, 'coaches' as tipo FROM coaches WHERE discipline = 'handball';

/* 2 */
/* Precisaria de um ID para relacionar eles. */

/* 3 */
/* Seria necessario uma tabela que relacionasse as medalhas e atletas, e também tivesse generos para conseguir relacionar. */

/* 4 */
/* Como dito antes, não é possivel relacionar medalhas e atletas. */

/* 5 */
/* Não é possivel porque não temos uma tabela que relaciona diretamente os atletas com medalhas. */