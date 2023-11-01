CREATE TABLE clients (
	id serial PRIMARY KEY,
	idClient int UNIQUE,
	clientName varchar(30) not null,
        serviceType varchar(20),
        debtorsNumber int,
	debtsTotal float
);

insert into clients (idClient, clientName, serviceType, debtorsNumber, debtsTotal) 
values
('23987', 'Iren', 'electrical current', '59472', '13855209'),
('25439', 'Iren', 'gas', '25628', '7855209'),
('76523', 'Engie', 'electrical current', '74180', '42184728'),
('76593', 'Engie', 'gas', '58237', '26184728'),
('59843', 'Acquedotto', 'water', '26523', '4875823'),
('87162', 'Enel', 'electrical current', '98341', '237652195'),
('85451', 'Enel', 'gas', '89437', '327615515'),
('15412', 'Eni', 'electrical current', '63522', '26351395'),
('10934', 'Eni', 'gas', '92721', '61935631'),
('92865', 'Eon', 'electrical current', '78451', '87091357'),
('95273', 'Eon', 'gas', '32752', '3816526'),
('32943', 'Tinmar', 'electrical current', '71359', '68935715'),
('32985', 'Tinmar', 'gas', '17452', '3356523'),
('69823', 'Edison', 'electrical current', '13854', '2943958'),
('62689', 'Edison', 'gas', '7365', '41354611'),
('43982', 'A2a', 'electrical current', '71351', '14847369'),
('44362', 'A2a', 'gas', '42527', '5823698'),
('52385', 'Acea', 'electrical current', '71912', '25379257'),
('53296', 'Acea', 'gas', '28952', '1395271'),
('99385', 'Sorgenia', 'electrical current', '52389', '6518222'),
('93287', 'Sorgenia', 'gas', '29148', '2894162'),
('74246', 'Illumia', 'electrical current', '62358', '83265823'),
('79834', 'Illumia', 'gas', '39856', '58923652'),
('25462', 'Hera', 'electrical current', '72375', '93976531'),
('25273', 'Hera', 'gas', '28515', '49985263')

SELECT * from clients

SELECT clientName, serviceType, debtsTotal from clients
SELECT * from clients WHERE serviceType ='gas'
SELECT clientName, debtsTotal, debtorsNumber, serviceType from clients WHERE serviceType ='electrical current'
SELECT idClient, clientName, serviceType from clients WHERE debtorsNumber>'40000'
SELECT * from clients WHERE clientName ='Acea' AND debtorsNumber>'28952'
SELECT * from clients WHERE serviceType ='electrical current' OR debtsTotal>'6518222'
SELECT * from clients WHERE serviceType ='gas' OR debtorsNumber<'62358'
SELECT * from clients WHERE NOT serviceType ='water'
SELECT * from clients WHERE clientName LIKE 'Acq%'
SELECT * from clients WHERE serviceType LIKE 'g%'
SELECT * from clients WHERE serviceType LIKE '_ater'
SELECT * from clients ORDER BY debtorsNumber
SELECT * from clients ORDER BY debtsTotal
SELECT * from clients ORDER BY debtsTotal DESC
SELECT DISTINCT clientName from clients
SELECT * from clients LIMIT 10
SELECT * from clients LIMIT 10 OFFSET 5
SELECT MIN(debtorsNumber) from clients
SELECT MAX(debtsTotal) from clients
SELECT MIN(debtsTotal) from clients WHERE serviceType='electrical current'
SELECT COUNT(*) from clients
SELECT COUNT(*) from clients WHERE debtorsNumber>'42527'
SELECT AVG(debtsTotal) from clients
SELECT SUM(debtsTotal) from clients WHERE debtorsNumber>4000
SELECT COUNT(serviceType), serviceType from clients GROUP BY serviceType
SELECT MIN(debtorsNumber), debtorsNumber from clients GROUP BY debtorsNumber
SELECT MAX(debtsTotal), debtsTotal from clients GROUP BY debtsTotal
SELECT COUNT(debtsTotal), debtsTotal from clients GROUP BY debtsTotal HAVING COUNT(debtsTotal) < 2999999
SELECT SUM(debtorsNumber), debtsTotal from clients GROUP BY debtsTotal HAVING COUNT(debtsTotal) < 2999999

UPDATE clients SET debtsTotal=debtsTotal+10
UPDATE clients SET debtorsNumber = '38470' WHERE debtorsNumber = '26523'

ALTER TABLE clients ADD COLUMN recoveriesTotal integer
ALTER TABLE clients ALTER COLUMN recoveriesTotal TYPE float
ALTER TABLE clients DROP COLUMN recoveriesTotal
ALTER TABLE clients ALTER COLUMN debtorsNumber SET DEFAULT 1

DELETE from clients WHERE serviceType='gas'
DELETE from clients WHERE debtsTotal>'6518222'

CREATE TABLE utilities (
	id serial PRIMARY KEY,
	idClient int UNIQUE,
	clientName varchar(30) not null,
        serviceType varchar(20),
        debtorsNumber int,
	debtsTotal float
);

insert into utilities (idClient, clientName, serviceType, debtorsNumber, debtsTotal) 
values
('77777', 'Neon', 'electrical current', '1111', '8888888'),
('66666', 'Neon', 'gas', '22222', '9999999'),
('55555', 'Nengie', 'electrical current', '3333', '7777777'),
('44444', 'Nengie', 'gas', '44444', '6666666'),
('33333', 'Tacquedotto', 'water', '5555', '5555555')

SELECT 'Client' AS Type, clientName, serviceType, debtorsNumber FROM clients
UNION
SELECT 'Utility' AS Type, clientName, serviceType, debtorsNumber FROM utilities