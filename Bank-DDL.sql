-- create tables 

CREATE TABLE public.customer (
	customer_id integer NOT NULL,
	name varchar(255) NOT NULL,
	natcode varchar(255) NOT NULL, 
	birthdate date NOT NULL,
	add varchar(100), 
	tel varchar(11)
);

CREATE TABLE public.trn_src_des (
	voucher_id varchar(12) NOT NULL,
	trndate date,
	trntime varchar(10),
	amount bigint,
	sourcedep integer,
	desdep integer,
	branchid integer, 
	trn_desc varchar(500)
);

CREATE TABLE public.deposit (
	dep_id integer NOT NULL,
	dep_type integer NOT NULL,
	customer_id integer NOT NULL,
	opendate date,
	status integer
);

CREATE TABLE public.deposit_type(
	dep_type integer NOT NULL,
	dep_type_desc varchar(500)
);

CREATE TABLE public.deposit_status (
	status integer NOT NULL,
	status_desc varchar(500)
);

CREATE TABLE public.branch(
	branch_id integer NOT NULL,
	branch_name varchar(20),
	branch_add varchar(100),
	branch_tel varchar(12)
);

-- insert data to tables
INSERT INTO customer(customer_id, name, natcode, birthdate, add, tel) VALUES (111, 'customer1', '1111111123', '2002-01-01','Isfahan', '09134251380');
INSERT INTO customer(customer_id, name, natcode, birthdate, add, tel) VALUES (112, 'customer2', '1281652780', '1960-01-10','Tehran', '09121112221');
INSERT INTO customer(customer_id, name, natcode, birthdate, add, tel) VALUES (113, 'customer3', '0673347265', '2012-05-01','Amol', '09912223334');
INSERT INTO customer(customer_id, name, natcode, birthdate, add, tel) VALUES (114, 'customer4', '5245338416', '2014-04-08','Shiraz', '09145551330');
INSERT INTO customer(customer_id, name, natcode, birthdate, add, tel) VALUES (115, 'customer5', '7815177761', '2000-04-04','Ahvaz', '09104251380');
INSERT INTO customer(customer_id, name, natcode, birthdate, add, tel) VALUES (116, 'customer6', '3532787512', '1995-10-01','Mashad', '09011271236');
INSERT INTO customer(customer_id, name, natcode, birthdate, add, tel) VALUES (117, 'customer7', '5458167651', '2001-10-12','Isfahan', '09134451960');
INSERT INTO customer(customer_id, name, natcode, birthdate, add, tel) VALUES (118, 'customer8', '3245388985', '1990-11-21','Arak', '09907718778');
INSERT INTO customer(customer_id, name, natcode, birthdate, add, tel) VALUES (119, 'customer9', '2956717650', '1991-12-18','Semnan', '09919191991');
INSERT INTO customer(customer_id, name, natcode, birthdate, add, tel) VALUES (120, 'customer10', '0340344441', '2008-08-07','Isfahan', '09131181778');
INSERT INTO customer(customer_id, name, natcode, birthdate, add, tel) VALUES (121, 'customer11', '1818181818', '2007-08-08','Isfahan', '09191232312');
INSERT INTO customer(customer_id, name, natcode, birthdate, add, tel) VALUES (122, 'customer12', '1098762636', '2002-02-01','Isfahan', '09609323723');


INSERT INTO trn_src_des(voucher_id, trndate, trntime, amount, sourcedep, desdep, branchid, trn_desc) VALUES (1231,'2022-12-01', '100101', 20000, 1230, 1240, 1, 'واریز');
INSERT INTO trn_src_des(voucher_id, trndate, trntime, amount, sourcedep, desdep, branchid, trn_desc) VALUES (1232,'2022-12-11', '100101', 20000, 1231, 1240, 1, 'واریز');
INSERT INTO trn_src_des(voucher_id, trndate, trntime, amount, sourcedep, desdep, branchid, trn_desc) VALUES (1233,'2022-12-21', '100101', 60000, 1232, 1240, 1, 'واریز');
INSERT INTO trn_src_des(voucher_id, trndate, trntime, amount, sourcedep, desdep, branchid, trn_desc) VALUES (1234,'2023-01-01', '113008', 100000, 1240, 1250, 1, 'واریز');
INSERT INTO trn_src_des(voucher_id, trndate, trntime, amount, sourcedep, desdep, branchid, trn_desc) VALUES (1235,'2023-01-02', '113008', 100000, 1250, 1251, 1, 'واریز');
INSERT INTO trn_src_des(voucher_id, trndate, trntime, amount, sourcedep, desdep, branchid, trn_desc) VALUES (1236,'2023-01-02', '113008', 40000, 1250, 1252, 1, 'واریز');
INSERT INTO trn_src_des(voucher_id, trndate, trntime, amount, sourcedep, desdep, branchid, trn_desc) VALUES (1237,'2023-01-02', '110103', 50000, 1250, 1253, 1, 'واریز');
INSERT INTO trn_src_des(voucher_id, trndate, trntime, amount, sourcedep, desdep, branchid, trn_desc) VALUES (1238,'2023-01-03', '110101', 20000, 1250, 1254, 1, 'واریز');
INSERT INTO trn_src_des(voucher_id, trndate, trntime, amount, sourcedep, desdep, branchid, trn_desc) VALUES (1241,'2022-11-01', '081201', 19000, NULL, 1230, 1, 'کارت به کارت');
INSERT INTO trn_src_des(voucher_id, trndate, trntime, amount, sourcedep, desdep, branchid, trn_desc) VALUES (1242,'2022-12-20', '100101', 65000, NULL, 1232, 1, 'نقدی');
INSERT INTO trn_src_des(voucher_id, trndate, trntime, amount, sourcedep, desdep, branchid, trn_desc) VALUES (1243,'2023-02-03', '121212', 30000, 1253, 1460, 1, 'واریز');
INSERT INTO trn_src_des(voucher_id, trndate, trntime, amount, sourcedep, desdep, branchid, trn_desc) VALUES (1244,'2023-02-04', '131211', 30000, 1460, NULL, 1, 'نقدی');
INSERT INTO trn_src_des(voucher_id, trndate, trntime, amount, sourcedep, desdep, branchid, trn_desc) VALUES (1245,'2023-04-04', '140102', 25000, 1253, NULL, 1, 'پایا');


INSERT INTO deposit(dep_id, dep_type, customer_id, opendate, status) VALUES (1230, 1, 111, '2020-03-02', 1);
INSERT INTO deposit(dep_id, dep_type, customer_id, opendate, status) VALUES (1231, 1, 112, '2019-03-22', 1);
INSERT INTO deposit(dep_id, dep_type, customer_id, opendate, status) VALUES (1232, 1, 113, '2018-05-12', 1);
INSERT INTO deposit(dep_id, dep_type, customer_id, opendate, status) VALUES (1240, 1, 114, '2020-10-10', 1);
INSERT INTO deposit(dep_id, dep_type, customer_id, opendate, status) VALUES (1250, 1, 115, '2019-08-09', 1);
INSERT INTO deposit(dep_id, dep_type, customer_id, opendate, status) VALUES (1251, 1, 116, '2018-12-01', 1);
INSERT INTO deposit(dep_id, dep_type, customer_id, opendate, status) VALUES (1252, 1, 117, '2020-11-11', 1);
INSERT INTO deposit(dep_id, dep_type, customer_id, opendate, status) VALUES (1253, 1, 118, '2019-01-29', 1);
INSERT INTO deposit(dep_id, dep_type, customer_id, opendate, status) VALUES (1254, 1, 119, '2018-02-02', 1);
INSERT INTO deposit(dep_id, dep_type, customer_id, opendate, status) VALUES (1255, 1, 120, '2020-03-01', 1);
INSERT INTO deposit(dep_id, dep_type, customer_id, opendate, status) VALUES (1256, 1, 121, '2020-03-02', 1);
INSERT INTO deposit(dep_id, dep_type, customer_id, opendate, status) VALUES (1460, 1, 122, '2019-12-01', 1);

