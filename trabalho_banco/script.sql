CREATE SCHEMA esporte;
use esporte;

CREATE TABLE athletes (
`name` VARCHAR(50) NOT NULL,
noc VARCHAR(50) NOT NULL,
discipline VARCHAR(50) NOT NULL
);

CREATE TABLE coaches (
`name` VARCHAR(50) NOT NULL,
noc VARCHAR(50) NOT NULL,
discipline VARCHAR(50) NOT NULL,
`event` VARCHAR(50)
);

CREATE TABLE entries_gender (
discipline VARCHAR(50) NOT NULL,
female INT NOT NULL,
male INT NOT NULL,
total INT NOT NULL
);

CREATE TABLE medals (
`rank` INT NOT NULL,
team_noc VARCHAR(50) NOT NULL,
gold INT NOT NULL,
silver INT NOT NULL,
bronze INT NOT NULL,
total INT NOT NULL,
rank_by_total INT NOT NULL
);

CREATE TABLE teams (
`name` VARCHAR(50) NOT NULL,
discipline VARCHAR(50) NOT NULL,
noc VARCHAR(50) NOT NULL,
`event` VARCHAR(50) NOT NULL
);

SELECT * FROM athletes;
SELECT * FROM coaches;
SELECT * FROM entries_gender;
SELECT * FROM medals;
SELECT * FROM teams;

/* 1 */
SELECT coaches.`name`, athletes.`name` FROM coaches INNER JOIN athletes ON coaches.discipline = athletes.discipline
WHERE athletes.discipline = `Handball`;

/* 2 */
/* Precisaria de um ID para relacionar eles. */

/* 3 */
/* Seria necessario uma tabela que relacionasse as medalhas e atletas, e também tivesse generos para conseguir relacionar. */

/* 4 */
/* Como dito antes, não é possivel relacionar medalhas e atletas. */

/* 5 */
/* Não é possivel porque não temos uma tabela que relaciona diretamente os atletas com medalhas. */