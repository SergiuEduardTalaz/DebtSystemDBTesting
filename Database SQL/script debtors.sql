CREATE TABLE debtors (
	id serial PRIMARY KEY,
	cnp varchar(13) UNIQUE not null,
	firstName varchar(30) not null,
        lastName varchar(30) not null,
	birthday date,
	status varchar(10) 
);

insert into debtors (cnp, firstName, lastName, birthday, status) 
values 
('1831104739471', 'Julian', 'Alvarez', '1983-11-04', 'active'),
('1750712932031', 'Gonzalo', 'Martinez', '1975-07-12', 'ceased'),
('1880230519066', 'Marco', 'Polo', '1988-02-20', 'ceased'),
('1911026380567', 'Jorge', 'Guttierez', '1991-10-26', 'active'),
('2850101873983', 'Agustina', 'Bruno', '1985-01-01', 'ceased'),
('2691205839204', 'Angeles', 'Lemcke', '1969-12-05', 'active'),
('2850417037184', 'Beatriz', 'Paniagua', '1985-04-17', 'ceased'),
('1721109505142', 'Lionel', 'Cairatti', '1972-11-09', 'ceased'),
('2640815031693', 'Ludmila', 'Fourtmartin', '1964-08-15', 'active'),
('1970210491720', 'Mauro', 'Candelino', '1997-02-10', 'ceased'),
('1680425843291', 'Nahuel', 'Toranzo', '1968-04-25', 'ceased'),
('2960713915832', 'Ana', 'Espejo', '1996-07-13', 'active'),
('1811218324791', 'Nicolas', 'Napole', '1981-12-18', 'active'),
('1750624103957', 'Claudio', 'Aguirre', '1975-06-24', 'active'),
('1901212145926', 'Luis', 'Aspec', '1990-12-12', 'ceased'),
('2830730496252', 'Amanda', 'Corbalan', '1983-07-30', 'active'),
('2940201293693', 'Avigail', 'Cobos', '1994-02-01', 'ceased'),
('2890927625815', 'Brisa', 'Herrera', '1989-09-27', 'active'),
('1640510984362', 'Nicolas', 'Carratu', '1964-05-10', 'ceased'),
('1991230258967', 'Rene', 'Pellicano', '1999-12-30', 'ceased'),
('2830417346029', 'Rosalia', 'Alegre', '1983-04-17', 'active'),
('5000101764624', 'Gustavo', 'Cordeiro', '2000-01-01', 'ceased'),
('2951006029856', 'Graciela', 'Norma', '1995-10-06', 'ceased'),
('6000328542368', 'Mercedes', 'Marquina', '2000-03-28', 'active'),
('1761105625081', 'Victor', 'Abreu', '1976-11-05', 'active'),
('2880420527862', 'Maria', 'Mores', '1988-04-20', 'active'),
('1930714982735', 'Adrian', 'Gorosito', '1993-07-14', 'ceased'),
('1691230983461', 'Tiago', 'Sanches', '1969-12-30', 'ceased'),
('2721003237586', 'Macarena', 'Talerico', '1972-10-03', 'active'),
('1970208523762', 'Lautaro', 'Taibo', '1997-02-08', 'ceased'),
('6000713428754', 'Lucia', 'Sappia', '2000-07-13', 'active'),
('2841128752382', 'Nadia', 'Carrera', '1984-11-28', 'ceased'),
('2990519985725', 'Rita', 'Tangos', '1999-05-19', 'active'),
('5010726416352', 'Lucas', 'Toccalino', '2001-07-26', 'ceased'),
('2781123892753', 'Tamara', 'Odierna', '1978-11-23', 'ceased'),
('1941014902425', 'Walter', 'Etchecopar', '1994-10-14', 'active'),
('1810330902375', 'Tomas', 'Giron', '1981-03-30', 'ceased'),
('6010815852729', 'Pilar', 'Rodriguez', '2001-08-15', 'active'),
('5001204237562', 'Sergio', 'Troisi', '2000-12-04', 'ceased'),
('1730611523642', 'Boludo', 'Pelotudo', '1973-06-11', 'ceased')

SELECT * from debtors

SELECT firstName, lastName, status from debtors
SELECT * from debtors WHERE status ='active'
SELECT firstName, lastName, birthday from debtors WHERE status ='ceased'
SELECT firstName, lastName, status, birthday from debtors WHERE birthday>'1989-12-30'
SELECT * from debtors WHERE status ='active' AND birthday>'1989-12-30'
SELECT * from debtors WHERE status ='active' OR birthday>'1989-12-30'
SELECT * from debtors WHERE status ='ceased' OR birthday<'1989-12-30'
SELECT * from debtors WHERE NOT status ='active'
SELECT * from debtors WHERE status LIKE 'ac%'
SELECT * from debtors WHERE cnp LIKE '6%'
SELECT * from debtors WHERE firstName LIKE '_oludo'
SELECT * from debtors ORDER BY cnp
SELECT * from debtors ORDER BY birthday
SELECT * from debtors ORDER BY birthday DESC
SELECT DISTINCT lastName from debtors
SELECT * from debtors LIMIT 10
SELECT * from debtors LIMIT 10 OFFSET 15
SELECT MIN(birthday) from debtors
SELECT MAX(firstName) from debtors
SELECT MIN(birthday) from debtors WHERE status='active'
SELECT COUNT(*) from debtors
SELECT COUNT(*) from debtors WHERE birthday>'2000-01-01'
SELECT COUNT(status), status from debtors GROUP BY status
SELECT MIN(birthday), birthday from debtors GROUP BY birthday
SELECT MAX(firstName), firstName from debtors GROUP BY firstName

UPDATE debtors SET lastName = 'Genio' WHERE lastName = 'Troisi'

ALTER TABLE debtors ADD COLUMN age integer
ALTER TABLE debtors ALTER COLUMN age TYPE float
ALTER TABLE debtors DROP COLUMN age

DELETE from debtors WHERE status='ceased'
DELETE from debtors WHERE birthday>'2000-01-01'