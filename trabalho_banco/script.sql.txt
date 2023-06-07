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