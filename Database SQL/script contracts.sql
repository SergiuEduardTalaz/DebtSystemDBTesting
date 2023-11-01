CREATE TABLE contracts (
	id serial PRIMARY KEY,
	ctrNumber bigint UNIQUE not null,
	debtorName varchar(30) not null,
        clntName varchar(30) not null,
        billsNumbers int,
        debtTotal float not null,
	contractStatus varchar(10)
);

insert into contracts (ctrNumber, debtorName, clntName, billsNumbers, debtTotal, contractStatus) 
values 
('385742398', 'Julian Alvarez', 'Engie', '3', '6815', 'active'),
('398546592', 'Gonzalo Martinez', 'Iren', '1', '529', 'ceased'),
('358914365', 'Marco Polo', 'Acquedotto', '3', '4234', 'ceased'),
('314896510', 'Jorge Guttierez', 'Acquedotto', '2', '2101', 'active'),
('394816516', 'Agustina Bruno', 'Iren', '1', '385', 'ceased'),
('304819571', 'Angeles Lemcke', 'Acquedotto', '1', '107', 'active'),
('389749561', 'Beatriz Paniagua', 'Engie', '2', '1860', 'ceased'),
('378563475', 'Lionel Cairatti', 'Engie', '1', '1204', 'ceased'),
('390810984', 'Ludmila Fourtmartin', 'Iren', '3', '13078', 'active'),
('341976515', 'Mauro Candelino', 'Engie', '1', '47', 'ceased'),
('323565209', 'Nahuel Toranzo', 'Eni', '1', '112', 'ceased'),
('324876082', 'Ana Espejo', 'Acea', '2', '489', 'active'),
('389427692', 'Nicolas Napole', 'Enel', '1', '207', 'active'),
('390437642', 'Claudio Aguirre', 'Sorgenia', '3', '1328', 'active'),
('358427698', 'Luis Aspec', 'Tinmar', '2', '589', 'ceased'),
('365390768', 'Amanda Corbalan', 'Illumia', '4', '5721', 'active'),
('358743667', 'Avigail Cobos', 'Eon', '2', '1833', 'ceased'),
('328432198', 'Brisa Herrera', 'Hera', '4', '6432', 'active'),
('315274598', 'Nicolas Carratu', 'Sorgenia', '1', '75', 'ceased'),
('304298657', 'Rene Pellicano', 'Edison', '3', '2651', 'ceased'),
('318964252', 'Rosalia Alegre', 'A2a', '1', '36', 'active'),
('303298542', 'Gustavo Cordeiro', 'Iren', '1', '102', 'ceased'),
('389467943', 'Graciela Norma', 'Eni', '2', '2370', 'ceased'),
('394275465', 'Mercedes Marquina', 'Illumia', '1', '9', 'active'),
('310578248', 'Victor Abreu', 'Hera', '3', '4822', 'active'),
('302398562', 'Maria Mores', 'Acquedotto', '1', '38', 'active'),
('318473285', 'Adrian Gorosito', 'Acea', '1', '71', 'ceased'),
('354286429', 'Tiago Sanches', 'Engie', '2', '1963', 'ceased'),
('392745428', 'Macarena Talerico', 'A2a', '2', '938', 'active'),
('364867376', 'Lautaro Taibo', 'Acquedotto', '1', '11', 'ceased'),
('372465492', 'Lucia Sappia', 'Eni', '3', '4775', 'active'),
('339856294', 'Nadia Carrera', 'Tinmar', '4', '5272', 'ceased'),
('372309578', 'Rita Tangos', 'Enel', '1', '2906', 'active'),
('352476984', 'Lucas Toccalino', 'Engie', '1', '253', 'ceased'),
('392475084', 'Tamara Odierna', 'Eon', '2', '1441', 'ceased'),
('302856274', 'Walter Etchecopar', 'Acquedotto', '1', '204', 'active'),
('303298567', 'Tomas Giron', 'Iren', '1', '9', 'ceased'),
('389427598', 'Pilar Rodriguez', 'Edison', '4', '3690', 'active'),
('318653296', 'Sergio Troisi', 'Enel', '1', '143', 'ceased'),
('399887766', 'Boludo Pelotudo', 'A2a', '6', '14997', 'ceased')

SELECT * from contracts

SELECT debtorName, clntName, debtTotal from contracts
SELECT * from contracts WHERE clntName ='Acquedotto'
SELECT ctrNumber, debtorName, debtTotal, contractStatus from contracts WHERE contractStatus ='active'
SELECT ctrNumber, debtorName, clntName, debtTotal from contracts WHERE debtTotal>'938'
SELECT * from contracts WHERE clntName ='Acquedotto' AND billsNumbers>'1'
SELECT * from contracts WHERE billsNumbers ='2' OR debtTotal>'5272'
SELECT * from contracts WHERE contractStatus ='ceased' OR debtTotal<'4822'
SELECT * from contracts WHERE NOT clntName ='Iren'
SELECT * from contracts WHERE contractStatus LIKE 'ce%'
SELECT * from contracts WHERE clntName LIKE 'T%'
SELECT * from contracts WHERE clntName LIKE '_orgenia'
SELECT * from contracts ORDER BY billsNumbers
SELECT * from contracts ORDER BY debtTotal
SELECT * from contracts ORDER BY debtTotal DESC
SELECT DISTINCT ctrNumber from contracts
SELECT * from contracts LIMIT 15
SELECT * from contracts LIMIT 15 OFFSET 10
SELECT MIN(debtTotal) from contracts
SELECT MAX(billsNumbers) from contracts
SELECT MIN(billsNumbers) from contracts WHERE contractStatus='active'
SELECT COUNT(*) from contracts
SELECT COUNT(*) from contracts WHERE billsNumbers>'2'
SELECT AVG(billsNumbers) from contracts
SELECT SUM(billsNumbers) from contracts WHERE debtTotal>4000
SELECT COUNT(clntName), clntName from contracts GROUP BY clntName
SELECT MIN(debtTotal), debtTotal from contracts GROUP BY debtTotal
SELECT MAX(billsNumbers), billsNumbers from contracts GROUP BY billsNumbers
SELECT COUNT(debtTotal), debtTotal from contracts GROUP BY debtTotal HAVING COUNT(debtTotal) < 2
SELECT SUM(billsNumbers), debtTotal from contracts GROUP BY debtTotal HAVING COUNT(debtTotal) < 5272

UPDATE contracts SET debtTotal=debtTotal+100
UPDATE contracts SET clntName = 'Edison' WHERE clntName = 'Iren'

ALTER TABLE contracts ADD COLUMN billsMissed integer
ALTER TABLE contracts ALTER COLUMN billsMissed TYPE float
ALTER TABLE contracts DROP COLUMN billsMissed

DELETE from contracts WHERE clntName='Hera'
DELETE from contracts WHERE debtTotal<'2370'