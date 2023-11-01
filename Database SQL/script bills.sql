CREATE TABLE bills (
	id serial PRIMARY KEY,
	billNumber varchar(10) UNIQUE not null,
        ctrNumber int not null,
        debtBill float default 1,
        dueDate date,
	typeService varchar(20)
);

insert into bills (billNumber, ctrNumber, debtBill, dueDate, typeService) 
values 
('7421095', '385742398', '1528', '2018-12-20', 'electrical current'),
('7094173', '385742398', '3740', '2021-03-17', 'gas'),
('7094370', '385742398', '1547', '2021-09-25', 'gas'),
('7543401', '398546592', '529', '2019-11-06', 'electrical current'),
('7423653', '358914365', '621', '2019-04-22', 'water'),
('7942875', '358914365', '1873', '2022-12-19', 'water'),
('7985640', '358914365', '1740', '2023-02-11', 'water'),
('7315749', '314896510', '914', '2020-10-08', 'water'),
('7301945', '314896510', '1187', '2023-05-27', 'water'),
('7895462', '394816516', '385', '2021-08-14', 'electrical current'),
('7764591', '304819571', '107', '2018-11-19', 'water'),
('7932175', '389749561', '719', '2022-07-30', 'gas'),
('7295816', '389749561', '1141', '2021-01-23', 'electrical current'),
('7174165', '378563475', '1204', '2019-12-24', 'gas'),
('7381567', '390810984', '2558', '2017-02-15', 'electrical current'),
('7287561', '390810984', '6031', '2022-08-21', 'gas'),
('7945892', '390810984', '4489', '2019-04-06', 'gas'),
('7147356', '341976515', '47', '2023-01-30', 'electrical current'),
('7431764', '323565209', '112', '2019-06-02', 'gas'),
('7958236', '324876082', '137', '2018-02-21', 'electrical current'),
('7298465', '324876082', '352', '2016-07-02', 'gas'),
('7107542', '389427692', '207', '2020-07-29', 'gas'),
('7947541', '390437642', '412', '2017-01-23', 'electrical current'),
('7843175', '390437642', '176', '2020-10-30', 'electrical current'),
('7871465', '390437642', '740', '2017-07-23', 'gas'),
('7895166', '358427698', '349', '2023-02-13', 'electrical current'),
('7928752', '358427698', '240', '2022-07-15', 'gas'),
('7029759', '365390768', '681', '2021-11-17', 'electrical current'),
('7246546', '365390768', '2105', '2022-08-11', 'gas'),
('7189562', '365390768', '973', '2016-08-08', 'electrical current'),
('7389652', '365390768', '1962', '2020-08-18', 'gas'),
('7589265', '358743667', '1015', '2023-01-04', 'gas'),
('7092532', '358743667', '818', '2017-02-20', 'electrical current'),
('7023564', '328432198', '1420', '2022-06-22', 'electrical current'),
('7582465', '328432198', '890', '2018-03-10', 'electrical current'),
('7452765', '328432198', '2315', '2016-10-18', 'gas'),
('7189275', '328432198', '1807', '2023-02-27', 'electrical current'),
('7052762', '315274598', '75', '2021-12-20', 'electrical current'),
('7729865', '304298657', '762', '2017-04-16', 'gas'),
('7427652', '304298657', '380', '2020-09-06', 'electrical current'),
('7648962', '304298657', '1509', '2016-09-03', 'electrical current'),
('7148935', '318964252', '36', '2021-02-10', 'electrical current'),
('7926542', '303298542', '102', '2020-11-16', 'electrical current'),
('7729586', '389467943', '1492', '2017-05-22', 'gas'),
('7029854', '389467943', '878', '2021-03-19', 'electrical current'),
('7149632', '394275465', '9', '2021-07-10', 'gas'),
('7147265', '310578248', '935', '2023-03-25', 'electrical current'),
('7037529', '310578248', '2162', '2016-01-13', 'electrical current'),
('7392655', '310578248', '1725', '2018-04-23', 'gas'),
('7194635', '302398562', '38', '2020-06-15', 'water'),
('7378525', '318473285', '71', '2018-05-08', 'electrical current'),
('7725359', '354286429', '761', '2017-10-28', 'electrical current'),
('7025745', '354286429', '1202', '2020-05-24', 'gas'),
('7846552', '392745428', '398', '2022-10-15', 'electrical current'),
('7178423', '392745428', '540', '2017-12-18', 'gas'),
('7823752', '364867376', '11', '2019-02-09', 'electrical current'),
('7184639', '372465492', '1271', '2022-06-22', 'gas'),
('7528962', '372465492', '2410', '2022-07-18', 'gas'),
('7178566', '372465492', '1094', '2020-01-18', 'electrical current'),
('7748361', '339856294', '992', '2019-08-03', 'gas'),
('7289752', '339856294', '1371', '2019-10-22', 'electrical current'),
('7902755', '339856294', '754', '2016-05-12', 'electrical current'),
('7625383', '339856294', '2155', '2017-03-12', 'gas'),
('7082751', '372309578', '2906', '2018-01-26', 'electrical current'),
('7582452', '352476984', '253', '2016-06-01', 'electrical current'),
('7823569', '392475084', '583', '2020-03-06', 'gas'),
('7075922', '392475084', '858', '2016-03-25', 'electrical current'),
('7589642', '302856274', '204', '2023-01-22', 'electrical current'),
('7463527', '303298567', '9', '2018-12-20', 'gas'),
('7894263', '389427598', '481', '2020-02-05', 'electrical current'),
('7785625', '389427598', '1152', '2018-07-17', 'electrical current'),
('7209572', '389427598', '854', '2019-03-15', 'gas'),
('7685296', '389427598', '1203', '2016-12-06', 'electrical current'),
('7092570', '318653296', '143', '2017-10-28', 'electrical current'),
('7009988', '399887766', '2498', '2019-12-24', 'electrical current'),
('7998877', '399887766', '2498', '2016-02-09', 'gas'),
('7776655', '399887766', '2498', '2022-11-03', 'gas'),
('7665544', '399887766', '2498', '2018-08-27', 'electrical current'),
('7554433', '399887766', '2498', '2016-04-05', 'gas'),
('7443322', '399887766', '2507', '2016-07-02', 'electrical current')

SELECT * from bills

SELECT billNumber, debtBill, dueDate from bills
SELECT * from bills WHERE typeService ='gas'
SELECT billNumber, ctrNumber, dueDate, typeService from bills WHERE typeService ='electrical current'
SELECT billNumber, dueDate, typeService, debtBill from bills WHERE debtBill>'583'
SELECT * from bills WHERE typeService ='gas' AND debtBill>'481'
SELECT * from bills WHERE dueDate ='2016-12-06' OR debtBill>'1203'
SELECT * from bills WHERE NOT typeService ='electrical current'
SELECT * from bills WHERE typeService LIKE 'ga%'
SELECT * from bills WHERE typeService LIKE 'e%'
SELECT * from bills WHERE typeService LIKE '_ater'
SELECT * from bills ORDER BY dueDate
SELECT * from bills ORDER BY debtBill
SELECT * from bills ORDER BY debtBill DESC
SELECT DISTINCT billNumber from bills
SELECT * from bills LIMIT 15
SELECT * from bills LIMIT 15 OFFSET 10
SELECT MIN(debtBill) from bills
SELECT MAX(debtBill) from bills
SELECT MIN(debtBill) from bills WHERE typeService='electrical current'
SELECT COUNT(*) from bills
SELECT COUNT(*) from bills WHERE debtBill>'1152'
SELECT AVG(debtBill) from bills
SELECT SUM(debtBill) from bills WHERE dueDate>'2018-07-17'
SELECT COUNT(debtBill), debtBill from bills GROUP BY debtBill
SELECT MIN(debtBill), debtBill from bills GROUP BY debtBill
SELECT MAX(debtBill), debtBill from bills GROUP BY debtBill
SELECT COUNT(dueDate), dueDate from bills GROUP BY dueDate HAVING COUNT(debtBill) < 1094
SELECT SUM(debtBill), debtBill from bills GROUP BY debtBill HAVING COUNT(debtBill) < 754

UPDATE bills SET debtBill=debtBill+10
UPDATE bills SET dueDate = '2017-11-24' WHERE dueDate = '2016-04-05'

ALTER TABLE bills ADD COLUMN billsChanged integer
ALTER TABLE bills ALTER COLUMN billsChanged TYPE float
ALTER TABLE bills DROP COLUMN billsChanged

DELETE from bills WHERE typeService='water'
DELETE from bills WHERE debtBill<'253'

ALTER TABLE bills
ADD CONSTRAINT fk
FOREIGN KEY (ctrNumber)
REFERENCES contracts (ctrnumber)

SELECT * from contracts
JOIN bills ON contracts.ctrNumber = bills.ctrNumber

select contracts.clntName , bills.billNumber , bills.debtBill from contracts
JOIN bills ON contracts.ctrNumber = bills.ctrNumber

select * from contracts
LEFT JOIN bills ON contracts.ctrNumber = bills.ctrNumber

select contracts.debtorName , bills.billNumber , bills.debtBill from contracts
LEFT JOIN bills ON contracts.ctrNumber = bills.ctrNumber

select * from contracts
RIGHT JOIN bills ON contracts.ctrNumber = bills.ctrNumber

select contracts.debtorName , bills.billNumber , bills.debtBill from contracts
RIGHT JOIN bills ON contracts.ctrNumber = bills.ctrNumber

select * from contracts
FULL JOIN bills ON contracts.ctrNumber = bills.ctrNumber

select contracts.debtorName , bills.billNumber , bills.debtBill from contracts
FULL JOIN bills ON contracts.ctrNumber = bills.ctrNumber

CREATE OR REPLACE VIEW bills_with_typeService AS select contracts.ctrNumber , bills.billNumber , bills.debtBill from contracts
JOIN bills ON contracts.ctrNumber = bills.ctrNumber WHERE bills.typeService = 'water'

SELECT * FROM public.bills_with_typeservice