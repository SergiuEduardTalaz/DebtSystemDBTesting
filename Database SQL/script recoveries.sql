CREATE TABLE recoveries (
	id serial PRIMARY KEY,
	cntrNumber char(13) UNIQUE not null,
	dbtrName varchar(30) not null,
	dbtTotal float,
        payorNot boolean not null,
        payingWay varchar(20),
        payingDate date,
	percentageDiscount float,
	installmentsNumber int
);

insert into recoveries (cntrNumber, dbtrName, dbtTotal, payorNot, payingWay, payingDate, percentageDiscount, installmentsNumber) 
values 
('385742398', 'Julian Alvarez', '6815', 'Yes', 'all at once', '2023-06-13', null, null),
('398546592', 'Gonzalo Martinez', '529', 'No', null, null, null, null),
('358914365', 'Marco Polo', '4234', 'Yes', 'installments', '2024-08-30', null, '4'),
('314896510', 'Jorge Guttierez', '2101', 'Yes', 'discount', '2023-07-11', '10', null),
('394816516', 'Agustina Bruno', '385', 'No', null, null, null, null),
('304819571', 'Angeles Lemcke', '107', 'Yes', 'all at once', '2023-09-25', null, null),
('389749561', 'Beatriz Paniagua', '1860', 'Yes', 'installments', '2024-05-18', null, '2'),
('378563475', 'Lionel Cairatti', '1204', 'No', null, null, null, null),
('390810984', 'Ludmila Fourtmartin', '13078', 'Yes', 'discount', '2025-02-17', '20', null),
('341976515', 'Mauro Candelino', '47', 'Yes', 'all at once', '2023-05-29', null, null),
('323565209', 'Nahuel Toranzo', '112', 'Yes', 'all at once', '2024-01-07', null, null),
('324876082', 'Ana Espejo', '489', 'Yes', 'installments', '2023-06-12', null, '2'),
('389427692', 'Nicolas Napole', '207', 'No', null, null, null, null),
('390437642', 'Claudio Aguirre', '1328', 'Yes', 'installments', '2023-11-15', null, '2'),
('358427698', 'Luis Aspec', '589', 'Yes', 'all at once', '2023-09-18', null, null),
('365390768', 'Amanda Corbalan', '5721', 'Yes', 'discount', '2024-05-26', '15', null),
('358743667', 'Avigail Cobos', '1833', 'Yes', 'installments', '2024-02-12', null, '3'),
('328432198', 'Brisa Herrera', '6432', 'No', null, null, null, null),
('315274598', 'Nicolas Carratu', '75', 'No', null, null, null, null),
('304298657', 'Rene Pellicano', '2651', 'Yes', 'installments', '2024-01-16', null, '2'),
('318964252', 'Rosalia Alegre', '36', 'Yes', 'all at once', '2024-06-14', null, null),
('303298542', 'Gustavo Cordeiro', '102', 'No', null, null, null, null),
('389467943', 'Graciela Norma', '2370', 'Yes', 'installments', '2023-10-20', null, '2'),
('394275465', 'Mercedes Marquina', '9', 'Yes', 'all at once', '2024-11-18', null, null),
('310578248', 'Victor Abreu', '4822', 'Yes', 'discount', '2024-03-23', '10', null),
('302398562', 'Maria Mores', '38', 'No', null, null, null, null),
('318473285', 'Adrian Gorosito', '71', 'Yes', 'all at once', '2024-07-11', null, null),
('354286429', 'Tiago Sanches', '1963', 'Yes', 'installments', '2023-08-20', null, '2'),
('392745428', 'Macarena Talerico', '938', 'Yes', 'installments', '2023-12-04', null, '3'),
('364867376', 'Lautaro Taibo', '11', 'No', null, null, null, null),
('372465492', 'Lucia Sappia', '4775', 'Yes', 'discount', '2024-09-05', '10', null),
('339856294', 'Nadia Carrera', '5272', 'Yes', 'installments', '2023-10-13', null, '5'),
('372309578', 'Rita Tangos', '2906', 'Yes', 'installments', '2025-01-07', null, '4'),
('352476984', 'Lucas Toccalino', '253', 'No', null, null, null, null),
('392475084', 'Tamara Odierna', '1441', 'Yes', 'installments', '2023-08-23', null, '2'),
('302856274', 'Walter Etchecopar', '204', 'Yes', 'all at once', '2024-01-28', null, null),
('303298567', 'Tomas Giron', '9', 'No', null, null, null, null),
('389427598', 'Pilar Rodriguez', '3690', 'Yes', 'installments', '2024-06-07', null, '6'),
('318653296', 'Sergio Troisi', '143', 'No', null, null, null, null),
('399887766', 'Boludo Pelotudo', '14997', 'Yes', 'discount', '2025-02-19', '50', null)

SELECT * from recoveries

SELECT dbtrName, dbtTotal, payingDate from recoveries
SELECT * from recoveries WHERE payingWay ='discount'
SELECT cntrNumber, dbtrName, dbtTotal from recoveries WHERE payorNot ='Yes'
SELECT dbtrName, payingWay, payingDate from recoveries WHERE dbtTotal>'204'
SELECT * from recoveries WHERE payorNot ='No' AND dbtTotal>'1441'
SELECT * from recoveries WHERE payingWay ='all at once' OR payingDate>'2024-09-05'
SELECT * from recoveries WHERE NOT payingWay ='installments'
SELECT * from recoveries WHERE payingWay LIKE 'dis%'
SELECT * from recoveries WHERE payingWay LIKE 'a%'
SELECT * from recoveries WHERE payingWay LIKE '_nstallments'
SELECT * from recoveries ORDER BY payingDate
SELECT * from recoveries ORDER BY dbtTotal
SELECT * from recoveries ORDER BY dbtTotal DESC
SELECT DISTINCT payorNot from recoveries
SELECT * from recoveries LIMIT 15
SELECT * from recoveries LIMIT 15 OFFSET 10
SELECT MIN(percentageDiscount) from recoveries
SELECT MAX(percentageDiscount) from recoveries
SELECT MIN(payingDate) from recoveries WHERE payorNot='Yes'
SELECT COUNT(*) from recoveries
SELECT COUNT(*) from recoveries WHERE dbtTotal>'2651'
SELECT AVG(installmentsNumber) from recoveries
SELECT SUM(dbtTotal) from recoveries WHERE payingDate>'2024-01-28'
SELECT COUNT(dbtTotal), dbtTotal from recoveries GROUP BY dbtTotal
SELECT MIN(dbtTotal), dbtTotal from recoveries GROUP BY dbtTotal
SELECT MAX(dbtTotal), dbtTotal from recoveries GROUP BY dbtTotal
SELECT COUNT(payingDate), payingDate from recoveries GROUP BY payingDate HAVING COUNT(dbtTotal) < 1963
SELECT SUM(dbtTotal), dbtTotal from recoveries GROUP BY dbtTotal HAVING COUNT(dbtTotal) < 4775

UPDATE recoveries SET dbtTotal=dbtTotal+100
UPDATE recoveries SET payingDate = '2025-08-19' WHERE payingDate = '2023-12-04'

ALTER TABLE recoveries ADD COLUMN billsNonPayed integer
ALTER TABLE recoveries ALTER COLUMN billsNonPayed TYPE float
ALTER TABLE recoveries DROP COLUMN billsNonPayed

DELETE from recoveries WHERE payorNot='No'
DELETE from recoveries WHERE dbtTotal<'204'

select * from recoveries where EXTRACT(YEAR FROM payingDate ) > 2024
select * from recoveries where DATE_PART('MONTH', payingDate ) = 8
select * from recoveries where DATE_PART('DAY', payingDate ) = 20
SELECT CURRENT_DATE
select substring(dbtrName,1,10) from recoveries
select upper(dbtrName) from recoveries
select dbtrName, length(dbtrName) from recoveries
select trim(dbtrName) from recoveries 
select position ('o' IN LOWER('Boludo Pelotudo')) from recoveries
SELECT dbtrName, COALESCE(payingWay, 'Unknown') as payingWay FROM recoveries

CREATE INDEX idx_recovery_dbtrName ON recoveries (dbtrName)