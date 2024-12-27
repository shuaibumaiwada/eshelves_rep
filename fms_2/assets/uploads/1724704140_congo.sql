/*
SQLyog Enterprise v4.06 RC1
Host - 5.5.5-10.4.24-MariaDB : Database - congo
*********************************************************************
Server version : 5.5.5-10.4.24-MariaDB
*/


USE `congo`;

/*Table structure for table `acc_account` */

drop table if exists `acc_account`;

CREATE TABLE `acc_account` (
  `account_id` int(11) NOT NULL AUTO_INCREMENT,
  `sector_name` varchar(255) NOT NULL,
  `sector_type` varchar(120) NOT NULL,
  `status` tinyint(1) NOT NULL,
  `date` date DEFAULT '1970-01-02',
  PRIMARY KEY (`account_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

/*Data for the table `acc_account` */

/*Table structure for table `acc_account_name` */

drop table if exists `acc_account_name`;

CREATE TABLE `acc_account_name` (
  `account_id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `account_name` varchar(255) NOT NULL,
  `account_type` int(11) NOT NULL,
  PRIMARY KEY (`account_id`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8;

/*Data for the table `acc_account_name` */

insert into `acc_account_name` values (1,'Employee Salary',0),(3,'Example',1),(4,'Loan Expense',0),(5,'Loan Income',1);

/*Table structure for table `acc_bank` */

drop table if exists `acc_bank`;

CREATE TABLE `acc_bank` (
  `bank_id` int(11) NOT NULL AUTO_INCREMENT,
  `bank_name` varchar(200) NOT NULL,
  `branch_name` varchar(255) NOT NULL,
  `account_number` varchar(50) NOT NULL,
  `opening_credit` int(11) DEFAULT NULL,
  `status` tinyint(1) NOT NULL,
  `date` date NOT NULL,
  PRIMARY KEY (`bank_id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8;

/*Data for the table `acc_bank` */

insert into `acc_bank` values (1,'DBBL','GUlshan','110.101.3243',934875987,1,'2018-06-14'),(2,'CITY bANK','Motijheel','120324234',3452324,1,'2018-06-14'),(3,'Family Bank','sonalux','23456',0,1,'2018-08-16');

/*Table structure for table `acc_coa` */

drop table if exists `acc_coa`;

CREATE TABLE `acc_coa` (
  `HeadCode` varchar(50) COLLATE utf8_unicode_ci NOT NULL,
  `HeadName` varchar(100) COLLATE utf8_unicode_ci NOT NULL,
  `PHeadName` varchar(50) COLLATE utf8_unicode_ci NOT NULL,
  `HeadLevel` int(11) NOT NULL,
  `IsActive` tinyint(1) NOT NULL,
  `IsTransaction` tinyint(1) NOT NULL,
  `IsGL` tinyint(1) NOT NULL,
  `HeadType` char(1) COLLATE utf8_unicode_ci NOT NULL,
  `IsBudget` tinyint(1) NOT NULL,
  `IsDepreciation` tinyint(1) NOT NULL,
  `DepreciationRate` decimal(18,2) NOT NULL,
  `CreateBy` varchar(50) COLLATE utf8_unicode_ci NOT NULL,
  `CreateDate` datetime NOT NULL,
  `UpdateBy` varchar(50) COLLATE utf8_unicode_ci NOT NULL,
  `UpdateDate` datetime NOT NULL,
  PRIMARY KEY (`HeadName`),
  KEY `HeadCode` (`HeadCode`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

/*Data for the table `acc_coa` */

insert into `acc_coa` values ('4021403','AC','Repair and Maintenance',3,1,1,0,'E',0,0,'0.00','admin','2015-10-15 19:33:55','','0000-00-00 00:00:00'),('50202','Account Payable','Current Liabilities',2,1,0,1,'L',0,0,'0.00','admin','2015-10-15 19:50:43','','0000-00-00 00:00:00'),('10203','Account Receivable','Current Asset',2,1,0,0,'A',0,0,'0.00','','0000-00-00 00:00:00','admin','2013-09-18 15:29:35'),('1020201','Advance','Advance, Deposit And Pre-payments',3,1,0,1,'A',0,0,'0.00','Zoherul','2015-05-31 13:29:12','admin','2015-12-31 16:46:32'),('102020103','Advance House Rent','Advance',4,1,1,0,'A',0,0,'0.00','admin','2016-10-02 16:55:38','admin','2016-10-02 16:57:32'),('10202','Advance, Deposit And Pre-payments','Current Asset',2,1,0,1,'A',0,0,'0.00','1','2021-10-02 18:18:36','admin','2015-12-31 16:46:24'),('4020602','Advertisement and Publicity','Promonational Expence',3,1,1,0,'E',0,0,'0.00','admin','2015-10-15 18:51:44','','0000-00-00 00:00:00'),('102010206','AIBL','Cash At Bank',4,1,1,0,'A',0,0,'0.00','1','2021-10-06 09:16:58','','0000-00-00 00:00:00'),('1010410','Air Cooler','Others Assets',3,1,1,0,'A',0,0,'0.00','admin','2016-05-23 12:13:55','','0000-00-00 00:00:00'),('4020603','AIT Against Advertisement','Promonational Expence',3,1,1,0,'E',0,0,'0.00','admin','2015-10-15 18:52:09','','0000-00-00 00:00:00'),('1','Assets','COA',0,1,0,0,'A',0,0,'0.00','','0000-00-00 00:00:00','','0000-00-00 00:00:00'),('1010204','Attendance Machine','Office Equipment',3,1,1,0,'A',0,0,'0.00','admin','2015-10-15 15:49:31','','0000-00-00 00:00:00'),('40216','Audit Fee','Other Expenses',2,1,1,1,'E',0,0,'0.00','admin','2017-07-18 12:54:30','','0000-00-00 00:00:00'),('102010202','Bank AlFalah','Cash At Bank',4,1,1,0,'A',0,0,'0.00','admin','2015-10-15 15:32:37','admin','2015-10-15 15:32:52'),('4021002','Bank Charge','Financial Expenses',3,1,1,0,'E',0,0,'0.00','admin','2015-10-15 19:21:03','','0000-00-00 00:00:00'),('30203','Bank Interest','Other Income',2,1,1,1,'I',0,0,'0.00','Obaidul','2015-01-03 14:49:54','admin','2016-09-25 11:04:19'),('1010104','Book Shelf','Furniture & Fixturers',3,1,1,0,'A',0,0,'0.00','admin','2015-10-15 15:46:11','','0000-00-00 00:00:00'),('1010407','Books and Journal','Others Assets',3,1,1,0,'A',0,0,'0.00','admin','2016-03-27 10:45:37','','0000-00-00 00:00:00'),('4020604','Business Development Expenses','Promonational Expence',3,1,1,0,'E',0,0,'0.00','admin','2015-10-15 18:52:29','','0000-00-00 00:00:00'),('4020606','Campaign Expenses','Promonational Expence',3,1,1,0,'E',0,0,'0.00','admin','2015-10-15 18:52:57','admin','2016-09-19 14:52:48'),('4020502','Campus Rent','House Rent',3,1,1,0,'E',0,0,'0.00','admin','2015-10-15 18:46:53','admin','2017-04-27 17:02:39'),('40212','Car Running Expenses','Other Expenses',2,1,0,1,'E',0,0,'0.00','admin','2015-10-15 19:28:43','','0000-00-00 00:00:00'),('102010304','Card Payment','Online Payment',4,1,1,0,'A',0,0,'0.00','1','2021-09-27 11:56:27','','0000-00-00 00:00:00'),('10201','Cash & Cash Equivalent','Current Asset',2,1,0,1,'A',0,0,'0.00','1','2021-10-02 18:20:00','admin','2015-10-15 15:57:55'),('1020102','Cash At Bank','Cash & Cash Equivalent',3,1,0,1,'A',0,0,'0.00','1','2021-10-02 18:19:42','admin','2015-10-15 15:32:42'),('1020101','Cash In Hand','Cash & Cash Equivalent',3,1,1,0,'A',0,0,'0.00','1','2021-10-02 16:18:59','admin','2016-05-23 12:05:43'),('30101','Cash Sale','Store Income',1,1,1,1,'I',0,0,'0.00','2','2018-07-08 07:51:26','','0000-00-00 00:00:00'),('1010207','CCTV','Office Equipment',3,1,1,0,'A',0,0,'0.00','admin','2015-10-15 15:51:24','','0000-00-00 00:00:00'),('102020102','CEO Current A/C','Advance',4,1,1,0,'A',0,0,'0.00','admin','2016-09-25 11:54:54','','0000-00-00 00:00:00'),('1010101','Class Room Chair','Furniture & Fixturers',3,1,1,0,'A',0,0,'0.00','admin','2015-10-15 15:45:29','','0000-00-00 00:00:00'),('4021407','Close Circuit Cemera','Repair and Maintenance',3,1,1,0,'E',0,0,'0.00','admin','2015-10-15 19:35:35','','0000-00-00 00:00:00'),('4020601','Commision on Admission','Promonational Expence',3,1,1,0,'E',0,0,'0.00','admin','2015-10-15 18:51:21','admin','2016-09-19 14:42:54'),('1010206','Computer','Office Equipment',3,1,1,0,'A',0,0,'0.00','admin','2015-10-15 15:51:09','','0000-00-00 00:00:00'),('4021410','Computer (R)','Repair and Maintenance',3,1,1,0,'E',0,0,'0.00','Zoherul','2016-03-24 12:38:52','Zoherul','2016-03-24 12:41:40'),('1010102','Computer Table','Furniture & Fixturers',3,1,0,0,'A',0,0,'0.00','1','2021-10-24 15:49:49','','0000-00-00 00:00:00'),('301020401','Continuing Registration fee - UoL (Income)','Registration Fee (UOL) Income',4,1,1,0,'I',0,0,'0.00','admin','2015-10-15 17:40:40','','0000-00-00 00:00:00'),('4020904','Contratuall Staff Salary','Salary & Allowances',3,1,1,0,'E',0,0,'0.00','admin','2015-10-15 19:12:34','','0000-00-00 00:00:00'),('403','Cost of Sale','Expense',0,1,1,0,'E',0,0,'0.00','2','2018-07-08 10:37:16','','0000-00-00 00:00:00'),('30102','Credit Sale','Store Income',1,1,1,1,'I',0,0,'0.00','2','2018-07-08 07:51:34','','0000-00-00 00:00:00'),('4020709','Cultural Expense','Miscellaneous Expenses',3,1,1,0,'E',0,0,'0.00','nasmud','2017-04-29 12:45:10','','0000-00-00 00:00:00'),('102','Current Asset','Assets',1,1,0,0,'A',0,0,'0.00','1','2021-11-09 15:53:24','admin','2018-07-07 11:23:00'),('502','Current Liabilities','Liabilities',1,1,0,0,'L',0,0,'0.00','anwarul','2014-08-30 13:18:20','admin','2015-10-15 19:49:21'),('1020301','Customer Receivable','Account Receivable',3,1,0,1,'A',0,0,'0.00','2','2019-01-08 09:15:08','admin','2018-07-07 12:31:42'),('40100002','cw-Chichawatni','Store Expenses',2,1,1,0,'E',0,0,'0.00','2','2018-08-02 16:30:41','','0000-00-00 00:00:00'),('102010205','DBBL','Cash At Bank',4,1,1,0,'A',0,0,'0.00','1','2021-01-14 07:16:29','','0000-00-00 00:00:00'),('1020202','Deposit','Advance, Deposit And Pre-payments',3,1,0,0,'A',0,0,'0.00','admin','2015-10-15 15:40:42','','0000-00-00 00:00:00'),('4020605','Design & Printing Expense','Promonational Expence',3,1,1,0,'E',0,0,'0.00','admin','2015-10-15 18:55:00','','0000-00-00 00:00:00'),('102010201','Dhaka Bank','Cash At Bank',4,1,1,0,'A',0,0,'0.00','1','2021-01-14 07:02:53','','0000-00-00 00:00:00'),('4020404','Dish Bill','Utility Expenses',3,1,1,0,'E',0,0,'0.00','admin','2015-10-15 18:58:21','','0000-00-00 00:00:00'),('40215','Dividend','Other Expenses',2,1,1,1,'E',0,0,'0.00','admin','2016-09-25 14:07:55','','0000-00-00 00:00:00'),('4020403','Drinking Water Bill','Utility Expenses',3,1,1,0,'E',0,0,'0.00','admin','2015-10-15 18:58:10','','0000-00-00 00:00:00'),('1010211','DSLR Camera','Office Equipment',3,1,1,0,'A',0,0,'0.00','admin','2015-10-15 15:53:17','admin','2016-01-02 16:23:25'),('4020908','Earned Leave','Salary & Allowances',3,1,1,0,'E',0,0,'0.00','admin','2015-10-15 19:13:38','','0000-00-00 00:00:00'),('4020607','Education Fair Expenses','Promonational Expence',3,1,1,0,'E',0,0,'0.00','admin','2015-10-15 18:53:42','','0000-00-00 00:00:00'),('502020000001','EIOJG86X-SaleemYusuf','Account Payable',2,1,1,0,'L',0,0,'0.00','Garba Aliyu','2022-01-21 23:12:53','','0000-00-00 00:00:00'),('1010602','Electric Equipment','Electrical Equipment',3,1,1,0,'A',0,0,'0.00','admin','2016-03-27 10:44:51','','0000-00-00 00:00:00'),('1010203','Electric Kettle','Office Equipment',3,1,1,0,'A',0,0,'0.00','admin','2015-10-15 15:49:07','','0000-00-00 00:00:00'),('10106','Electrical Equipment','Non Current Assets',2,1,0,1,'A',0,0,'0.00','admin','2016-03-27 10:43:44','','0000-00-00 00:00:00'),('4020407','Electricity Bill','Utility Expenses',3,1,1,0,'E',0,0,'0.00','admin','2015-10-15 18:59:31','','0000-00-00 00:00:00'),('40201','Entertainment','Other Expenses',2,1,1,1,'E',0,0,'0.00','admin','2013-07-08 16:21:26','anwarul','2013-07-17 14:21:47'),('2','Equity','COA',0,1,0,0,'L',0,0,'0.00','','0000-00-00 00:00:00','','0000-00-00 00:00:00'),('4','Expense','COA',0,1,0,0,'E',0,0,'0.00','','0000-00-00 00:00:00','','0000-00-00 00:00:00'),('4020903','Faculty,Staff Salary & Allowances','Salary & Allowances',3,1,1,0,'E',0,0,'0.00','admin','2015-10-15 19:12:21','','0000-00-00 00:00:00'),('4021404','Fax Machine','Repair and Maintenance',3,1,1,0,'E',0,0,'0.00','admin','2015-10-15 19:34:15','','0000-00-00 00:00:00'),('4020905','Festival & Incentive Bonus','Salary & Allowances',3,1,1,0,'E',0,0,'0.00','admin','2015-10-15 19:12:48','','0000-00-00 00:00:00'),('1010103','File Cabinet','Furniture & Fixturers',3,1,1,0,'A',0,0,'0.00','admin','2015-10-15 15:46:02','','0000-00-00 00:00:00'),('40210','Financial Expenses','Other Expenses',2,1,0,1,'E',0,0,'0.00','anwarul','2013-08-20 12:24:31','admin','2015-10-15 19:20:36'),('1010403','Fire Extingushier','Others Assets',3,1,1,0,'A',0,0,'0.00','admin','2016-03-27 10:39:32','','0000-00-00 00:00:00'),('4021408','Furniture','Repair and Maintenance',3,1,1,0,'E',0,0,'0.00','admin','2015-10-15 19:35:47','','0000-00-00 00:00:00'),('10101','Furniture & Fixturers','Non Current Assets',2,1,0,1,'A',0,0,'0.00','anwarul','2013-08-20 16:18:15','anwarul','2013-08-21 13:35:40'),('4020406','Gas Bill','Utility Expenses',3,1,1,0,'E',0,0,'0.00','admin','2015-10-15 18:59:20','','0000-00-00 00:00:00'),('20201','General Reserve','Reserve & Surplus',2,1,1,0,'L',0,0,'0.00','admin','2016-09-25 14:07:12','admin','2016-10-02 17:48:49'),('10105','Generator','Non Current Assets',2,1,1,1,'A',0,0,'0.00','Zoherul','2016-02-27 16:02:35','admin','2016-05-23 12:05:18'),('4021414','Generator Repair','Repair and Maintenance',3,1,1,0,'E',0,0,'0.00','Zoherul','2016-06-16 10:21:05','','0000-00-00 00:00:00'),('40213','Generator Running Expenses','Other Expenses',2,1,0,1,'E',0,0,'0.00','admin','2015-10-15 19:29:29','','0000-00-00 00:00:00'),('10103','Groceries and Cutleries','Non Current Assets',2,1,1,1,'A',0,0,'0.00','2','2018-07-12 10:02:55','','0000-00-00 00:00:00'),('1010408','Gym Equipment','Others Assets',3,1,1,0,'A',0,0,'0.00','admin','2016-03-27 10:46:03','','0000-00-00 00:00:00'),('4020907','Honorarium','Salary & Allowances',3,1,1,0,'E',0,0,'0.00','admin','2015-10-15 19:13:26','','0000-00-00 00:00:00'),('30301','Hotel Room Booking','Service',2,1,1,0,'I',0,0,'0.00','1','2021-10-02 16:52:00','','0000-00-00 00:00:00'),('40205','House Rent','Other Expenses',2,1,0,1,'E',0,0,'0.00','anwarul','2013-08-24 10:26:56','','0000-00-00 00:00:00'),('40100001','HP-Hasilpur','Academic Expenses',2,1,1,0,'E',0,0,'0.00','2','2018-07-29 03:44:23','','0000-00-00 00:00:00'),('4020702','HR Recruitment Expenses','Miscellaneous Expenses',3,1,1,0,'E',0,0,'0.00','admin','2016-09-25 12:55:49','','0000-00-00 00:00:00'),('4020703','Incentive on Admission','Miscellaneous Expenses',3,1,1,0,'E',0,0,'0.00','admin','2016-09-25 12:56:09','','0000-00-00 00:00:00'),('3','Income','COA',0,1,0,0,'I',0,0,'0.00','','0000-00-00 00:00:00','','0000-00-00 00:00:00'),('30204','Income from Photocopy & Printing','Other Income',2,1,1,1,'I',0,0,'0.00','Zoherul','2015-07-14 10:29:54','admin','2016-09-25 11:04:28'),('5020302','Income Tax Payable','Liabilities for Expenses',3,1,0,1,'L',0,0,'0.00','admin','2016-09-19 11:18:17','admin','2016-09-28 13:18:35'),('102020302','Insurance Premium','Prepayment',4,1,1,0,'A',0,0,'0.00','admin','2016-09-19 13:10:57','','0000-00-00 00:00:00'),('4021001','Interest on Loan','Financial Expenses',3,1,1,0,'E',0,0,'0.00','admin','2015-10-15 19:20:53','admin','2016-09-19 14:53:34'),('4020401','Internet Bill','Utility Expenses',3,1,1,0,'E',0,0,'0.00','admin','2015-10-15 18:56:55','admin','2015-10-15 18:57:32'),('10107','Inventory','Non Current Assets',1,1,1,0,'A',0,0,'0.00','1','2021-10-02 16:45:42','','0000-00-00 00:00:00'),('4020409','Laundry Bill','Utility Expenses',3,1,1,0,'E',0,0,'0.00','1','2021-10-02 16:49:56','','0000-00-00 00:00:00'),('1010210','LCD TV','Office Equipment',3,1,1,0,'A',0,0,'0.00','admin','2015-10-15 15:52:27','','0000-00-00 00:00:00'),('30103','Lease Sale','Store Income',1,1,1,1,'I',0,0,'0.00','2','2018-07-08 07:51:52','','0000-00-00 00:00:00'),('5','Liabilities','COA',0,1,0,0,'L',0,0,'0.00','admin','2013-07-04 12:32:07','admin','2015-10-15 19:46:54'),('50203','Liabilities for Expenses','Current Liabilities',2,1,0,1,'L',0,0,'0.00','1','2021-10-02 17:02:33','','0000-00-00 00:00:00'),('4020707','Library Expenses','Miscellaneous Expenses',3,1,1,0,'E',0,0,'0.00','admin','2017-01-10 15:34:54','','0000-00-00 00:00:00'),('4021409','Lift','Repair and Maintenance',3,1,1,0,'E',0,0,'0.00','admin','2015-10-15 19:36:12','','0000-00-00 00:00:00'),('50101','Long Term Borrowing','Non Current Liabilities',2,1,0,1,'L',0,0,'0.00','admin','2013-07-04 12:32:26','admin','2015-10-15 19:47:40'),('4020608','Marketing & Promotion Exp.','Promonational Expence',3,1,1,0,'E',0,0,'0.00','admin','2015-10-15 18:53:59','','0000-00-00 00:00:00'),('4020901','Medical Allowance','Salary & Allowances',3,1,1,0,'E',0,0,'0.00','admin','2015-10-15 19:11:33','','0000-00-00 00:00:00'),('1010411','Metal Ditector','Others Assets',3,1,1,0,'A',0,0,'0.00','Zoherul','2016-08-22 10:55:22','','0000-00-00 00:00:00'),('4021413','Micro Oven','Repair and Maintenance',3,1,1,0,'E',0,0,'0.00','Zoherul','2016-05-12 14:53:51','','0000-00-00 00:00:00'),('30202','Miscellaneous (Income)','Other Income',2,1,1,1,'I',0,0,'0.00','anwarul','2014-02-06 15:26:31','admin','2016-09-25 11:04:35'),('4020909','Miscellaneous Benifit','Salary & Allowances',3,1,1,0,'E',0,0,'0.00','admin','2015-10-15 19:13:53','','0000-00-00 00:00:00'),('4020701','Miscellaneous Exp','Miscellaneous Expenses',3,1,1,0,'E',0,0,'0.00','admin','2016-09-25 12:54:39','','0000-00-00 00:00:00'),('40207','Miscellaneous Expenses','Other Expenses',2,1,0,1,'E',0,0,'0.00','anwarul','2014-04-26 16:49:56','admin','2016-09-25 12:54:19'),('1010401','Mobile Phone','Others Assets',3,1,1,0,'A',0,0,'0.00','admin','2016-01-29 10:43:30','','0000-00-00 00:00:00'),('102020101','Mr Ashiqur Rahman','Advance',4,1,1,0,'A',0,0,'0.00','admin','2015-12-31 16:47:23','admin','2016-09-25 11:55:13'),('1010212','Network Accessories','Office Equipment',3,1,1,0,'A',0,0,'0.00','admin','2016-01-02 16:23:32','','0000-00-00 00:00:00'),('4020408','News Paper Bill','Utility Expenses',3,1,1,0,'E',0,0,'0.00','admin','2016-01-02 15:55:57','','0000-00-00 00:00:00'),('101','Non Current Assets','Assets',1,1,0,1,'A',0,0,'0.00','1','2021-10-03 18:21:23','admin','2015-10-15 15:29:11'),('501','Non Current Liabilities','Liabilities',1,1,0,0,'L',0,0,'0.00','anwarul','2014-08-30 13:18:20','admin','2015-10-15 19:49:21'),('1010404','Office Decoration','Others Assets',3,1,1,0,'A',0,0,'0.00','admin','2016-03-27 10:40:02','','0000-00-00 00:00:00'),('10102','Office Equipment','Non Current Assets',2,1,0,1,'A',0,0,'0.00','anwarul','2013-12-06 18:08:00','admin','2015-10-15 15:48:21'),('4021401','Office Repair & Maintenance','Repair and Maintenance',3,1,1,0,'E',0,0,'0.00','admin','2015-10-15 19:33:15','','0000-00-00 00:00:00'),('30201','Office Stationary (Income)','Other Income',2,1,1,1,'I',0,0,'0.00','anwarul','2013-07-17 15:21:06','admin','2016-09-25 11:04:50'),('1020103','Online Payment','Cash & Cash Equivalent',3,1,0,1,'A',0,0,'0.00','1','2021-10-02 18:20:18','','0000-00-00 00:00:00'),('402','Other Expenses','Expense',1,1,0,1,'E',0,0,'0.00','1','2021-10-27 17:56:45','admin','2015-10-15 18:37:42'),('302','Other Income','Income',1,1,0,0,'I',0,0,'0.00','2','2018-07-07 13:40:57','admin','2016-09-25 11:04:09'),('40211','Others (Non Academic Expenses)','Other Expenses',2,1,0,1,'E',0,0,'0.00','Obaidul','2014-12-03 16:05:42','admin','2015-10-15 19:22:09'),('30205','Others (Non-Academic Income)','Other Income',2,1,0,1,'I',0,0,'0.00','admin','2015-10-15 17:23:49','admin','2015-10-15 17:57:52'),('10104','Others Assets','Non Current Assets',2,1,0,1,'A',0,0,'0.00','admin','2016-01-29 10:43:16','','0000-00-00 00:00:00'),('4020910','Outstanding Salary','Salary & Allowances',3,1,1,0,'E',0,0,'0.00','Zoherul','2016-04-24 11:56:50','','0000-00-00 00:00:00'),('4021405','Oven','Repair and Maintenance',3,1,1,0,'E',0,0,'0.00','admin','2015-10-15 19:34:31','','0000-00-00 00:00:00'),('4021412','PABX-Repair','Repair and Maintenance',3,1,1,0,'E',0,0,'0.00','Zoherul','2016-04-24 14:40:18','','0000-00-00 00:00:00'),('4020902','Part-time Staff Salary','Salary & Allowances',3,1,1,0,'E',0,0,'0.00','admin','2015-10-15 19:12:06','','0000-00-00 00:00:00'),('102010301','Paypal','Online Payment',4,1,1,0,'A',0,0,'0.00','1','2021-01-13 10:02:51','','0000-00-00 00:00:00'),('1010202','Photocopy & Fax Machine','Office Equipment',3,1,1,0,'A',0,0,'0.00','admin','2015-10-15 15:47:27','admin','2016-05-23 12:14:40'),('4021411','Photocopy Machine Repair','Repair and Maintenance',3,1,1,0,'E',0,0,'0.00','Zoherul','2016-04-24 12:40:02','admin','2017-04-27 17:03:17'),('3020503','Practical Fee','Others (Non-Academic Income)',3,1,1,1,'I',0,0,'0.00','admin','2017-07-22 18:00:37','','0000-00-00 00:00:00'),('1020203','Prepayment','Advance, Deposit And Pre-payments',3,1,0,1,'A',0,0,'0.00','admin','2015-10-15 15:40:51','admin','2015-12-31 16:49:58'),('1010201','Printer','Office Equipment',3,1,1,0,'A',0,0,'0.00','admin','2015-10-15 15:47:15','','0000-00-00 00:00:00'),('40202','Printing and Stationary','Other Expenses',2,1,1,1,'E',0,0,'0.00','admin','2013-07-08 16:21:45','admin','2016-09-19 14:39:32'),('3020502','Professional Training Course(Oracal-1)','Others (Non-Academic Income)',3,1,1,0,'I',0,0,'0.00','nasim','2017-06-22 13:28:05','','0000-00-00 00:00:00'),('30207','Professional Training Course(Oracal)','Other Income',2,1,0,1,'I',0,0,'0.00','nasim','2017-06-22 13:24:16','nasim','2017-06-22 13:25:56'),('1010208','Projector','Office Equipment',3,1,1,0,'A',0,0,'0.00','admin','2015-10-15 15:51:44','','0000-00-00 00:00:00'),('40206','Promonational Expence','Other Expenses',2,1,0,1,'E',0,0,'0.00','anwarul','2013-07-11 13:48:57','anwarul','2013-07-17 14:23:03'),('40214','Repair and Maintenance','Other Expenses',2,1,0,1,'E',0,0,'0.00','admin','2015-10-15 19:32:46','','0000-00-00 00:00:00'),('202','Reserve & Surplus','Equity',1,1,0,1,'L',0,0,'0.00','admin','2016-09-25 14:06:34','admin','2016-10-02 17:48:57'),('30303','Restaurant Food','Service',2,1,1,0,'I',0,0,'0.00','1','2021-10-02 16:52:31','','0000-00-00 00:00:00'),('20102','Retained Earnings','Share Holders Equity',2,1,1,1,'L',0,0,'0.00','admin','2016-05-23 11:20:40','admin','2016-09-25 14:05:06'),('4020708','River Cruse','Miscellaneous Expenses',3,1,1,0,'E',0,0,'0.00','admin','2017-04-24 15:35:25','','0000-00-00 00:00:00'),('102020105','Salary','Advance',4,1,0,1,'A',0,0,'0.00','1','2021-10-02 16:20:05','','0000-00-00 00:00:00'),('40209','Salary & Allowances','Other Expenses',2,1,0,1,'E',0,0,'0.00','anwarul','2013-12-12 11:22:58','','0000-00-00 00:00:00'),('404','Sale Discount','Expense',1,1,1,0,'E',0,0,'0.00','2','2018-07-19 10:15:11','','0000-00-00 00:00:00'),('1010406','Security Equipment','Others Assets',3,1,1,0,'A',0,0,'0.00','admin','2016-03-27 10:41:30','','0000-00-00 00:00:00'),('303','Service','Income',1,1,0,1,'I',0,0,'0.00','1','2021-09-27 11:37:54','','0000-00-00 00:00:00'),('30304','Service Charge','Service',2,1,1,0,'I',0,0,'0.00','1','2021-10-05 09:42:19','','0000-00-00 00:00:00'),('20101','Share Capital','Share Holders Equity',2,1,0,1,'L',0,0,'0.00','anwarul','2013-12-08 19:37:32','admin','2015-10-15 19:45:35'),('201','Share Holders Equity','Equity',1,1,0,0,'L',0,0,'0.00','','0000-00-00 00:00:00','admin','2015-10-15 19:43:51'),('50201','Short Term Borrowing','Current Liabilities',2,1,0,1,'L',0,0,'0.00','admin','2015-10-15 19:50:30','','0000-00-00 00:00:00'),('40208','Software Development Expenses','Other Expenses',2,1,0,1,'E',0,0,'0.00','anwarul','2013-11-21 14:13:01','admin','2015-10-15 19:02:51'),('4020906','Special Allowances','Salary & Allowances',3,1,1,0,'E',0,0,'0.00','admin','2015-10-15 19:13:13','','0000-00-00 00:00:00'),('50102','Sponsors Loan','Non Current Liabilities',2,1,0,1,'L',0,0,'0.00','admin','2015-10-15 19:48:02','','0000-00-00 00:00:00'),('4020706','Sports Expense','Miscellaneous Expenses',3,1,1,0,'E',0,0,'0.00','nasmud','2016-11-09 13:16:53','','0000-00-00 00:00:00'),('102010302','SSLCOMMERZ','Online Payment',4,1,1,0,'A',0,0,'0.00','1','2021-01-13 10:04:24','','0000-00-00 00:00:00'),('102010203','Standard Bank','Cash At Bank',4,1,1,0,'A',0,0,'0.00','admin','2015-10-15 15:33:33','admin','2015-10-15 15:33:48'),('102010204','State Bank','Cash At Bank',4,1,1,0,'A',0,0,'0.00','1','2021-01-14 07:22:24','','0000-00-00 00:00:00'),('401','Store Expenses','Expense',1,1,0,0,'E',0,0,'0.00','2','2018-07-07 13:38:59','admin','2015-10-15 17:58:46'),('301','Store Income','Income',1,1,0,0,'I',0,0,'0.00','2','2018-07-07 13:40:37','admin','2015-09-17 17:00:02'),('3020501','Students Info. Correction Fee','Others (Non-Academic Income)',3,1,1,0,'I',0,0,'0.00','admin','2015-10-15 17:24:45','','0000-00-00 00:00:00'),('1010601','Sub Station','Electrical Equipment',3,1,1,0,'A',0,0,'0.00','admin','2016-03-27 10:44:11','','0000-00-00 00:00:00'),('502020501','sup_002-Yahaya Salihu','Suppliers',4,1,1,0,'L',0,0,'0.00','1','2022-02-24 08:22:43','','0000-00-00 00:00:00'),('5020205','Suppliers','Account Payable',3,1,0,1,'L',0,0,'0.00','2','2018-12-15 06:50:12','','0000-00-00 00:00:00'),('5020303','TAX Payable','Liabilities for Expenses',3,1,1,0,'L',0,0,'0.00','1','2021-10-02 17:03:25','','0000-00-00 00:00:00'),('1020204','TAX Receivable','Advance, Deposit And Pre-payments',3,0,1,0,'A',0,0,'0.00','1','2021-10-04 12:29:26','','0000-00-00 00:00:00'),('4020704','TB Care Expenses','Miscellaneous Expenses',3,1,1,0,'E',0,0,'0.00','admin','2016-10-08 13:03:04','','0000-00-00 00:00:00'),('30206','TB Care Income','Other Income',2,1,1,1,'I',0,0,'0.00','admin','2016-10-08 13:00:56','','0000-00-00 00:00:00'),('4020501','TDS on House Rent','House Rent',3,1,1,0,'E',0,0,'0.00','admin','2015-10-15 18:44:07','admin','2016-09-19 14:40:16'),('502030201','TDS Payable House Rent','Income Tax Payable',4,1,1,0,'L',0,0,'0.00','admin','2016-09-19 11:19:42','admin','2016-09-28 13:19:37'),('502030203','TDS Payable on Advertisement Bill','Income Tax Payable',4,1,1,0,'L',0,0,'0.00','admin','2016-09-28 13:20:51','','0000-00-00 00:00:00'),('502030202','TDS Payable on Salary','Income Tax Payable',4,1,1,0,'L',0,0,'0.00','admin','2016-09-28 13:20:17','','0000-00-00 00:00:00'),('4021402','Tea Kettle','Repair and Maintenance',3,1,1,0,'E',0,0,'0.00','admin','2015-10-15 19:33:45','','0000-00-00 00:00:00'),('4020402','Telephone Bill','Utility Expenses',3,1,1,0,'E',0,0,'0.00','admin','2015-10-15 18:57:59','','0000-00-00 00:00:00'),('1010209','Telephone Set & PABX','Office Equipment',3,1,1,0,'A',0,0,'0.00','admin','2015-10-15 15:51:57','admin','2016-10-02 17:10:40'),('40203','Travelling & Conveyance','Other Expenses',2,1,1,1,'E',0,0,'0.00','admin','2013-07-08 16:22:06','admin','2015-10-15 18:45:13'),('4021406','TV','Repair and Maintenance',3,1,1,0,'E',0,0,'0.00','admin','2015-10-15 19:35:07','','0000-00-00 00:00:00'),('1010205','UPS','Office Equipment',3,1,1,0,'A',0,0,'0.00','admin','2015-10-15 15:50:38','','0000-00-00 00:00:00'),('40204','Utility Expenses','Other Expenses',2,1,0,1,'E',0,0,'0.00','anwarul','2013-07-11 16:20:24','admin','2016-01-02 15:55:22'),('4020503','VAT on House Rent Exp','House Rent',3,1,1,0,'E',0,0,'0.00','admin','2015-10-15 18:49:22','admin','2016-09-25 14:00:52'),('5020301','VAT Payable','Liabilities for Expenses',3,0,1,0,'L',0,0,'0.00','1','2021-10-28 09:56:55','admin','2016-09-28 13:23:53'),('1010409','Vehicle A/C','Others Assets',3,1,1,0,'A',0,0,'0.00','Zoherul','2016-05-12 12:13:21','','0000-00-00 00:00:00'),('1010405','Voltage Stablizer','Others Assets',3,1,1,0,'A',0,0,'0.00','admin','2016-03-27 10:40:59','','0000-00-00 00:00:00'),('1010105','Waiting Sofa - Steel','Furniture & Fixturers',3,1,1,0,'A',0,0,'0.00','admin','2015-10-15 15:46:29','','0000-00-00 00:00:00'),('102030101','Walk in Customer','Customer Receivable',4,1,1,0,'A',0,0,'0.00','1','2021-10-02 16:44:50','','0000-00-00 00:00:00'),('4020405','WASA Bill','Utility Expenses',3,1,1,0,'E',0,0,'0.00','admin','2015-10-15 18:58:51','','0000-00-00 00:00:00'),('1010402','Water Purifier','Others Assets',3,1,1,0,'A',0,0,'0.00','admin','2016-01-29 11:14:11','','0000-00-00 00:00:00'),('4020705','Website Development Expenses','Miscellaneous Expenses',3,1,1,0,'E',0,0,'0.00','admin','2016-10-15 12:42:47','','0000-00-00 00:00:00');

/*Table structure for table `acc_customer_income` */

drop table if exists `acc_customer_income`;

CREATE TABLE `acc_customer_income` (
  `ID` int(11) NOT NULL AUTO_INCREMENT,
  `Customer_Id` varchar(50) COLLATE utf8_unicode_ci NOT NULL,
  `VNo` varchar(50) COLLATE utf8_unicode_ci NOT NULL,
  `Date` date NOT NULL,
  `Amount` decimal(10,2) NOT NULL,
  UNIQUE KEY `ID` (`ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

/*Data for the table `acc_customer_income` */

/*Table structure for table `acc_glsummarybalance` */

drop table if exists `acc_glsummarybalance`;

CREATE TABLE `acc_glsummarybalance` (
  `ID` int(11) NOT NULL AUTO_INCREMENT,
  `COAID` varchar(50) COLLATE utf8_unicode_ci DEFAULT NULL,
  `Debit` decimal(18,2) DEFAULT NULL,
  `Credit` decimal(18,2) DEFAULT NULL,
  `FYear` int(11) DEFAULT NULL,
  `CreateBy` varchar(50) COLLATE utf8_unicode_ci DEFAULT NULL,
  `CreateDate` datetime DEFAULT NULL,
  UNIQUE KEY `ID` (`ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

/*Data for the table `acc_glsummarybalance` */

/*Table structure for table `acc_income_expence` */

drop table if exists `acc_income_expence`;

CREATE TABLE `acc_income_expence` (
  `ID` int(11) NOT NULL AUTO_INCREMENT,
  `VNo` varchar(50) COLLATE utf8_unicode_ci NOT NULL,
  `Vtype` varchar(50) COLLATE utf8_unicode_ci DEFAULT NULL,
  `Date` date NOT NULL,
  `Paymode` varchar(50) COLLATE utf8_unicode_ci NOT NULL,
  `Perpose` varchar(50) COLLATE utf8_unicode_ci DEFAULT NULL,
  `Narration` text COLLATE utf8_unicode_ci DEFAULT NULL,
  `StoreID` int(11) NOT NULL,
  `COAID` varchar(50) COLLATE utf8_unicode_ci NOT NULL,
  `Amount` decimal(10,2) NOT NULL,
  `IsApprove` tinyint(4) NOT NULL,
  `CreateBy` varchar(50) COLLATE utf8_unicode_ci NOT NULL,
  `CreateDate` datetime NOT NULL,
  UNIQUE KEY `ID` (`ID`),
  KEY `VNo` (`VNo`,`IsApprove`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

/*Data for the table `acc_income_expence` */

/*Table structure for table `acc_temp` */

drop table if exists `acc_temp`;

CREATE TABLE `acc_temp` (
  `COAID` varchar(50) COLLATE utf8_unicode_ci NOT NULL,
  `Name` varchar(50) COLLATE utf8_unicode_ci NOT NULL,
  `Debit` decimal(18,2) NOT NULL,
  `Credit` decimal(18,2) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

/*Data for the table `acc_temp` */

/*Table structure for table `acc_transaction` */

drop table if exists `acc_transaction`;

CREATE TABLE `acc_transaction` (
  `ID` int(11) NOT NULL AUTO_INCREMENT,
  `VNo` varchar(50) CHARACTER SET utf8 DEFAULT NULL,
  `Vtype` varchar(50) COLLATE utf8_unicode_ci DEFAULT NULL,
  `VDate` date DEFAULT NULL,
  `COAID` varchar(50) COLLATE utf8_unicode_ci NOT NULL,
  `Narration` text COLLATE utf8_unicode_ci DEFAULT NULL,
  `Debit` decimal(18,2) DEFAULT NULL,
  `Credit` decimal(18,2) DEFAULT NULL,
  `StoreID` int(11) NOT NULL,
  `IsPosted` char(10) COLLATE utf8_unicode_ci DEFAULT NULL,
  `CreateBy` varchar(50) COLLATE utf8_unicode_ci DEFAULT NULL,
  `CreateDate` datetime DEFAULT NULL,
  `UpdateBy` varchar(50) COLLATE utf8_unicode_ci DEFAULT NULL,
  `UpdateDate` datetime DEFAULT NULL,
  `IsAppove` char(10) COLLATE utf8_unicode_ci DEFAULT NULL,
  UNIQUE KEY `ID` (`ID`),
  KEY `COAID` (`COAID`)
) ENGINE=InnoDB AUTO_INCREMENT=58 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

/*Data for the table `acc_transaction` */

insert into `acc_transaction` values (1,'000001','CIV','2022-01-21','1020101','Cash in Hand Debited For advance payment Invoice# 000001','24000.00','0.00',0,'1','1','2022-01-21 00:44:40','','','1'),(2,'000001','CIV','2022-01-21','30301','Hotel credited for room advance rent Invoice# 000001','0.00','24000.00',0,'1','1','2022-01-21 00:44:40','','','1'),(3,'000001','CIV','2022-01-21','102030101','Hotel customer debited for advance room booking Invoice# 000001','24000.00','0.00',0,'1','1','2022-01-21 00:44:40','','','1'),(4,'000001','CIV','2022-01-21','102030101','Hotel customer credited for advance room booking Invoice# 000001','0.00','24000.00',0,'1','1','2022-01-21 00:44:40','','','1'),(6,'Journal-1','JV','2022-01-22','1010410','','1000.00','1000.00',0,'1','','2022-01-22 22:19:11','','','1'),(7,'000002','CIV','2022-01-23','1020101','Cash in Hand Debited For advance payment Invoice# 000002','80000.00','0.00',0,'1','1','2022-01-23 23:51:47','','','1'),(8,'000002','CIV','2022-01-23','30301','Hotel credited for room advance rent Invoice# 000002','0.00','80000.00',0,'1','1','2022-01-23 23:51:47','','','1'),(9,'000002','CIV','2022-01-23','102030101','Hotel customer debited for advance room booking Invoice# 000002','80000.00','0.00',0,'1','1','2022-01-23 23:51:47','','','1'),(10,'000002','CIV','2022-01-23','102030101','Hotel customer credited for advance room booking Invoice# 000002','0.00','80000.00',0,'1','1','2022-01-23 23:51:47','','','1'),(11,'Sale0001','Sale Restaurent Service','2022-01-23','1020101','Cash in Hand payment Debit For Restaurent Invoice# 0001','1100.00','0.00',0,'1','1','2022-01-23 00:00:00','','','1'),(12,'0001','CIV','2022-01-23','102030101','Customer debit for Restaurent Invoice# 0001','1100.00','0.00',0,'1','1','2022-01-23 00:00:00','','','1'),(13,'0001','CIV','2022-01-23','30303','Restaurant Food Credit for Restaurent Invoice# 0001','0.00','1100.00',0,'1','1','2022-01-23 00:00:00','','','1'),(14,'0001','CIV','2022-01-23','102030101','Customer Credit for Restaurent Invoice# 0001','0.00','1100.00',0,'1','1','2022-01-23 00:00:00','','','1'),(15,'Sale0001','Restaurent Service Tax','2022-01-23','5020303','Restaurent TAX Credit for Restaurent Invoice# 0001','0.00','0.00',0,'1','1','2022-01-23 00:00:00','','','1'),(16,'Sale0001','Restaurent Service Tax','2022-01-23','1020204','Restaurent TAX Debit for Restaurent Invoice# 0001','0.00','0.00',0,'1','1','2022-01-23 00:00:00','','','1'),(17,'Sale0001','Restaurent Service Charge','2022-01-23','30304','Restaurent Service Charge Credit for Restaurent Invoice# 0001','0.00','0.00',0,'1','1','2022-01-23 00:00:00','','','1'),(18,'Sale0002','Sale Restaurent Service','2022-01-24','1020101','Cash in Hand payment Debit For Restaurent Invoice# 0002','4800.00','0.00',0,'1','1','2022-01-24 00:00:00','','','1'),(19,'0002','CIV','2022-01-24','102030101','Customer debit for Restaurent Invoice# 0002','4800.00','0.00',0,'1','1','2022-01-24 00:00:00','','','1'),(20,'0002','CIV','2022-01-24','30303','Restaurant Food Credit for Restaurent Invoice# 0002','0.00','4800.00',0,'1','1','2022-01-24 00:00:00','','','1'),(21,'0002','CIV','2022-01-24','102030101','Customer Credit for Restaurent Invoice# 0002','0.00','4800.00',0,'1','1','2022-01-24 00:00:00','','','1'),(22,'Sale0002','Restaurent Service Tax','2022-01-24','5020303','Restaurent TAX Credit for Restaurent Invoice# 0002','0.00','0.00',0,'1','1','2022-01-24 00:00:00','','','1'),(23,'Sale0002','Restaurent Service Tax','2022-01-24','1020204','Restaurent TAX Debit for Restaurent Invoice# 0002','0.00','0.00',0,'1','1','2022-01-24 00:00:00','','','1'),(24,'Sale0002','Restaurent Service Charge','2022-01-24','30304','Restaurent Service Charge Credit for Restaurent Invoice# 0002','0.00','0.00',0,'1','1','2022-01-24 00:00:00','','','1'),(25,'081000','PO','2022-04-06','10107','PO Receive Receive No 20220406083457','25000.00','0.00',0,'1','1','2022-04-06 00:00:00','','','1'),(26,'081000','PO','2022-04-06','502020501','PO received For PO No.081000 Receive No.20220406083457','0.00','25000.00',0,'1','1','2022-04-06 00:00:00','','','1'),(27,'000003','CIV','2022-04-06','102010304','Cash in Card Debited For advance payment Invoice# 000003','24000.00','0.00',0,'1','1','2022-04-06 11:20:06','','','1'),(28,'000003','CIV','2022-04-06','30301','Hotel credited for room advance rent Invoice# 000003','0.00','24000.00',0,'1','1','2022-04-06 11:20:06','','','1'),(29,'000003','CIV','2022-04-06','102030101','Hotel customer debited for advance room booking Invoice# 000003','24000.00','0.00',0,'1','1','2022-04-06 11:20:06','','','1'),(30,'000003','CIV','2022-04-06','102030101','Hotel customer credited for advance room booking Invoice# 000003','0.00','24000.00',0,'1','1','2022-04-06 11:20:06','','','1'),(31,'000004','CIV','2022-04-06','102010201','Cash in Bank Debited For Dhaka Bank Invoice#000004','4800.00','0.00',0,'1','1','2022-04-06 11:34:10','','','1'),(32,'000004','CIV','2022-04-06','102030101','Customer debit for Rent Invoice# 000004','4800.00','0.00',0,'1','1','2022-04-06 11:34:10','','','1'),(33,'000004','CIV','2022-04-06','30301','Hotel Credited for Hotel Rent Invoice# 000004','0.00','0.00',0,'1','1','2022-04-06 11:34:10','','','1'),(34,'000004','CIV','2022-04-06','30304','Hotel Credited for Hotel Service Charge Invoice# 000004','0.00','0.00',0,'1','1','2022-04-06 11:34:10','','','1'),(35,'000004','CIV','2022-04-06','102030101','Customer Credit for Rent Invoice# 000004','0.00','4800.00',0,'1','1','2022-04-06 11:34:10','','','1'),(36,'000004','CIV','2022-04-06','1020204','Hotel Debited For Hotel Room TAX Invoice# 000004','4800.00','0.00',0,'1','1','2022-04-06 11:34:10','','','1'),(37,'000004','CIV','2022-04-06','5020303','Hotel Credited For Hotel Room TAX Invoice# 000004','0.00','4800.00',0,'1','1','2022-04-06 11:34:10','','','1'),(38,'000005','CIV','2022-04-06','102010201','Cash in Bank Debited For Dhaka Bank Invoice#000005','20800.00','0.00',0,'1','1','2022-04-06 11:36:00','','','1'),(39,'000005','CIV','2022-04-06','102030101','Customer debit for Rent Invoice# 000005','20800.00','0.00',0,'1','1','2022-04-06 11:36:00','','','1'),(40,'000005','CIV','2022-04-06','30301','Hotel Credited for Hotel Rent Invoice# 000005','0.00','4000.00',0,'1','1','2022-04-06 11:36:00','','','1'),(41,'000005','CIV','2022-04-06','30304','Hotel Credited for Hotel Service Charge Invoice# 000005','0.00','0.00',0,'1','1','2022-04-06 11:36:00','','','1'),(42,'000005','CIV','2022-04-06','102030101','Customer Credit for Rent Invoice# 000005','0.00','20800.00',0,'1','1','2022-04-06 11:36:00','','','1'),(43,'000005','CIV','2022-04-06','1020204','Hotel Debited For Hotel Room TAX Invoice# 000005','16800.00','0.00',0,'1','1','2022-04-06 11:36:00','','','1'),(44,'000005','CIV','2022-04-06','5020303','Hotel Credited For Hotel Room TAX Invoice# 000005','0.00','16800.00',0,'1','1','2022-04-06 11:36:00','','','1'),(45,'000006','CIV','2024-03-21','1020101','Cash in Hand Debited For advance payment Invoice# 000006','5000.00','0.00',0,'1','1','2024-03-21 14:45:35','','','1'),(46,'000006','CIV','2024-03-21','30301','Hotel credited for room advance rent Invoice# 000006','0.00','5000.00',0,'1','1','2024-03-21 14:45:35','','','1'),(47,'000006','CIV','2024-03-21','102030101','Hotel customer debited for advance room booking Invoice# 000006','5000.00','0.00',0,'1','1','2024-03-21 14:45:35','','','1'),(48,'000006','CIV','2024-03-21','102030101','Hotel customer credited for advance room booking Invoice# 000006','0.00','5000.00',0,'1','1','2024-03-21 14:45:35','','','1'),(49,'000007','CIV','2024-03-21','30301','Hotel credited for room advance rent Invoice# 000007','0.00','4000.00',0,'1','1','2024-03-21 14:51:59','','','1'),(50,'000007','CIV','2024-03-21','102030101','Hotel customer debited for advance room booking Invoice# 000007','4000.00','0.00',0,'1','1','2024-03-21 14:51:59','','','1'),(51,'000007','CIV','2024-03-21','102030101','Hotel customer credited for advance room booking Invoice# 000007','0.00','4000.00',0,'1','1','2024-03-21 14:51:59','','','1'),(52,'000008','CIV','2024-03-21','102030101','Customer debit for Rent Invoice# 000008','39200.00','0.00',0,'1','1','2024-03-21 15:01:50','','','1'),(53,'000008','CIV','2024-03-21','30301','Hotel Credited for Hotel Rent Invoice# 000008','0.00','32000.00',0,'1','1','2024-03-21 15:01:50','','','1'),(54,'000008','CIV','2024-03-21','30304','Hotel Credited for Hotel Service Charge Invoice# 000008','0.00','0.00',0,'1','1','2024-03-21 15:01:50','','','1'),(55,'000008','CIV','2024-03-21','102030101','Customer Credit for Rent Invoice# 000008','0.00','39200.00',0,'1','1','2024-03-21 15:01:50','','','1'),(56,'000008','CIV','2024-03-21','1020204','Hotel Debited For Hotel Room TAX Invoice# 000008','7200.00','0.00',0,'1','1','2024-03-21 15:01:50','','','1'),(57,'000008','CIV','2024-03-21','5020303','Hotel Credited For Hotel Room TAX Invoice# 000008','0.00','7200.00',0,'1','1','2024-03-21 15:01:50','','','1');

/*Table structure for table `accesslog` */

drop table if exists `accesslog`;

CREATE TABLE `accesslog` (
  `sl_no` bigint(20) NOT NULL AUTO_INCREMENT,
  `action_page` varchar(50) COLLATE utf8_unicode_ci DEFAULT NULL,
  `action_done` text COLLATE utf8_unicode_ci DEFAULT NULL,
  `remarks` text COLLATE utf8_unicode_ci NOT NULL,
  `user_name` varchar(50) COLLATE utf8_unicode_ci DEFAULT NULL,
  `entry_date` datetime DEFAULT NULL,
  PRIMARY KEY (`sl_no`)
) ENGINE=InnoDB AUTO_INCREMENT=38 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

/*Data for the table `accesslog` */

insert into `accesslog` values (1,'Menu type List','Insert Data','New Menu type Created','Garba Aliyu','2022-01-22 23:04:14'),(2,'Menu type List','Insert Data','New Menu type Created','Garba Aliyu','2022-01-22 23:04:39'),(3,'Menu type List','Insert Data','New Menu type Created','Garba Aliyu','2022-01-22 23:05:00'),(4,'Menu type List','Insert Data','New Menu type Created','Garba Aliyu','2022-01-22 23:05:41'),(5,'Menu type List','Insert Data','New Menu type Created','Garba Aliyu','2022-01-22 23:06:01'),(6,'Add Category','Insert Data','Category is Created','Garba Aliyu','2022-01-22 23:09:05'),(7,'Add Category','Insert Data','Category is Created','Garba Aliyu','2022-01-22 23:09:34'),(8,'Add Category','Insert Data','Category is Created','Garba Aliyu','2022-01-22 23:09:55'),(9,'Add Category','Insert Data','Category is Created','Garba Aliyu','2022-01-22 23:10:50'),(10,'Add Category','Insert Data','Category is Created','Garba Aliyu','2022-01-22 23:11:14'),(11,'Category List','Update Data','Category Updated','Garba Aliyu','2022-01-22 23:17:28'),(12,'Category List','Update Data','Category Updated','Garba Aliyu','2022-01-22 23:19:07'),(13,'Add Food','Insert Data','New Food Added','Garba Aliyu','2022-01-22 23:22:54'),(14,'Add Food','Insert Data','New Food Added','Garba Aliyu','2022-01-22 23:23:32'),(15,'Add Food','Insert Data','New Food Added','Garba Aliyu','2022-01-22 23:24:30'),(16,'Add Food','Insert Data','New Food Added','Garba Aliyu','2022-01-22 23:25:16'),(17,'Add Food','Insert Data','New Food Added','Garba Aliyu','2022-01-22 23:26:00'),(18,'Add Food','Insert Data','New Food Added','Garba Aliyu','2022-01-22 23:26:21'),(19,'Add Food','Insert Data','New Food Added','Garba Aliyu','2022-01-22 23:26:48'),(20,'Add Food','Insert Data','New Food Added','Garba Aliyu','2022-01-22 23:27:11'),(21,'Add Add-ons','Insert Data','New Add-ons is Created','Garba Aliyu','2022-01-22 23:32:24'),(22,'Add Add-ons','Insert Data','New Add-ons is Created','Garba Aliyu','2022-01-22 23:32:45'),(23,'Add Add-ons','Insert Data','New Add-ons is Created','Garba Aliyu','2022-01-22 23:33:03'),(24,'Add-ons Assign','Insert Data','Assign New Add-ons To Menu','Garba Aliyu','2022-01-22 23:34:36'),(25,'Food Availablity','Insert Data','New Food Availablity Created','Garba Aliyu','2022-01-22 23:38:00'),(26,'Food Availablity','Update Data','Food Availablity Updated','Garba Aliyu','2022-01-23 16:22:15'),(27,'Varient List','Insert Data','New Varient Created','Garba Aliyu','2022-01-23 23:43:18'),(28,'Varient List','Insert Data','New Varient Created','Garba Aliyu','2022-01-23 23:43:43'),(29,'Varient List','Insert Data','New Varient Created','Garba Aliyu','2022-01-23 23:44:15'),(30,'Add Customer','Insert Data','Customer is Created','Garba Aliyu','2022-01-23 23:47:07'),(31,'Add New Order','Insert Data','Item New Order Created','Garba Aliyu','2022-01-23 23:55:10'),(32,'Order List','Insert Data','Order is Update','Garba Aliyu','2022-01-23 23:56:07'),(33,'Add New Order','Insert Data','Item New Order Created','Garba Aliyu','2022-01-24 22:39:34'),(34,'Order List','Insert Data','Order is Update','Garba Aliyu','2022-01-24 22:40:13'),(35,'Food List','Update Data','Food Updated','Garba Aliyu','2024-03-21 15:49:40'),(36,'Food Availablity','Insert Data','New Food Availablity Created','Garba Aliyu','2024-03-21 15:57:15'),(37,'Food List','Update Data','Food Updated','Garba Aliyu','2024-03-21 15:59:23');

/*Table structure for table `add_ons` */

drop table if exists `add_ons`;

CREATE TABLE `add_ons` (
  `add_on_id` int(11) NOT NULL AUTO_INCREMENT,
  `add_on_name` varchar(200) COLLATE utf8_unicode_ci NOT NULL,
  `price` decimal(10,2) NOT NULL DEFAULT 0.00,
  `is_active` tinyint(4) NOT NULL,
  `tax0` text COLLATE utf8_unicode_ci DEFAULT NULL,
  `tax1` text COLLATE utf8_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`add_on_id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

/*Data for the table `add_ons` */

insert into `add_ons` values (1,'Bottle of water','150.00',1,'',''),(2,'Bottle of soft drink','250.00',1,'',''),(3,'Energy Drink','750.00',1,'','');

/*Table structure for table `award` */

drop table if exists `award`;

CREATE TABLE `award` (
  `award_id` int(11) NOT NULL AUTO_INCREMENT,
  `award_name` varchar(50) NOT NULL,
  `aw_description` varchar(200) NOT NULL,
  `awr_gift_item` varchar(50) NOT NULL,
  `date` date NOT NULL,
  `employee_id` varchar(30) NOT NULL,
  `awarded_by` varchar(30) NOT NULL,
  PRIMARY KEY (`award_id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

/*Data for the table `award` */

/*Table structure for table `bedstype` */

drop table if exists `bedstype`;

CREATE TABLE `bedstype` (
  `Bedstypeid` int(11) NOT NULL AUTO_INCREMENT,
  `bedstypetitle` varchar(255) COLLATE latin1_general_ci NOT NULL,
  PRIMARY KEY (`Bedstypeid`)
) ENGINE=MyISAM AUTO_INCREMENT=17 DEFAULT CHARSET=latin1 COLLATE=latin1_general_ci;

/*Data for the table `bedstype` */

insert into `bedstype` values (12,'Electric bed'),(13,'Standard Double'),(14,'Queen Bed'),(15,'Olympic Queen'),(16,'King Bed');

/*Table structure for table `bill` */

drop table if exists `bill`;

CREATE TABLE `bill` (
  `bill_id` bigint(11) NOT NULL AUTO_INCREMENT,
  `customer_id` int(11) NOT NULL,
  `order_id` bigint(20) NOT NULL,
  `total_amount` float NOT NULL,
  `discount` float NOT NULL,
  `service_charge` float NOT NULL,
  `shipping_type` int(11) DEFAULT NULL COMMENT '1=home,2=pickup,3=none',
  `delivarydate` datetime DEFAULT NULL,
  `VAT` float NOT NULL,
  `bill_amount` float NOT NULL,
  `bill_date` date NOT NULL,
  `bill_time` time NOT NULL,
  `create_at` datetime DEFAULT '1970-01-01 01:01:01',
  `bill_status` tinyint(1) NOT NULL COMMENT '0=unpaid, 1=paid',
  `payment_method_id` tinyint(4) NOT NULL,
  `create_by` int(11) NOT NULL,
  `create_date` date NOT NULL,
  `update_by` int(11) NOT NULL,
  `update_date` date NOT NULL,
  PRIMARY KEY (`bill_id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

/*Data for the table `bill` */

insert into `bill` values (1,316,1,1200,100,0,(null),'',0,1100,'2022-01-23','23:55:12','2022-01-23 23:56:06',1,4,1,'2022-01-23',0,'0000-00-00'),(2,317,2,4800,0,0,(null),'',0,4800,'2022-01-24','22:39:36','2022-01-24 22:40:12',1,4,1,'2022-01-24',0,'0000-00-00');

/*Table structure for table `bill_card_payment` */

drop table if exists `bill_card_payment`;

CREATE TABLE `bill_card_payment` (
  `row_id` bigint(20) NOT NULL AUTO_INCREMENT,
  `bill_id` bigint(20) NOT NULL,
  `multipay_id` int(11) DEFAULT NULL,
  `card_no` varchar(200) COLLATE utf8_unicode_ci DEFAULT NULL,
  `terminal_name` int(11) NOT NULL,
  `bank_name` int(11) DEFAULT NULL,
  PRIMARY KEY (`row_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

/*Data for the table `bill_card_payment` */

/*Table structure for table `booked_details` */

drop table if exists `booked_details`;

CREATE TABLE `booked_details` (
  `book_detailsid` int(11) NOT NULL AUTO_INCREMENT,
  `bookedid` int(11) NOT NULL,
  `booking_type` varchar(100) COLLATE latin1_general_ci DEFAULT NULL,
  `booking_source` varchar(100) COLLATE latin1_general_ci DEFAULT NULL,
  `booking_source_no` varchar(100) COLLATE latin1_general_ci DEFAULT NULL,
  `extracheckin` text COLLATE latin1_general_ci DEFAULT NULL,
  `extracheckout` text COLLATE latin1_general_ci DEFAULT NULL,
  `arival_from` varchar(100) COLLATE latin1_general_ci DEFAULT NULL,
  `purpose` varchar(100) COLLATE latin1_general_ci DEFAULT NULL,
  `extra_facility_days` text COLLATE latin1_general_ci DEFAULT NULL,
  `extrabed` text COLLATE latin1_general_ci DEFAULT NULL,
  `extraperson` text COLLATE latin1_general_ci DEFAULT NULL,
  `extrachild` text COLLATE latin1_general_ci DEFAULT NULL,
  `complementary` text COLLATE latin1_general_ci DEFAULT NULL,
  `complementaryprice` text COLLATE latin1_general_ci DEFAULT NULL,
  `discountreason` text COLLATE latin1_general_ci DEFAULT NULL,
  `discountamount` decimal(10,0) DEFAULT NULL,
  `commissionpersent` int(11) DEFAULT NULL,
  `commissionamount` decimal(10,0) DEFAULT NULL,
  `payment_method` varchar(100) COLLATE latin1_general_ci DEFAULT NULL,
  `advance_amount` decimal(10,2) DEFAULT NULL,
  `advance_remarks` varchar(100) COLLATE latin1_general_ci DEFAULT NULL,
  `remarks` text COLLATE latin1_general_ci DEFAULT NULL,
  `booked_from` int(11) DEFAULT 0 COMMENT '0=admin,1=user',
  PRIMARY KEY (`book_detailsid`),
  KEY `bookedid` (`bookedid`)
) ENGINE=MyISAM AUTO_INCREMENT=18 DEFAULT CHARSET=latin1 COLLATE=latin1_general_ci;

/*Data for the table `booked_details` */

insert into `booked_details` values (13,13,'15','2','6788','2022-01-21 01:00','2022-01-22 12:00','Kaduna','Business','2','0','0','0','Choose Complementary','0','','0',3,'720','Cash Payment','24000.00','','',0),(14,14,'16','1','0001','2022-01-21 00:00,2022-01-21 00:00','2022-01-21 00:00,2022-01-21 00:00','','','0,0','0,0','0,0','0,0','Choose Complementary ,Choose Complementary','0,0','','0',2,'1680','Cash Payment','80000.00','','',1),(15,15,'16','','','2022-04-06 12:00','2022-04-07 12:00','Abuja','','1','0','0','0','Choose Complementary','0','','0',0,'0','Card Payment','24000.00','','',0),(16,16,'16','','','2024-03-21 15:00','2024-03-22 15:00','abuja','Private','1','0','0','0','Choose Complementary','0','','0',0,'0','Cash Payment','5000.00','','',0),(17,17,'16','','','2024-03-21 15:00','2024-03-23 15:00','kaduna','Private','2','0','0','0','Choose Complementary','0','','0',0,'0','POS','4000.00','','',0);

/*Table structure for table `booked_info` */

drop table if exists `booked_info`;

CREATE TABLE `booked_info` (
  `bookedid` int(11) NOT NULL AUTO_INCREMENT,
  `booking_number` varchar(100) COLLATE latin1_general_ci NOT NULL,
  `date_time` datetime NOT NULL,
  `roomid` text COLLATE latin1_general_ci NOT NULL,
  `nuofpeople` varchar(100) COLLATE latin1_general_ci DEFAULT '0',
  `children` text COLLATE latin1_general_ci DEFAULT NULL,
  `total_room` int(11) NOT NULL DEFAULT 0,
  `room_no` varchar(45) COLLATE latin1_general_ci NOT NULL,
  `roomrate` text COLLATE latin1_general_ci DEFAULT NULL,
  `promocode` text COLLATE latin1_general_ci DEFAULT NULL,
  `total_price` decimal(10,2) NOT NULL DEFAULT 0.00,
  `paid_amount` decimal(10,2) NOT NULL DEFAULT 0.00,
  `offer_discount` varchar(100) COLLATE latin1_general_ci NOT NULL DEFAULT '0.00',
  `full_guest_name` text COLLATE latin1_general_ci DEFAULT NULL,
  `special_request` text COLLATE latin1_general_ci DEFAULT NULL,
  `coments` text COLLATE latin1_general_ci DEFAULT NULL,
  `checkindate` datetime NOT NULL,
  `checkoutdate` datetime NOT NULL,
  `cutomerid` int(11) NOT NULL,
  `bookingstatus` varchar(255) COLLATE latin1_general_ci NOT NULL COMMENT '0=pending,1=cancel,2=success,3=finish,4=checkin,5=checkout',
  `isSeen` int(11) DEFAULT 0,
  PRIMARY KEY (`bookedid`),
  KEY `cutomerid` (`cutomerid`,`bookingstatus`)
) ENGINE=MyISAM AUTO_INCREMENT=18 DEFAULT CHARSET=latin1 COLLATE=latin1_general_ci;

/*Data for the table `booked_info` */

insert into `booked_info` values (13,'00000001','2022-01-21 00:44:40','9','1','1',1,'1','12000','','12000.00','24000.00','0','Yahaya','','Booking from admin','2022-01-21 01:00:00','2022-01-22 12:00:00',318,'0',1),(14,'00000014','2022-01-21 16:21:37','9,9','1,1','1,0',2,'3,2','12000,2000','','16800.00','100800.00','0,0','','This is it','Booking from admin','2022-01-21 00:00:00','2022-01-27 00:00:00',319,'5',1),(15,'00000015','2022-04-06 11:15:48','9','1','0',1,'2','12000','','14400.00','28800.00','0','Saleem','','Booking from admin','2022-04-06 08:00:00','2022-04-07 12:00:00',317,'5',1),(16,'00000016','2024-03-21 14:45:35','9','1','0',1,'2','12000','','14400.00','5000.00','0','Saleem Umar','','Booking from admin','2024-03-21 08:00:00','2024-03-22 15:00:00',317,'0',1),(17,'00000017','2024-03-21 14:51:59','9','1','0',1,'3','12000','','14400.00','43200.00','0','','','Booking from admin','2024-03-21 08:00:00','2024-03-23 15:00:00',321,'5',1);

/*Table structure for table `bookingtype` */

drop table if exists `bookingtype`;

CREATE TABLE `bookingtype` (
  `booktypeid` int(11) NOT NULL AUTO_INCREMENT,
  `booktypetitle` varchar(255) COLLATE latin1_general_ci NOT NULL,
  PRIMARY KEY (`booktypeid`)
) ENGINE=MyISAM AUTO_INCREMENT=18 DEFAULT CHARSET=latin1 COLLATE=latin1_general_ci;

/*Data for the table `bookingtype` */

insert into `bookingtype` values (11,'Advance'),(12,'Instant'),(13,'Groups'),(14,'Allocation'),(15,'Business Seminar'),(16,'Wedding'),(17,'Private Visit');

/*Table structure for table `candidate_basic_info` */

drop table if exists `candidate_basic_info`;

CREATE TABLE `candidate_basic_info` (
  `can_id` varchar(20) NOT NULL,
  `first_name` varchar(11) CHARACTER SET latin1 NOT NULL,
  `last_name` varchar(30) CHARACTER SET latin1 NOT NULL,
  `email` varchar(30) CHARACTER SET latin1 NOT NULL,
  `phone` varchar(20) CHARACTER SET latin1 NOT NULL,
  `alter_phone` varchar(20) CHARACTER SET latin1 NOT NULL,
  `present_address` varchar(100) CHARACTER SET latin1 NOT NULL,
  `parmanent_address` varchar(100) CHARACTER SET latin1 NOT NULL,
  `picture` text DEFAULT NULL,
  `ssn` varchar(50) NOT NULL,
  `state` varchar(30) NOT NULL,
  `city` varchar(30) NOT NULL,
  `zip` int(11) NOT NULL,
  PRIMARY KEY (`can_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

/*Data for the table `candidate_basic_info` */

/*Table structure for table `candidate_education_info` */

drop table if exists `candidate_education_info`;

CREATE TABLE `candidate_education_info` (
  `can_edu_id` int(11) NOT NULL AUTO_INCREMENT,
  `can_id` varchar(30) NOT NULL,
  `degree_name` varchar(30) CHARACTER SET latin1 NOT NULL,
  `university_name` varchar(50) CHARACTER SET latin1 NOT NULL,
  `cgp` varchar(30) CHARACTER SET latin1 NOT NULL,
  `comments` varchar(50) CHARACTER SET latin1 DEFAULT NULL,
  `sequencee` varchar(255) CHARACTER SET latin1 DEFAULT NULL,
  PRIMARY KEY (`can_edu_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

/*Data for the table `candidate_education_info` */

/*Table structure for table `candidate_interview` */

drop table if exists `candidate_interview`;

CREATE TABLE `candidate_interview` (
  `can_int_id` int(11) NOT NULL AUTO_INCREMENT,
  `can_id` varchar(30) CHARACTER SET latin1 NOT NULL,
  `job_adv_id` varchar(50) CHARACTER SET latin1 NOT NULL,
  `interview_date` varchar(30) CHARACTER SET latin1 NOT NULL,
  `interviewer_id` varchar(50) CHARACTER SET latin1 NOT NULL,
  `interview_marks` varchar(50) CHARACTER SET latin1 NOT NULL,
  `written_total_marks` varchar(50) CHARACTER SET latin1 NOT NULL,
  `mcq_total_marks` varchar(50) CHARACTER SET latin1 NOT NULL,
  `total_marks` varchar(30) NOT NULL,
  `recommandation` varchar(50) CHARACTER SET latin1 NOT NULL,
  `selection` varchar(50) CHARACTER SET latin1 NOT NULL,
  `details` varchar(50) CHARACTER SET latin1 NOT NULL,
  PRIMARY KEY (`can_int_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

/*Data for the table `candidate_interview` */

/*Table structure for table `candidate_selection` */

drop table if exists `candidate_selection`;

CREATE TABLE `candidate_selection` (
  `can_sel_id` int(11) NOT NULL AUTO_INCREMENT,
  `can_id` varchar(30) CHARACTER SET latin1 NOT NULL,
  `employee_id` varchar(50) CHARACTER SET latin1 NOT NULL,
  `pos_id` varchar(30) CHARACTER SET latin1 NOT NULL,
  `selection_terms` varchar(50) CHARACTER SET latin1 DEFAULT NULL,
  PRIMARY KEY (`can_sel_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

/*Data for the table `candidate_selection` */

/*Table structure for table `candidate_shortlist` */

drop table if exists `candidate_shortlist`;

CREATE TABLE `candidate_shortlist` (
  `can_short_id` int(11) NOT NULL AUTO_INCREMENT,
  `can_id` varchar(30) CHARACTER SET latin1 NOT NULL,
  `job_adv_id` int(11) NOT NULL,
  `date_of_shortlist` varchar(50) CHARACTER SET latin1 NOT NULL,
  `interview_date` varchar(30) CHARACTER SET latin1 NOT NULL,
  PRIMARY KEY (`can_short_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

/*Data for the table `candidate_shortlist` */

/*Table structure for table `candidate_workexperience` */

drop table if exists `candidate_workexperience`;

CREATE TABLE `candidate_workexperience` (
  `can_workexp_id` int(11) NOT NULL AUTO_INCREMENT,
  `can_id` varchar(30) CHARACTER SET latin1 NOT NULL,
  `company_name` varchar(50) CHARACTER SET latin1 NOT NULL,
  `working_period` varchar(50) CHARACTER SET latin1 NOT NULL,
  `duties` varchar(30) CHARACTER SET latin1 NOT NULL,
  `supervisor` varchar(50) CHARACTER SET latin1 NOT NULL,
  `sequencee` varchar(10) CHARACTER SET latin1 NOT NULL,
  PRIMARY KEY (`can_workexp_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

/*Data for the table `candidate_workexperience` */

/*Table structure for table `check_addones` */

drop table if exists `check_addones`;

CREATE TABLE `check_addones` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `order_menuid` int(11) NOT NULL,
  `sub_order_id` int(11) NOT NULL,
  `status` tinyint(4) DEFAULT NULL COMMENT '1=insert, 0=notinserted',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

/*Data for the table `check_addones` */

/*Table structure for table `common_setting` */

drop table if exists `common_setting`;

CREATE TABLE `common_setting` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `address` text DEFAULT NULL,
  `email` varchar(50) DEFAULT NULL,
  `phone` varchar(20) DEFAULT NULL,
  `logo` varchar(50) DEFAULT NULL,
  `login_logo` varchar(50) DEFAULT NULL,
  `footer_logo` varchar(50) DEFAULT NULL,
  `invoice_logo` varchar(50) DEFAULT NULL,
  `powerbytxt` text DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8;

/*Data for the table `common_setting` */

insert into `common_setting` values (1,'','','','','','','','Powered by SmartSoftware Solutions');

/*Table structure for table `currency` */

drop table if exists `currency`;

CREATE TABLE `currency` (
  `currencyid` int(11) NOT NULL AUTO_INCREMENT,
  `currencyname` varchar(50) NOT NULL,
  `curr_icon` varchar(50) NOT NULL,
  `position` int(11) NOT NULL DEFAULT 1 COMMENT '1=left.2=right',
  `curr_rate` decimal(10,2) NOT NULL DEFAULT 0.00,
  PRIMARY KEY (`currencyid`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8;

/*Data for the table `currency` */

insert into `currency` values (2,'USD','$',1,'1.00'),(3,'Nigerian Naira','N',1,'1.00');

/*Table structure for table `custom_table` */

drop table if exists `custom_table`;

CREATE TABLE `custom_table` (
  `custom_id` int(11) NOT NULL AUTO_INCREMENT,
  `custom_field` varchar(100) NOT NULL,
  `custom_data_type` int(11) NOT NULL,
  `custom_data` text NOT NULL,
  `employee_id` varchar(20) NOT NULL,
  PRIMARY KEY (`custom_id`)
) ENGINE=InnoDB AUTO_INCREMENT=61 DEFAULT CHARSET=latin1;

/*Data for the table `custom_table` */

insert into `custom_table` values (9,'Teacher Name',2,'Abdul Halim','EF6MQRAX'),(12,'Primary School',1,'Test Primary School','E4ZNFBIC'),(13,'High School Name',2,'Taker Hat High school','E4ZNFBIC'),(14,'Versity Name',3,'Nu','E4ZNFBIC'),(15,'Company Name',1,'Bdtask','ER6RJAY8'),(16,'House Name',3,'Shikder Bari','ER6RJAY8'),(17,'Person name',2,'Tuhin','ER6RJAY8'),(21,'customfield1',1,'custom value1','E0LHJ447'),(22,'dsfsdf',1,'sdfdsf','E0LHJ447'),(23,'dsfsd',1,'fdsfsdf','E0LHJ447'),(24,'',1,'','E0LHJ447'),(25,'',1,'','E0LHJ447'),(34,'isahadf',1,'23424','ELPGMMRL'),(35,'dfsdf',1,'dfgdfg','ELPGMMRL'),(36,'hhh',1,'sdfsdf','ELPGMMRL'),(37,'fdfgdfg',1,'dfg','ELPGMMRL'),(38,'dfgdfg',1,'','ELPGMMRL'),(39,'First isahaq',1,'sdfsdf','E4K0I0DA'),(40,'sdfsadf',1,'sdfsdf','EYOBEEFQ'),(41,'fsdfsadf',1,'234234324','EHBEEFQQ'),(43,'My Mother',1,'Ma','E4Y9T7CJ'),(44,'rrrr',2,'07-08-2018','E78PIKVA'),(57,'Chinese Cuisine',1,'coffee roastery located on a busy corner site in Farringdon\'s Exmouth Market. With glazed frontage on two sides ','EU3APTYY'),(58,'French Suicine',1,'coffee roastery located on a busy corner site in Farringdon\'s Exmouth Market. With glazed frontage on two sides ','EXL9WSCL'),(59,'Chinese Cuisine',1,'coffee roastery located on a busy corner site in Farringdon\'s Exmouth Market. With glazed frontage on two sides ','E3Y1WJMB'),(60,'Kitchen Lead',1,'coffee roastery located on a busy corner site in Farringdon\'s Exmouth Market. With glazed frontage on two sides ','EBK2UPRA');

/*Table structure for table `customer_order` */

drop table if exists `customer_order`;

CREATE TABLE `customer_order` (
  `order_id` bigint(20) NOT NULL AUTO_INCREMENT,
  `saleinvoice` varchar(100) COLLATE utf8_unicode_ci NOT NULL,
  `marge_order_id` varchar(30) COLLATE utf8_unicode_ci DEFAULT NULL,
  `customer_id` int(11) NOT NULL,
  `cutomertype` int(11) NOT NULL,
  `isthirdparty` int(11) NOT NULL DEFAULT 0 COMMENT '0=normal,1>all Third Party',
  `thirdpartyinvoiceid` int(11) DEFAULT NULL,
  `waiter_id` int(11) DEFAULT NULL,
  `kitchen` int(11) DEFAULT NULL,
  `order_date` date NOT NULL,
  `order_time` time NOT NULL,
  `cookedtime` time NOT NULL DEFAULT '00:15:00',
  `table_no` int(11) DEFAULT NULL,
  `tokenno` varchar(30) COLLATE utf8_unicode_ci DEFAULT NULL,
  `totalamount` decimal(10,2) NOT NULL DEFAULT 0.00,
  `customerpaid` decimal(10,2) DEFAULT 0.00,
  `customer_note` text COLLATE utf8_unicode_ci DEFAULT NULL,
  `anyreason` text COLLATE utf8_unicode_ci DEFAULT NULL,
  `order_status` tinyint(1) NOT NULL COMMENT '1=Pending, 2=Processing, 3=Ready, 4=Served,5=Cancel',
  `nofification` int(11) NOT NULL DEFAULT 0 COMMENT '0=unseen,1=seen',
  `orderacceptreject` int(11) DEFAULT NULL,
  `splitpay_status` tinyint(4) NOT NULL DEFAULT 0 COMMENT '0=no split,1=split',
  `isupdate` int(11) DEFAULT NULL,
  `shipping_date` datetime DEFAULT '1790-01-01 01:01:01',
  `tokenprint` int(11) NOT NULL DEFAULT 0 COMMENT '1=print done,0=not done',
  PRIMARY KEY (`order_id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

/*Data for the table `customer_order` */

insert into `customer_order` values (1,'0001','',316,6,0,(null),0,(null),'2022-01-23','23:55:10','00:53:00',0,'01','1100.00','1100.00','','',4,1,(null),0,(null),'1790-01-01 01:01:01',0),(2,'0002','',317,2,0,(null),0,(null),'2022-01-24','22:39:34','23:38:00',0,'01','4800.00','4800.00','','',4,1,(null),0,(null),'1790-01-01 01:01:01',0);

/*Table structure for table `customer_type` */

drop table if exists `customer_type`;

CREATE TABLE `customer_type` (
  `customer_type_id` int(11) NOT NULL AUTO_INCREMENT,
  `customer_type` varchar(100) COLLATE utf8_unicode_ci NOT NULL,
  `ordering` int(11) DEFAULT 0,
  PRIMARY KEY (`customer_type_id`)
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

/*Data for the table `customer_type` */

insert into `customer_type` values (1,'Walk In Customer',1),(2,'Online Customer',1),(3,'Third Party',0),(4,'Take Way',0),(5,'QR Customer',0),(6,'Hotel Customer',1);

/*Table structure for table `customerinfo` */

drop table if exists `customerinfo`;

CREATE TABLE `customerinfo` (
  `customerid` int(11) NOT NULL AUTO_INCREMENT,
  `customernumber` varchar(100) COLLATE latin1_general_ci DEFAULT NULL,
  `membership_type` int(11) DEFAULT NULL COMMENT '1=bronze,2=silver,3=gold,4=platinum,5=vip',
  `firstname` varchar(255) COLLATE latin1_general_ci DEFAULT NULL,
  `lastname` varchar(255) COLLATE latin1_general_ci DEFAULT NULL,
  `fathername` text COLLATE latin1_general_ci DEFAULT NULL,
  `email` varchar(255) COLLATE latin1_general_ci DEFAULT NULL,
  `address` varchar(255) COLLATE latin1_general_ci DEFAULT NULL,
  `profession` varchar(100) COLLATE latin1_general_ci DEFAULT NULL,
  `isnationality` varchar(100) COLLATE latin1_general_ci DEFAULT NULL,
  `pid` text COLLATE latin1_general_ci DEFAULT NULL,
  `pitype` text COLLATE latin1_general_ci DEFAULT NULL,
  `imgfront` varchar(100) COLLATE latin1_general_ci DEFAULT NULL,
  `imgback` varchar(100) COLLATE latin1_general_ci DEFAULT NULL,
  `imgguest` varchar(100) COLLATE latin1_general_ci DEFAULT NULL,
  `contacttype` text COLLATE latin1_general_ci DEFAULT NULL,
  `zipcode` varchar(100) COLLATE latin1_general_ci DEFAULT NULL,
  `nationality` varchar(100) COLLATE latin1_general_ci DEFAULT NULL,
  `passport` varchar(120) COLLATE latin1_general_ci DEFAULT NULL,
  `visano` varchar(80) COLLATE latin1_general_ci DEFAULT NULL,
  `purpose` varchar(80) COLLATE latin1_general_ci DEFAULT NULL,
  `profileimage` varchar(255) COLLATE latin1_general_ci DEFAULT NULL,
  `city` varchar(255) COLLATE latin1_general_ci DEFAULT NULL,
  `gender` varchar(255) COLLATE latin1_general_ci DEFAULT NULL,
  `dob` varchar(255) COLLATE latin1_general_ci DEFAULT NULL,
  `anniversary` text COLLATE latin1_general_ci DEFAULT NULL,
  `country` varchar(255) COLLATE latin1_general_ci DEFAULT NULL,
  `username` varchar(255) COLLATE latin1_general_ci DEFAULT NULL,
  `cust_phone` text COLLATE latin1_general_ci DEFAULT NULL,
  `pass` varchar(255) COLLATE latin1_general_ci DEFAULT NULL,
  `balance` decimal(10,2) NOT NULL DEFAULT 0.00,
  `active` int(255) DEFAULT NULL,
  `password_reset_token` text COLLATE latin1_general_ci DEFAULT NULL,
  `signupdate` date DEFAULT NULL,
  PRIMARY KEY (`customerid`)
) ENGINE=MyISAM AUTO_INCREMENT=322 DEFAULT CHARSET=latin1 COLLATE=latin1_general_ci;

/*Data for the table `customerinfo` */

insert into `customerinfo` values (316,'0002',(null),'Shamsudeen','Adamu','','shamsu@gmail.com','American University, Yola','Student','native','34595959','','','','','','','','','','','','','','','','','','08072100968','','0.00',(null),'','2022-01-20'),(317,'0317',(null),'Saleem','Umar','','saleem@gmail.com','American University, Yola','Civil Servant','native','987657','','','','','','','','','','','','','','','','','','08068107088','','5000.00',(null),'','2022-01-20'),(318,'0318',(null),'Yahaya','Salihu','','syahaya@gmail.com','Tundun Wada Zaria','Student','native','U04CS1001','','','','','','','','','','','','','','','','','','08032679014','','24000.00',(null),'','2022-01-20'),(319,'0319',(null),'Garba','Aliyu','','engr@gmail.com','American University, Yola','','','','','','','','','','','','','','','','','','','','','08068107088','e10adc3949ba59abbe56e057f20f883e','0.00',(null),'','2022-01-21'),(320,'0320',0,'Garba Aliyu','','','','','','','','','','','','','','','','','','','','','','','','','08068107081','','0.00',(null),'',''),(321,'0321',(null),'Mr Shuaibu Maiwada','Maiwada','Muhd','engrabusadiq@gmail.com','No 305 Anguwan Kaura Zaria City','civil servant','','123456','NIN','','','','Home','234','','','','','','Zaria','male','02/25/1995','','Kaduna','','Nigeria08031869122','e10adc3949ba59abbe56e057f20f883e','0.00',(null),'','2024-03-21');

/*Table structure for table `dbt_blocklist` */

drop table if exists `dbt_blocklist`;

CREATE TABLE `dbt_blocklist` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `ip_mail` varchar(100) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

/*Data for the table `dbt_blocklist` */

/*Table structure for table `dbt_security` */

drop table if exists `dbt_security`;

CREATE TABLE `dbt_security` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `keyword` varchar(20) NOT NULL,
  `data` text NOT NULL,
  `status` int(11) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

/*Data for the table `dbt_security` */

/*Table structure for table `department` */

drop table if exists `department`;

CREATE TABLE `department` (
  `dept_id` int(11) NOT NULL AUTO_INCREMENT,
  `department_name` varchar(100) NOT NULL,
  `parent_id` int(11) NOT NULL,
  PRIMARY KEY (`dept_id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=latin1;

/*Data for the table `department` */

insert into `department` values (1,'Front Desk',0),(2,'Front Desk',1);

/*Table structure for table `duty_type` */

drop table if exists `duty_type`;

CREATE TABLE `duty_type` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `type_name` varchar(30) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=latin1;

/*Data for the table `duty_type` */

insert into `duty_type` values (1,'Full Time'),(2,'Part Time'),(3,'Contructual'),(4,'Other');

/*Table structure for table `email_config` */

drop table if exists `email_config`;

CREATE TABLE `email_config` (
  `email_config_id` int(11) NOT NULL AUTO_INCREMENT,
  `smtp_host` varchar(200) DEFAULT NULL,
  `secure_image` varchar(50) DEFAULT NULL,
  `smtp_port` varchar(200) DEFAULT NULL,
  `smtp_password` varchar(200) DEFAULT NULL,
  `protocol` text NOT NULL,
  `mailpath` text NOT NULL,
  `mailtype` text NOT NULL,
  `sender` text NOT NULL,
  `api_key` varchar(250) DEFAULT NULL,
  `status` int(11) NOT NULL DEFAULT 1,
  PRIMARY KEY (`email_config_id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8;

/*Data for the table `email_config` */

insert into `email_config` values (1,'ssl://smtp.googlemail.com','assets/img/2021-01-31/l1.png','465 ','bdtask123','ssmtp','/usr/sbin/sendmail','html','abuhotel@abu.edu.ng ','22c4c92a-e5a8-4293-b64c-befc9248521e',1);

/*Table structure for table `emp_attendance` */

drop table if exists `emp_attendance`;

CREATE TABLE `emp_attendance` (
  `att_id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `employee_id` varchar(50) CHARACTER SET latin1 NOT NULL,
  `date` varchar(30) CHARACTER SET latin1 NOT NULL,
  `sign_in` varchar(30) CHARACTER SET latin1 DEFAULT NULL,
  `sign_out` varchar(30) CHARACTER SET latin1 DEFAULT NULL,
  `staytime` time DEFAULT NULL,
  PRIMARY KEY (`att_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

/*Data for the table `emp_attendance` */

/*Table structure for table `employee_benifit` */

drop table if exists `employee_benifit`;

CREATE TABLE `employee_benifit` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `bnf_cl_code` varchar(100) NOT NULL,
  `bnf_cl_code_des` varchar(250) NOT NULL,
  `bnff_acural_date` date NOT NULL,
  `bnf_status` tinyint(4) NOT NULL,
  `employee_id` varchar(30) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=latin1;

/*Data for the table `employee_benifit` */

insert into `employee_benifit` values (1,'AC001','Nothing','2022-01-22',1,'EIOJG86X');

/*Table structure for table `employee_history` */

drop table if exists `employee_history`;

CREATE TABLE `employee_history` (
  `emp_his_id` int(11) NOT NULL AUTO_INCREMENT,
  `employee_id` varchar(30) NOT NULL,
  `pos_id` varchar(30) NOT NULL,
  `first_name` varchar(30) NOT NULL,
  `middle_name` varchar(50) DEFAULT NULL,
  `last_name` varchar(30) NOT NULL,
  `email` varchar(32) NOT NULL,
  `phone` varchar(30) NOT NULL,
  `alter_phone` varchar(30) NOT NULL,
  `present_address` varchar(100) DEFAULT NULL,
  `parmanent_address` varchar(100) DEFAULT NULL,
  `picture` text DEFAULT NULL,
  `degree_name` varchar(30) DEFAULT NULL,
  `university_name` varchar(50) DEFAULT NULL,
  `cgp` varchar(30) DEFAULT NULL,
  `passing_year` varchar(30) DEFAULT NULL,
  `company_name` varchar(30) DEFAULT NULL,
  `working_period` varchar(30) DEFAULT NULL,
  `duties` varchar(30) DEFAULT NULL,
  `supervisor` varchar(30) DEFAULT NULL,
  `signature` text DEFAULT NULL,
  `is_admin` int(2) NOT NULL DEFAULT 0,
  `dept_id` int(11) DEFAULT NULL,
  `division_id` int(11) NOT NULL,
  `maiden_name` varchar(50) NOT NULL,
  `state` varchar(30) NOT NULL,
  `city` varchar(30) NOT NULL,
  `zip` int(11) NOT NULL,
  `citizenship` int(11) NOT NULL,
  `duty_type` int(11) NOT NULL,
  `hire_date` date NOT NULL,
  `original_hire_date` date NOT NULL,
  `termination_date` date NOT NULL,
  `termination_reason` text NOT NULL,
  `voluntary_termination` int(11) NOT NULL,
  `rehire_date` date NOT NULL,
  `rate_type` int(11) NOT NULL,
  `rate` float NOT NULL,
  `pay_frequency` int(11) NOT NULL,
  `pay_frequency_txt` varchar(50) NOT NULL,
  `hourly_rate2` float NOT NULL,
  `hourly_rate3` float NOT NULL,
  `home_department` varchar(100) NOT NULL,
  `department_text` varchar(100) NOT NULL,
  `class_code` varchar(50) NOT NULL,
  `class_code_desc` varchar(100) NOT NULL,
  `class_acc_date` date NOT NULL,
  `class_status` tinyint(4) NOT NULL,
  `is_super_visor` int(11) DEFAULT NULL,
  `super_visor_id` varchar(30) NOT NULL,
  `supervisor_report` text NOT NULL,
  `dob` date NOT NULL,
  `gender` int(11) NOT NULL,
  `country` varchar(120) DEFAULT NULL,
  `marital_status` int(11) NOT NULL,
  `ethnic_group` varchar(100) NOT NULL,
  `eeo_class_gp` varchar(100) NOT NULL,
  `ssn` varchar(50) NOT NULL,
  `work_in_state` int(11) NOT NULL,
  `live_in_state` int(11) NOT NULL,
  `home_email` varchar(50) NOT NULL,
  `business_email` varchar(50) NOT NULL,
  `home_phone` varchar(30) NOT NULL,
  `business_phone` varchar(30) NOT NULL,
  `cell_phone` varchar(30) NOT NULL,
  `emerg_contct` varchar(30) NOT NULL,
  `emrg_h_phone` varchar(30) NOT NULL,
  `emrg_w_phone` varchar(30) NOT NULL,
  `emgr_contct_relation` varchar(50) NOT NULL,
  `alt_em_contct` varchar(30) NOT NULL,
  `alt_emg_h_phone` varchar(30) NOT NULL,
  `alt_emg_w_phone` varchar(30) NOT NULL,
  PRIMARY KEY (`emp_his_id`),
  KEY `employee_id` (`employee_id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8;

/*Data for the table `employee_history` */

insert into `employee_history` values (2,'EIOJG86X','6','Saleem','','Yusuf','saleem@yahoo.com','08090107099','08090107098','','','','','','','','','','','','',0,2,0,'','Kaduna','Zaria',567,1,1,'2022-01-22','2022-01-06','2022-01-31','',1,'2022-01-21',2,40000,3,'',-14,0,'','','','','2022-01-21',1,(null),'1','','2022-01-22',1,'Nigeria',1,'','','9000',1,1,'','','7898877','','7899977','7888809','877888','8789999','','','','');

/*Table structure for table `employee_performance` */

drop table if exists `employee_performance`;

CREATE TABLE `employee_performance` (
  `emp_per_id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `employee_id` varchar(50) CHARACTER SET latin1 NOT NULL,
  `note` varchar(50) CHARACTER SET latin1 NOT NULL,
  `date` varchar(50) CHARACTER SET latin1 NOT NULL,
  `note_by` varchar(50) CHARACTER SET latin1 NOT NULL,
  `number_of_star` varchar(50) CHARACTER SET latin1 NOT NULL,
  `status` varchar(50) CHARACTER SET latin1 NOT NULL,
  `updated_by` varchar(50) CHARACTER SET latin1 NOT NULL,
  PRIMARY KEY (`emp_per_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

/*Data for the table `employee_performance` */

/*Table structure for table `employee_sal_pay_type` */

drop table if exists `employee_sal_pay_type`;

CREATE TABLE `employee_sal_pay_type` (
  `emp_sal_pay_type_id` int(11) unsigned NOT NULL,
  `payment_period` varchar(50) CHARACTER SET latin1 NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

/*Data for the table `employee_sal_pay_type` */

/*Table structure for table `employee_salary_payment` */

drop table if exists `employee_salary_payment`;

CREATE TABLE `employee_salary_payment` (
  `emp_sal_pay_id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `employee_id` varchar(50) CHARACTER SET latin1 NOT NULL,
  `total_salary` varchar(50) CHARACTER SET latin1 NOT NULL,
  `total_working_minutes` varchar(50) CHARACTER SET latin1 NOT NULL,
  `working_period` varchar(50) CHARACTER SET latin1 NOT NULL,
  `payment_due` varchar(50) CHARACTER SET latin1 NOT NULL,
  `payment_date` varchar(50) CHARACTER SET latin1 NOT NULL,
  `paid_by` varchar(50) CHARACTER SET latin1 NOT NULL,
  PRIMARY KEY (`emp_sal_pay_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

/*Data for the table `employee_salary_payment` */

/*Table structure for table `employee_salary_setup` */

drop table if exists `employee_salary_setup`;

CREATE TABLE `employee_salary_setup` (
  `e_s_s_id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `employee_id` varchar(30) CHARACTER SET latin1 NOT NULL,
  `sal_type` varchar(30) NOT NULL,
  `salary_type_id` varchar(30) CHARACTER SET latin1 NOT NULL,
  `amount` varchar(30) CHARACTER SET latin1 NOT NULL,
  `create_date` date DEFAULT NULL,
  `update_date` datetime(6) DEFAULT NULL,
  `update_id` varchar(30) CHARACTER SET latin1 NOT NULL,
  `gross_salary` float NOT NULL,
  PRIMARY KEY (`e_s_s_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

/*Data for the table `employee_salary_setup` */

/*Table structure for table `foodvariable` */

drop table if exists `foodvariable`;

CREATE TABLE `foodvariable` (
  `availableID` int(11) NOT NULL AUTO_INCREMENT,
  `foodid` int(11) NOT NULL,
  `availtime` varchar(50) NOT NULL,
  `availday` varchar(30) NOT NULL,
  `is_active` int(11) NOT NULL DEFAULT 0,
  PRIMARY KEY (`availableID`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8;

/*Data for the table `foodvariable` */

insert into `foodvariable` values (1,6,'00:37-12:00','Wednesday',1),(2,5,'12:00-12:00','Wednesday',1);

/*Table structure for table `gender` */

drop table if exists `gender`;

CREATE TABLE `gender` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `gender_name` varchar(30) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=latin1;

/*Data for the table `gender` */

insert into `gender` values (1,'Male'),(2,'Female'),(3,'Other');

/*Table structure for table `grand_loan` */

drop table if exists `grand_loan`;

CREATE TABLE `grand_loan` (
  `loan_id` int(11) NOT NULL AUTO_INCREMENT,
  `employee_id` varchar(50) CHARACTER SET latin1 NOT NULL,
  `permission_by` varchar(30) CHARACTER SET latin1 NOT NULL,
  `loan_details` varchar(30) CHARACTER SET latin1 NOT NULL,
  `amount` varchar(30) CHARACTER SET latin1 NOT NULL,
  `interest_rate` varchar(30) CHARACTER SET latin1 NOT NULL,
  `installment` varchar(30) CHARACTER SET latin1 NOT NULL,
  `installment_period` varchar(30) CHARACTER SET latin1 NOT NULL,
  `repayment_amount` varchar(30) CHARACTER SET latin1 NOT NULL,
  `date_of_approve` varchar(30) CHARACTER SET latin1 NOT NULL,
  `repayment_start_date` varchar(30) CHARACTER SET latin1 NOT NULL,
  `created_by` varchar(30) CHARACTER SET latin1 NOT NULL,
  `updated_by` varchar(30) CHARACTER SET latin1 NOT NULL,
  `loan_status` varchar(30) CHARACTER SET latin1 NOT NULL,
  PRIMARY KEY (`loan_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

/*Data for the table `grand_loan` */

/*Table structure for table `item_category` */

drop table if exists `item_category`;

CREATE TABLE `item_category` (
  `CategoryID` int(11) NOT NULL AUTO_INCREMENT,
  `Name` varchar(255) DEFAULT NULL,
  `CategoryImage` varchar(255) DEFAULT NULL,
  `Position` int(11) DEFAULT NULL,
  `CategoryIsActive` int(11) DEFAULT NULL,
  `offerstartdate` date DEFAULT '0000-00-00',
  `offerendate` date NOT NULL DEFAULT '0000-00-00',
  `isoffer` int(11) DEFAULT 0,
  `parentid` int(11) DEFAULT 0,
  `UserIDInserted` int(11) NOT NULL DEFAULT 0,
  `UserIDUpdated` int(11) NOT NULL DEFAULT 0,
  `UserIDLocked` int(11) NOT NULL DEFAULT 0,
  `DateInserted` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `DateUpdated` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `DateLocked` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  PRIMARY KEY (`CategoryID`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8;

/*Data for the table `item_category` */

insert into `item_category` values (1,'Swallow','',(null),1,'0000-00-00','0000-00-00',0,0,1,1,1,'2022-01-22 23:09:05','2022-01-22 23:09:05','2022-01-22 23:09:05'),(2,'Semovita','',(null),1,'0000-00-00','0000-00-00',0,1,1,1,1,'2022-01-22 23:09:34','2022-01-22 23:09:34','2022-01-22 23:09:34'),(3,'Eva','',(null),1,'0000-00-00','0000-00-00',0,1,1,1,1,'2022-01-22 23:09:55','2022-01-22 23:09:55','2022-01-22 23:09:55'),(4,'SNACKS','',(null),1,'0000-00-00','0000-00-00',0,0,1,1,1,'2022-01-22 23:10:50','2022-01-22 23:19:07','2022-01-22 23:10:50'),(5,'RICE DISHES','',(null),1,'0000-00-00','0000-00-00',0,4,1,1,1,'2022-01-22 23:11:14','2022-01-22 23:17:28','2022-01-22 23:11:14');

/*Table structure for table `item_foods` */

drop table if exists `item_foods`;

CREATE TABLE `item_foods` (
  `ProductsID` int(11) NOT NULL AUTO_INCREMENT,
  `CategoryID` int(11) NOT NULL,
  `ProductName` varchar(255) DEFAULT NULL,
  `ProductImage` varchar(200) DEFAULT NULL,
  `bigthumb` varchar(255) NOT NULL,
  `medium_thumb` varchar(255) NOT NULL,
  `small_thumb` varchar(255) NOT NULL,
  `component` text DEFAULT NULL,
  `descrip` text DEFAULT NULL,
  `itemnotes` varchar(255) DEFAULT NULL,
  `menutype` varchar(25) DEFAULT NULL,
  `productvat` int(11) DEFAULT 0,
  `special` int(11) NOT NULL DEFAULT 0,
  `OffersRate` int(11) NOT NULL DEFAULT 0 COMMENT '1=offer rate',
  `offerIsavailable` int(11) NOT NULL DEFAULT 0 COMMENT '1=offer available,0=No Offer',
  `offerstartdate` date DEFAULT '0000-00-00',
  `offerendate` date DEFAULT '0000-00-00',
  `Position` int(11) DEFAULT NULL,
  `kitchenid` int(11) NOT NULL,
  `isgroup` int(11) DEFAULT NULL,
  `is_customqty` int(11) DEFAULT 0,
  `cookedtime` time NOT NULL DEFAULT '00:00:00',
  `ProductsIsActive` int(11) DEFAULT NULL,
  `UserIDInserted` int(11) NOT NULL DEFAULT 0,
  `UserIDUpdated` int(11) NOT NULL DEFAULT 0,
  `UserIDLocked` int(11) NOT NULL DEFAULT 0,
  `DateInserted` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `DateUpdated` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `DateLocked` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `tax0` text DEFAULT NULL,
  `tax1` text DEFAULT NULL,
  PRIMARY KEY (`ProductsID`)
) ENGINE=InnoDB AUTO_INCREMENT=9 DEFAULT CHARSET=utf8;

/*Data for the table `item_foods` */

insert into `item_foods` values (1,4,'Pizza with 2 or 3 toppings of choice','','','','','','','','5,4,2,1',0,0,0,0,'0000-00-00','0000-00-00',(null),0,(null),(null),'06:00:00',1,1,1,1,'2022-01-22 23:22:54','2022-01-22 23:22:54','2022-01-22 23:22:54','',''),(2,4,'Cup cakes','','','','','','','','5,4,2,1',0,0,0,0,'0000-00-00','0000-00-00',(null),0,(null),(null),'00:00:00',1,1,1,1,'2022-01-22 23:23:32','2022-01-22 23:23:32','2022-01-22 23:23:32','',''),(3,4,'Party sized D/nuts','','','','','','','','5,2',0,0,0,0,'0000-00-00','0000-00-00',(null),0,(null),(null),'00:00:00',1,1,1,1,'2022-01-22 23:24:30','2022-01-22 23:24:30','2022-01-22 23:24:30','',''),(4,4,'Samosa(beef)','','','','','','','','5,4,2,1',0,0,0,0,'0000-00-00','0000-00-00',(null),0,(null),(null),'00:00:00',1,1,1,1,'2022-01-22 23:25:16','2022-01-22 23:25:16','2022-01-22 23:25:16','',''),(5,4,'Spring rolls','','','','','','Spring rolls','','5,4,2,1',0,0,0,0,'0000-00-00','0000-00-00',(null),0,(null),(null),'12:00:00',1,1,1,1,'2022-01-22 23:26:00','2024-03-21 15:59:23','2022-01-22 23:26:00','',''),(6,4,'Meat Pie','','','','','','','','5,4,2,1',0,0,0,0,'0000-00-00','0000-00-00',(null),0,(null),(null),'00:00:00',1,1,1,1,'2022-01-22 23:26:21','2022-01-22 23:26:21','2022-01-22 23:26:21','',''),(7,4,'Beef bugger','','','','','','','','5,4,2,1',0,0,0,0,'0000-00-00','0000-00-00',(null),0,(null),(null),'00:00:00',1,1,1,1,'2022-01-22 23:26:48','2022-01-22 23:26:48','2022-01-22 23:26:48','',''),(8,4,'Sandwich','','','','','','','','5,4,2,1',0,0,0,0,'0000-00-00','0000-00-00',(null),0,(null),(null),'00:00:00',1,1,1,1,'2022-01-22 23:27:11','2022-01-22 23:27:11','2022-01-22 23:27:11','','');

/*Table structure for table `job_advertisement` */

drop table if exists `job_advertisement`;

CREATE TABLE `job_advertisement` (
  `job_adv_id` int(10) unsigned NOT NULL,
  `pos_id` varchar(30) CHARACTER SET latin1 NOT NULL,
  `adv_circular_date` varchar(30) CHARACTER SET latin1 NOT NULL,
  `circular_dadeline` varchar(30) CHARACTER SET latin1 NOT NULL,
  `adv_file` tinytext CHARACTER SET latin1 NOT NULL,
  `adv_details` varchar(255) CHARACTER SET latin1 NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

/*Data for the table `job_advertisement` */

/*Table structure for table `language` */

drop table if exists `language`;

CREATE TABLE `language` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `phrase` varchar(100) NOT NULL,
  `english` varchar(255) NOT NULL,
  `malay` text DEFAULT NULL,
  `french` text DEFAULT NULL,
  `german` text DEFAULT NULL,
  `spanish` text DEFAULT NULL,
  `turkish` text DEFAULT NULL,
  `hindi` text DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2348 DEFAULT CHARSET=utf8;

/*Data for the table `language` */

insert into `language` values (1,'email','Email','','','','','',''),(2,'password','Password','','','','','',''),(3,'login','Log In','','','','','',''),(4,'logout','Logout','','','','','',''),(5,'setting','Setting','','','','','',''),(6,'profile','My Profile','','','','','',''),(7,'dashboard','Dashboard','','','','','',''),(8,'role_permission','Role Permission','','','','','',''),(9,'permission_setup','Permission Setup','','','','','',''),(10,'add_role','Assign Role To User','','','','','',''),(11,'role_list','Role List','','','','','',''),(12,'user_access_role','User Access Role List','','','','','',''),(13,'add_module_permission','Add Module Permission','','','','','',''),(14,'module_permission_list','Module Permission List','','','','','',''),(15,'language','Language','','','','','',''),(16,'application_setting','Application Setting','','','','','',''),(17,'message','Message','','','','','',''),(18,'new','New','','','','','',''),(19,'inbox','inbox','','','','','',''),(20,'sent','Sent','','','','','',''),(21,'user','User','','','','','',''),(22,'add_user','Add User','','','','','',''),(23,'user_list','User List','','','','','',''),(24,'reset','Reset','','','','','',''),(25,'save','Save','','','','','',''),(26,'status','Status','','','','','',''),(27,'lastname','Last Name','','','','','',''),(28,'firstname','First Name','','','','','',''),(29,'about','About','','','','Sobre','',''),(30,'save_successfully','Save Successfully','','','','','',''),(31,'please_try_again','Please Try Again Later!!!','','','','','',''),(32,'update_successfully','Successfully Updated','','','','','',''),(33,'admin','Admin','','','','','',''),(34,'are_you_sure','Are you sure ?','','','','','',''),(35,'sl_no','SL','','','','','',''),(36,'image','Image','','','','','',''),(37,'username','Username','','','','','',''),(38,'last_login','Last Login','','','','','',''),(39,'last_logout','Last Logout','','','','','',''),(40,'ip_address','Ip Address','','','','','',''),(41,'action','Action','','','','','',''),(42,'menu_item_list',' Menu Item List','','','','','',''),(43,'ins_menu_for_application','Ins Menu For Application','','','','','',''),(44,'menu_title',' Menu Title','','','','','',''),(45,'page_url','Page Url','','','','','',''),(46,'module',' Module','','','','','',''),(47,'parent_menu','Parent Menu','','','','','',''),(48,'role_name','Role Name','','','','','',''),(49,'description','Description','','','','','',''),(50,'role','Role','','','','','',''),(51,'add','Address','','','','','',''),(52,'update','Update','','','','','',''),(53,'application_title','Application Title','','','','','',''),(54,'address','Address','','','','','',''),(55,'phone','Phone','','','','','',''),(56,'favicon','Favicon','','','','','',''),(57,'logo','Logo','','','','','',''),(59,'site_align','Application Alignment','','','','','',''),(60,'footer_text','Footer Text','','','','','',''),(61,'left_to_right','Left To Right','','','','','',''),(62,'right_to_left','Right To Left','','','','','',''),(63,'room_facilities','Room Facilities','','','','','',''),(64,'faciliti_list','Facility List','','','','','',''),(65,'faciliti_details_list','Facility Details List','','','','','',''),(66,'roomsize_list','Room Size List','','','','','',''),(67,'add_facility_type','Add Facility Type','','','','','',''),(68,'add_facility_details','Add Facility Details','','','','','',''),(69,'facility_name','Facility Name','','','','','',''),(70,'facility_details_name','Facility Details Name','','','','','',''),(71,'roomsize_name','Room Size Name','','','','','',''),(72,'ad','Add','','','','','',''),(73,'add_new','Add New','','','','','',''),(74,'delete_successfully','Delete successfully completed','','','','','',''),(75,'room_size','Room Size','','','','','',''),(76,'room_setting','Room Setting','','','','','',''),(77,'bed_list','Bed List','','','','','',''),(78,'starclass_list','Star Class List','','','','','',''),(79,'room_list','Room List','','','','','',''),(80,'addnew_bed','Add New Bed','','','','','',''),(81,'bed_name','Bed Name','','','','','',''),(82,'add_class','Add Class','','','','','',''),(83,'class_name','Class Name','','','','','',''),(84,'bookingtype_list','Booking Type List','','','','','',''),(85,'booking_type','Booking Type','','','','','',''),(86,'rateplan_list','Rate Plan List','','','','','',''),(87,'rateplan_name','Rate Plan Name','','','','','',''),(88,'capacity','Capacity','','','','','',''),(89,'defaultrate','Rate','','','','','',''),(90,'special_rate','Special Rate','','','','','',''),(91,'discount','Discount','','','','','',''),(92,'bookingtype','Booking Type','','','','','',''),(93,'breakfast','Breakfast','','','','','',''),(94,'roomtype','Room Type','','','','','',''),(95,'roomsize','Room Size','','','','','',''),(96,'size_unit','Size Unit','','','','','',''),(97,'bedsno','Bed No.','','','','','',''),(98,'bedstype','Bed Type','','','','','',''),(99,'roomdescription','Room Drescription','','','','','',''),(100,'room_name','Room Type','','','','','',''),(101,'room_image','Room Images','','','','','',''),(102,'room_booking','Room Booking','','','','','',''),(103,'booking_list','Booking List','','','','','',''),(104,'room_reservation','Room Reservation','','','','','',''),(105,'accounts','Account','','','','Contas','',''),(106,'c_o_a','Chart of Account','','','','','',''),(107,'debit_voucher','Debit Voucher','','','','','',''),(108,'credit_voucher','Credit Voucher','','','','','',''),(109,'contra_voucher','Contra Voucher','','','','','',''),(110,'journal_voucher','Journal Voucher','','','','','',''),(111,'voucher_approval','Voucher Approval','','','','','',''),(112,'account_report','Account Report','','','','','',''),(113,'voucher_report','Voucher Report','','','','','',''),(114,'cash_book','Cash Book','','','','','',''),(115,'bank_book','Bank Book','','','','','',''),(116,'general_ledger','General Ledger','','','','','',''),(117,'trial_balance','Trial Balance','','','','','',''),(118,'profit_loss','Profit Loss','','','','','',''),(119,'cash_flow','Cash Flow','','','','','',''),(120,'coa_print','Coa Print','','','','','',''),(121,'in_quantity','In Qnty','','','','','',''),(122,'out_quantity','Out Qnty','','','','','',''),(123,'stock','Stock','','','','','',''),(124,'find','Find','','','','','',''),(125,'from_date','From Date','','','','','',''),(126,'to_date','To Date','','','','','',''),(127,'approved','Approved','','','','','',''),(128,'voucher_no','Voucher No','','','','','',''),(129,'remark','Remark','','','','','',''),(130,'code','Code','','','','','',''),(131,'debit','Debit','','','','','',''),(132,'credit','Credit','','','','','',''),(133,'from','From','','','','','',''),(134,'opening_cash_and_equivalent','Opening Cash && Equivalent','','','','','',''),(135,'amount_in_Dollar','Amount In Dollar','','','','','',''),(136,'pre_balance','Pre Balance','','','','','',''),(137,'current_balance','Current Balance','','','','','',''),(138,'with_details','With Details','','','','','',''),(139,'credit_account_head','Credit Account Head','','','','','',''),(140,'gl_head','GL Head','','','','','',''),(141,'transaction_head','Transaction Head','','','','','',''),(142,'confirm','Confirm','','','','','',''),(143,'s_rate','Rate','','','','','',''),(144,'save','Save','','','','','',''),(145,'add_more','Add More','','','','','',''),(146,'total','Total','','','','','',''),(147,'create','Create','','','','','',''),(148,'read','Read','','','','','',''),(149,'update','Update','','','','','',''),(150,'delete','Delete','','','','','',''),(151,'date','Date','','','','','',''),(152,'notice_by','Notice By','','','','','',''),(153,'notice_attachment','Attachment','','','','','',''),(154,'account_name','Account Name','','','','Nome da Conta','',''),(155,'account_type','Account Type','','','','','',''),(156,'account_id','Account Name','','','','Id da Conta','',''),(157,'amount','Total Amount','','','','','',''),(158,'debit_account_head','Debit Account Head','','','','','',''),(159,'booking_number','Booking Number','','','','','',''),(160,'check_in','Check In','','','','','',''),(161,'check_out','Check Out','','','','','',''),(162,'booking_date','Booking Date','','','','','',''),(163,'booking_status','Booking Status','','','','','',''),(164,'adults','Adults','','','','','',''),(165,'kids','Kids','','','','','',''),(166,'guest','Guest Name','','','','','',''),(167,'no_of_people','No of People','','','','','',''),(168,'grant','Grant','','','','','',''),(169,'hrm','Human Resource','','','','','',''),(170,'departmentfrm','Add Department','','','','','',''),(180,'benefits','Benefits','','','','','',''),(181,'class','Class','','','','','',''),(182,'biographical_info','Biographical Info','','','','','',''),(183,'additional_address','Additional Address','','','','','',''),(184,'custom','Custom','','','','','',''),(185,'employee_reports','Employee Reports','','','','','',''),(186,'demographic_report','Demographic Report','','','','','',''),(187,'posting_report','Positional Report','','','','','',''),(188,'custom_report','Custom Report','','','','','',''),(189,'benifit_report','Benifit Report','','','','','',''),(190,'demographic_info','Demographical Information','','','','','',''),(191,'positional_info','Positional Info','','','','','',''),(192,'assets_info','Assets Information','','','','','',''),(193,'custom_field','Custom Field','','','','','',''),(194,'custom_value','Custom Data','','','','','',''),(195,'adhoc_report','Adhoc Report','','','','','',''),(196,'asset_assignment','Asset Assignment','','','','','',''),(197,'assign_asset','Assign Assets','','','','','',''),(198,'assign_list','Assign List','','','','','',''),(199,'update_assign','Update Assign','','','','','',''),(200,'citizenship','Citizenship','','','','','',''),(201,'class_sta','Class status','','','','','',''),(202,'class_acc_date','Class Accrual date','','','','','',''),(203,'class_descript','Class Description','','','','','',''),(204,'class_code','Class Code','','','','','',''),(205,'return_asset','Return Assets','','','','','',''),(206,'dept_id','Department ID','','','','','',''),(207,'parent_id','Parent ID','','','','','',''),(208,'equipment_id','Equipment ID','','','','','',''),(209,'issue_date','Issue Date','','','','','',''),(210,'damarage_desc','Damarage Description','','','','','',''),(211,'return_date','Return Date','','','','','',''),(212,'is_assign','Is Assign','','','','','',''),(213,'emp_his_id','Employee History ID','','','','','',''),(214,'damarage_descript','Damage Description','','','','','',''),(215,'award','Award','','','','','',''),(216,'new_award','New Award','','','','','',''),(217,'award_name','Award Name','','','','','',''),(218,'aw_description','Award Description','','','','','',''),(219,'awr_gift_item','Gift Item','','','','','',''),(220,'awarded_by','Award By','','','','','',''),(221,'employee_name','Employee Name','','','','','',''),(222,'employee_list','Atn List','','','','','',''),(223,'department','Department','','','','','',''),(224,'department_name','Department Name ','','','','','',''),(225,'clockout','ClockOut','','','','','',''),(226,'se_account_id','Select Account Name','','','','','',''),(227,'division','Division','','','','','',''),(228,'add_division','Add Division','','','','','',''),(229,'update_division','Update Division','','','','','',''),(230,'division_name','Division Name','','','','','',''),(231,'division_list','Manage Division ','','','','','',''),(232,'designation_list','Position List','','','','','',''),(233,'manage_designation','Manage Position','','','','','',''),(234,'add_designation','Add Positionn','','','','','',''),(235,'select_division','Select Division','','','','','',''),(236,'select_designation','Select Position','','','','','',''),(237,'asset','Asset','','','','','',''),(238,'asset_type','Asset Type','','','','','',''),(239,'add_type','Add Type','','','','','',''),(240,'type_list','Type List','','','','','',''),(242,'select_type','Select Type','','','','','',''),(243,'equipment_name','Equipment Name','','','','','',''),(244,'model','Model','','','','','',''),(245,'serial_no','Serial No','','','','','',''),(246,'equipment','Equipment','','','','','',''),(247,'add_equipment','Add Equipment','','','','','',''),(248,'equipment_list','Equipment List','','','','','',''),(249,'type','Type','','','','','',''),(250,'equipment_maping','Equipment Mapping','','','','','',''),(251,'add_maping','Add Mapping','','','','','',''),(252,'maping_list','Mapping List','','','','','',''),(253,'update_equipment','Update Equipment','','','','','',''),(254,'select_employee','Select Employee','','','','','',''),(255,'select_equipment','Select Equipment','','','','','',''),(256,'basic_info','Basic Information','','','','','',''),(257,'middle_name','Middle Name','','','','','',''),(258,'state','State','','','','','',''),(259,'city','City','','','','','',''),(260,'zip_code','Zip Code','','','','','',''),(261,'maiden_name','Maiden Name','','','','','',''),(262,'add_employee','Add Employee','','','','','',''),(263,'manage_employee','Manage Employee','','','','','',''),(264,'employee_update_form','Employee Update','','','','','',''),(265,'what_you_search','Search Employee','','','','','',''),(266,'search','Search','','','','','',''),(267,'duty_type','Duty Type','','','','','',''),(268,'hire_date','Hire Date','','','','','',''),(269,'original_h_date','Original Hire Date','','','','','',''),(270,'voluntary_termination','Voluntary Termination','','','','','',''),(271,'termination_reason','Termination Reason','','','','','',''),(272,'termination_date','Termination Date','','','','','',''),(273,'re_hire_date','Re Hire Date','','','','','',''),(274,'rate_type','Rate Type','','','','','',''),(275,'pay_frequency','Pay Frequency','','','','','',''),(276,'pay_frequency_txt','Pay Frequency Text','','','','','',''),(277,'hourly_rate2','Hourly rate2','','','','','',''),(278,'hourly_rate3','Hourly Rate3','','','','','',''),(279,'home_department','Home Department','','','','','',''),(280,'department_text','Department Text','','','','','',''),(281,'benifit_class_code','Benifite Class code','','','','','',''),(282,'benifit_desc','Benifit Description','','','','','',''),(283,'benifit_acc_date','Benifit Accrual Date','','','','','',''),(284,'benifit_sta','Benifite Status','','','','','',''),(285,'super_visor_name','Supervisor Name','','','','','',''),(286,'is_super_visor','Is Supervisor','','','','','',''),(287,'supervisor_report','Supervisor Report','','','','','',''),(288,'dob','Date of Birth','','','','','',''),(289,'gender','Gender','','','','','',''),(290,'marital_stats','Marital Status','','','','','',''),(291,'ethnic_group','Ethnic Group','','','','','',''),(292,'eeo_class_gp','EEO Class','','','','','',''),(293,'ssn','SSN','','','','','',''),(294,'work_in_state','Work in State','','','','','',''),(295,'live_in_state','Live in State','','','','','',''),(296,'home_email','Home Email','','','','','',''),(297,'business_email','Business Email','','','','','',''),(298,'home_phone','Home Phone','','','','','',''),(299,'business_phone','Business Phone','','','','','',''),(300,'cell_phone','Cell Phone','','','','','',''),(301,'emerg_contct','Emergency Contact','','','','','',''),(302,'emerg_home_phone','Emergency Home Phone','','','','','',''),(304,'emrg_w_phone','Emergency Work Phone','','','','','',''),(305,'emer_con_rela','Emergency Contact Relation','','','','','',''),(306,'alt_em_contct','Alter Emergency Contact','','','','','',''),(307,'alt_emg_h_phone','Alt Emergency Home Phone','','','','','',''),(308,'alt_emg_w_phone','Alt Emergency  Work Phone','','','','','',''),(309,'reports','Reports','','','','','',''),(310,'view_atn','Attendance','','','','','',''),(311,'mang','Employemanagement','','','','','',''),(312,'designation','Position','','','','','',''),(313,'practice','Practice','','','','','',''),(314,'branch_name','Branch Name','','','','','',''),(315,'chairman_name','Chairman','','','','','',''),(316,'b_photo','Photo','','','','','',''),(317,'b_address','Address','','','','','',''),(318,'position','Position','','','','','',''),(319,'advertisement','Advertisement','','','','','',''),(320,'position_name','Position','','','','','',''),(321,'position_details','Details','','','','','',''),(322,'circularprocess','Recruitment','','','','','',''),(323,'pos_id','Position','','','','','',''),(324,'adv_circular_date','Publish Date','','','','','',''),(325,'circular_dadeline','Dadeline','','','','','',''),(326,'adv_file','Documents','','','','','',''),(327,'adv_details','Details','','','','','',''),(328,'attendance','Attendance','','','','','',''),(329,'employee','Employee','','','','','',''),(330,'emp_id','Employee Name','','','','','',''),(331,'sign_in','Sign In','','','','','',''),(332,'sign_out','Sign Out','','','','','',''),(333,'staytime','Stay Time','','','','','',''),(334,'abc','1','','','','','',''),(335,'first_name','First Name','','','','','',''),(336,'last_name','Last Name','','','','','',''),(337,'alter_phone','Alternative Phone','','','','','',''),(338,'present_address','Present Address','','','','','',''),(339,'parmanent_address','Permanent Address','','','','','',''),(340,'candidateinfo','Candidate Info','','','','','',''),(341,'add_advertisement','Add Advertisement','','','','','',''),(342,'advertisement_list','Manage Advertisement ','','','','','',''),(343,'candidate_basic_info','Candidate Information','','','','','',''),(344,'can_basicinfo_list','Manage Candidate','','','','','',''),(345,'add_canbasic_info','New Candidate','','','','','',''),(346,'candidate_education_info','Candidate Educational Info','','','','','',''),(347,'can_educationinfo_list','Candidate Edu Info list','','','','','',''),(348,'add_edu_info','Add Educational Info','','','','','',''),(349,'can_id','Candidate Id','','','','','',''),(350,'degree_name','Obtained Degree','','','','','',''),(351,'university_name','University','','','','','',''),(352,'cgp','CGPA','','','','','',''),(353,'comments','Comments','','','','','',''),(354,'signature','Signature','','','','','',''),(355,'candidate_workexperience','Candidate Work Experience','','','','','',''),(356,'can_workexperience_list','Work Experience list','','','','','',''),(357,'add_can_experience','Add Work Experience','','','','','',''),(358,'company_name','Company Name','','','','','',''),(359,'working_period','Working Period','','','','','',''),(360,'duties','Duties','','','','','',''),(361,'supervisor','Supervisor','','','','','',''),(362,'candidate_workexpe','Candidate Work Experience','','','','','',''),(363,'candidate_shortlist','Candidate Shortlist','','','','','',''),(364,'shortlist_view','Manage Shortlist','','','','','',''),(365,'add_shortlist','Add Shortlist','','','','','',''),(366,'date_of_shortlist','Shortlist Date','','','','','',''),(367,'interview_date','Interview Date','','','','','',''),(368,'submit','Submit','','','','','',''),(369,'candidate_id','Your ID','','','','','',''),(370,'job_adv_id','Job Position','','','','','',''),(371,'sequence','Sequence','','','','','',''),(372,'candidate_interview','Interview','','','','','',''),(373,'interview_list','Interview list','','','','','',''),(374,'add_interview','Add Interview','','','','','',''),(375,'interviewer_id','Interviewer','','','','','',''),(376,'interview_marks','Viva Marks','','','','','',''),(377,'written_total_marks','Written Total Marks','','','','','',''),(378,'mcq_total_marks','MCQ Total Marks','','','','','',''),(379,'recommandation','Recommandation','','','','','',''),(380,'selection','Selection','','','','','',''),(381,'details','Details','','','','','',''),(382,'candidate_selection','Candidate Selection','','','','','',''),(383,'selection_list','Selection List','','','','','',''),(384,'add_selection','Add Selection','','','','','',''),(385,'employee_id','Employee Id','','','','','',''),(386,'position_id','1','','','','','',''),(387,'selection_terms','Selection Terms','','','','','',''),(388,'total_marks','Total Marks','','','','','',''),(389,'photo','Picture','','','','','',''),(390,'your_id','Your ID','','','','','',''),(391,'change_image','Change Photo','','','','','',''),(392,'picture','Photograph','','','','','',''),(393,'ad','Add','','','','','',''),(394,'write_y_p_info','Write Your Persoanal Information','','','','','',''),(395,'emp_position','Employee Position','','','','','',''),(396,'add_pos','Add Position','','','','','',''),(397,'list_pos','List of Position','','','','','',''),(398,'emp_salary_stup','Employee Salary SetUp','','','','','',''),(399,'add_salary_stup','Add Salary Setup','','','','','',''),(400,'list_salarystup','List of Salary Setup','','','','','',''),(401,'employee','Employee','','','','','',''),(402,'emp_sal_name','Salary Name','','','','','',''),(403,'emp_sal_type','Salary Type','','','','','',''),(404,'emp_performance','Employee Performance','','','','','',''),(405,'add_performance','Add Performance','','','','','',''),(406,'list_performance','List of Performance','','','','','',''),(407,'note','Note','','','','','',''),(408,'note_by','Note By','','','','','',''),(409,'number_of_star','Number of Star','','','','','',''),(410,'updated_by','Updated By','','','','','',''),(411,'emp_sal_payment','Manage Employee Salary','','','','','',''),(412,'add_payment','Add Payment','','','','','',''),(413,'list_payment','List of payment','','','','','',''),(414,'total_salary','Total Salary','','','','','',''),(415,'total_working_minutes','Working Hour','','','','','',''),(416,'payment_due','Payment Type','','','','','',''),(417,'payment_date','Date','','','','','',''),(418,'paid_by','Paid By','','','','','',''),(419,'view_employee_payment','Employee Payment List','','','','','',''),(420,'sal_payment_type','Salary Payment Type','','','','','',''),(421,'add_payment_type','Add Payment Type','','','','','',''),(422,'list_payment_type','List of Payment Type','','','','','',''),(423,'payment_period','Payment Period','','','','','',''),(424,'payment_type','Payment Type','','','','','',''),(425,'time','Punch Time','','','','','',''),(426,'shift','Shift','','','','','',''),(427,'location','Location','','','','','',''),(428,'logtype','Log Type','','','','','',''),(429,'branch','Location','','','','','',''),(430,'student','Students','','','','','',''),(432,'save_successfull','Your Data Save Successfully','','','','','',''),(433,'successfully_updated','Your Data Successfully Updated','','','','','',''),(434,'atn_form','Attendance','','','','','',''),(435,'atn_report','Attendance Reports','','','','','',''),(436,'end_date','To','','','','','',''),(437,'start_date','From','','','','','',''),(438,'done','Done','','','','','',''),(439,'employee_id_se','Write Employee Id or name here ','','','','','',''),(440,'attendance_repor','Attendance Report','','','','','',''),(441,'e_time','End Time','','','','','',''),(442,'s_time','Start Time','','','','','',''),(443,'atn_datewiserer','Date Wise Report','','','','','',''),(444,'atn_report_id','Date And Id base Report','','','','','',''),(445,'atn_report_time','Date And Time report','','','','','',''),(446,'payroll','Payroll','','','','','',''),(447,'loan','Loan','','','','','',''),(448,'loan_grand','Grant Loan','','','','','',''),(449,'add_loan','Add Loan','','','','','',''),(450,'loan_list','List of Loan','','','','','',''),(451,'loan_details','Loan Details','','','','','',''),(452,'amount','Total Amount','','','','','',''),(453,'interest_rate','Interest Percentage','','','','','',''),(454,'installment_period','Installment Period','','','','','',''),(455,'repayment_amount','Repayment Total','','','','','',''),(456,'date_of_approve','Approve Date','','','','','',''),(457,'repayment_start_date','Repayment From','','','','','',''),(458,'permission_by','Permitted By','','','','','',''),(459,'grand','Grand','','','','','',''),(460,'installment','Installment','','','','','',''),(461,'loan_status','Status','','','','','',''),(462,'installment_period_m','Installment Period in Month','','','','','',''),(463,'successfully_inserted','Your loan Successfully Granted','','','','','',''),(464,'loan_installment','Loan Installment','','','','','',''),(465,'add_installment','Add Installment','','','','','',''),(466,'installment_list','List of Installment','','','','','',''),(467,'loan_id','Loan No','','','','','',''),(468,'installment_amount','Installment Amount','','','','','',''),(469,'payment','Payment','','','','','',''),(470,'received_by','Receiver','','','','','',''),(471,'installment_no','Install No','','','','','',''),(472,'notes','Notes','','','','','',''),(473,'paid','Paid','','','','','',''),(474,'loan_report','Loan Report','','','','','',''),(475,'e_r_id','Enter Your Employee ID','','','','','',''),(476,'leave','Leave','','','','','',''),(477,'add_leave','Add Leave','','','','','',''),(478,'list_leave','List of Leave','','','','','',''),(479,'dayname','Weekly Leave Day','','','','','',''),(480,'holiday','Holiday','','','','','',''),(481,'list_holiday','List of Holidays','','','','','',''),(482,'no_of_days','Number of Days','','','','','',''),(483,'holiday_name','Holiday Name','','','','','',''),(484,'set','SET','','','','','',''),(485,'tax','Tax','','','','','',''),(486,'tax_setup','Tax Setup','','','','','',''),(487,'add_tax_setup','Add Tax Setup','','','','','',''),(488,'list_tax_setup','List of Tax setup','','','','','',''),(489,'tax_collection','Tax collection','','','','','',''),(490,'start_amount','Start Amount','','','','','',''),(491,'end_amount','End Amount','','','','','',''),(492,'rate','Tax Rate','','','','','',''),(493,'date_start','Date Start','','','','','',''),(494,'amount_tax','Tax Amount','','','','','',''),(495,'collection_by','Collection By','','','','','',''),(496,'date_end','Date End','','','','','',''),(497,'income_net_period','Income  Net period','','','','','',''),(498,'default_amount','Default Amount','','','','','',''),(499,'add_sal_type','Add Salary Type','','','','','',''),(500,'list_sal_type','Salary Type List','','','','','',''),(501,'salary_type_setup','Salary Type Setup','','','','','',''),(502,'salary_setup','Salary SetUp','','','','','',''),(503,'add_sal_setup','Add Salary Setup','','','','','',''),(504,'list_sal_setup','Salary Setup List','','','','','',''),(505,'salary_type_id','Salary Type','','','','','',''),(506,'salary_generate','Salary Generate','','','','','',''),(507,'add_sal_generate','Generate Now','','','','','',''),(508,'list_sal_generate','Generated Salary List','','','','','',''),(509,'gdate','Generate Date','','','','','',''),(510,'start_dates','Start Date','','','','','',''),(511,'generate','Generate ','','','','','',''),(512,'successfully_saved_saletup',' Set up Successfull','','','','','',''),(513,'s_date','Start Date','','','','','',''),(514,'e_date','End Date','','','','','',''),(515,'salary_payable','Payable Salary','','','','','',''),(516,'tax_manager','Tax','','','','','',''),(517,'generate_by','Generate By','','','','','',''),(518,'successfully_paid','Successfully Paid','','','','','',''),(519,'direct_empl',' Employee','','','','','',''),(520,'add_emp_info','Add New Employee','','','','','',''),(521,'new_empl_pos','Add New Employee Position','','','','','',''),(522,'manage','Manage Position','','','','','',''),(523,'ad_advertisement','ADD POSITION','','','','','',''),(524,'moduless','Modules','','','','','',''),(525,'next','Next','','','','','',''),(526,'finish','Finish','','','','','',''),(527,'request','Request','','','','','',''),(528,'successfully_saved','Your Data Successfully Saved','','','','','',''),(529,'sal_type','Salary Type','','','','','',''),(530,'sal_name','Salary Name','','','','','',''),(531,'leave_application','Leave Application','','','','','',''),(532,'apply_strt_date','Application Start Date','','','','','',''),(533,'apply_end_date','Application End date','','','','','',''),(534,'leave_aprv_strt_date','Approve Start Date','','','','','',''),(535,'leave_aprv_end_date','Approved End Date','','','','','',''),(536,'num_aprv_day','Aproved Day','','','','','',''),(537,'reason','Reason','','','','','',''),(538,'approve_date','Approved Date','','','','','',''),(539,'leave_type','Leave Type','','','','','',''),(540,'apply_hard_copy','Application Hard Copy','','','','','',''),(541,'approved_by','Approved By','','','','','',''),(542,'notice','Notice Board','','','','','',''),(543,'noticeboard','Notice Board','','','','','',''),(544,'notice_descriptiion','Description','','','','','',''),(545,'notice_date','Notice Date','','','','','',''),(546,'notice_type','Notice Type','','','','','',''),(547,'notice_by','Notice By','','','','','',''),(548,'notice_attachment','Attachment','','','','','',''),(549,'attendance_list','Attendance List','','','','','',''),(550,'checkin','Check In','','','','','',''),(551,'checkout','Check Out','','','','','',''),(552,'stay','Stay','','','','','',''),(553,'sl','SL','','','','','',''),(554,'name','Name','','','','','',''),(556,'id','ID','','','','','',''),(557,'single_checkin','Single Check In','','','','','',''),(558,'bulk_checkin','Bulk Check In','','','','','',''),(559,'manage_attendance','Manage Attendance','','','','','',''),(560,'update_attendance','Attendnece Update','','','','','',''),(561,'add_attendance','Add Attendance','','','','','',''),(562,'report_view','Report','','','','','',''),(563,'attendance_report','Attendance Report','','','','','',''),(564,'manage_award','Manage Award','','','','','',''),(565,'add_new_award','Add New Award','','','','','',''),(566,'educational_information','Educational Information','','','','','',''),(567,'past_experience','Past Experience','','','','','',''),(568,'basic_information','Basic Information','','','','','',''),(569,'manage_shortlist','Manage Short List','','','','','',''),(570,'manage_selection','Manage Selection','','','','','',''),(571,'manage_interview','Manage Interview','','','','','',''),(572,'add_new_dept','Add New Department','','','','','',''),(573,'manage_dept','Manage Department','','','','','',''),(574,'weekly_holiday','Weekly Holiday','','','','','',''),(575,'manage_holiday','Manage Holiday','','','','','',''),(576,'add_more_holiday','Add More Holiday','','','','','',''),(577,'add_leave_type','Add Leave Type','','','','','',''),(578,'others_leave_application','Add Leave','','','','','',''),(579,'add_leave_type','Add Leave Type','','','','','',''),(580,'others_leave','Apply Leave','','','','','',''),(581,'manage_application','Manage Application','','','','','',''),(582,'manage_granted_loan','Manage Granted Loan','','','','','',''),(583,'grant_loan','Grant Loan','','','','','',''),(584,'add_salary_setup','Add Salary Setup','','','','','',''),(585,'manage_salary_setup','Manage Salary Setup','','','','','',''),(586,'add_salary_type','Add Salary Type','','','','','',''),(587,'manage_salary_type','Manage Salary Type','','','','','',''),(588,'manage_tax_setup','Manage Tax Setup','','','','','',''),(589,'setup_tax','Setup Tax','','','','','',''),(590,'salary_type','Salary Type','','','','','',''),(591,'manage_salary_generate','Manage Salary Generate','','','','','',''),(592,'generate_now','Generate Now','','','','','',''),(593,'benefit_type','Benifit','','','','','',''),(594,'customer','Customer','','','','','',''),(595,'customer_list','Customer List','','','','','',''),(596,'floorplan_list','Floor Plan List','','','','','',''),(597,'floor_name','Floor Name','','','','','',''),(598,'num_of_room','No of Room','','','','','',''),(599,'room_no','Room No.','','','','','',''),(600,'add_floor','Add Floor','','','','','',''),(601,'assign_floor','Assign Floor','','','','','',''),(602,'floor_list','Floor List','','','','','',''),(603,'start_roomno','Start Room No','','','','','',''),(604,'assign_room','Assign Room','','','','','',''),(605,'assign_facilities','Assign Room Facilities','','','','','',''),(606,'assign_rate','Assign Room Rate','','','','','',''),(607,'first_room_assign','Room is not select. Please Select Room First','','','','','',''),(608,'nationality','Nationality','','','','','',''),(609,'native','Native','','','','','',''),(610,'foreigner','Foreigner','','','','','',''),(611,'profession','Profession','','','','','',''),(612,'national_id','National ID','','','','','',''),(613,'passport_no','Passport No','','','','','',''),(614,'visa_reg_no','Visa/Reg. No','','','','','',''),(615,'purpose','Purpose','','','','','',''),(616,'tourist','Tourist','','','','','',''),(617,'business','Business','','','','','',''),(618,'official','Official','','','','','',''),(619,'customer_edit','Update Customer','','','','','',''),(620,'book_now','Book Now','','','','','',''),(621,'payment_list','Payment List','','','','','',''),(622,'payment_form','Payment Form','','','','','',''),(623,'invoice_no','Invoice No','','','','','',''),(624,'invoice','Invoice','','','','','',''),(625,'pay_date','Pay Date','','','','','',''),(626,'payment_method','Payment Method','','','','','',''),(627,'payment_setting','Payment Setting','','','','','',''),(628,'paymentmethod_list','Payment Method List','','','','','',''),(629,'paymentmethod_setup','Payment Setup','','','','','',''),(630,'payment_add','Add Payment Method','','','','','',''),(631,'payment_name','Payment Name','','','','','',''),(632,'marchantid','Marchant ID','','','','','',''),(633,'supplier_add','Add Supplier','','','','','',''),(634,'supplier_edit','Update Supplier','','','','','',''),(635,'purchase_item','Purchase Item','','','','','',''),(636,'purchase','Purchase Manage','','','','','',''),(637,'purchase_list','Purchase List','','','','','',''),(638,'purchase_add','Add Purchase','','','','','',''),(639,'purchase_edit','Update Purchase','','','','','',''),(640,'quantity','Quantity','','','','','',''),(641,'supplier_information','Supplier Information','','','','','',''),(642,'supplier_manage','Supplier Manage','','','','','',''),(643,'supplier_name','Supplier Name','','','','','',''),(644,'supplier_list','Supplier List','','','','','',''),(645,'purchase_return','Purchase Return','','','','','',''),(646,'purchase_qty','Purchase Qty','','','','','',''),(647,'return_qty','Return Qty','','','','','',''),(648,'return_invoice','Return Invoice','','','','','',''),(649,'units','Unit and Products','','','','','',''),(650,'manage_unitmeasurement','Unit Measurement','','','','','',''),(651,'unit_list','Unit Measurement List','','','','','',''),(652,'unit_add','Add Unit','','','','','',''),(653,'unit_update','Unit Update','','','','','',''),(654,'unit_name','Unit Name','','','','','',''),(655,'manage_ingradient','Manage Product','','','','','',''),(656,'ingradient_list','Products List','','','','','',''),(657,'add_ingredient','Add Product','','','','','',''),(658,'ingredient_name','Product Name','','','','','',''),(659,'unit_short_name','Short Name','','','','','',''),(660,'update_ingredient','Update Product','','','','','',''),(661,'mobile','Mobile','','','','','',''),(662,'return','Return','','','','','',''),(663,'booking_report','Booking Report','','','','','',''),(664,'guest_info','Guest Information','','','','','',''),(665,'purchase_report','Purchase Report','','','','','',''),(666,'web_setting','Web Setting','','','','','',''),(667,'banner_setting','Banner Setting','','','','','',''),(668,'menu_setting','Menu Setting','','','','','',''),(669,'widget_setting','Widget Setting','','','','','',''),(670,'add_banner','Add Banner','','','','','',''),(671,'bannertype','Add Banner Type','','','','','',''),(672,'banner_list','Banner List','','','','','',''),(673,'title','Title','','','','','',''),(674,'subtitle','Sub Title','','','','','',''),(675,'banner_type','Banner Type','','','','','',''),(676,'link_url','Link URL','','','','','',''),(677,'banner_edit','Banner Update','','','','','',''),(678,'menu_name','Menu Name','','','','','',''),(679,'menu_url','Menu Slug','','','','','',''),(680,'sub_menu','Sub Menu','','','','','',''),(681,'add_menu','Add Menu','','','','','',''),(682,'parent_menu','Parent Menu','','','','','',''),(683,'widget_name','Widget Name','','','','','',''),(684,'widget_title','Widget Title','','','','','',''),(685,'widget_desc','Description','','','','','',''),(686,'add_widget','Add New','','','','','',''),(687,'common_setting','Common Setting','','','','','',''),(688,'bannersize','Banner Size','','','','','',''),(689,'width','Width','','','','','',''),(690,'height','Height','','','','','',''),(691,'email_setting','Email Setting','','','','','',''),(692,'assign_roomoffer','Assign Room Offer','','','','','',''),(693,'offer_year_month','Select Month/Year','','','','','',''),(694,'current_rate','Orginal Rate','','','','','',''),(695,'offer_rate','Offer Discount','','','','','',''),(696,'roominfo','Room information','','','','','',''),(697,'reserve_condition','Reserve Condition','','','','','',''),(698,'subscribelist','Subscribe List','','','','','',''),(699,'offer_title','Offer Title','','','','','',''),(700,'offer_text','Offer Text','','','','','',''),(701,'customer_add','Add Customer','','','','','',''),(702,'report','Report','','','','','',''),(703,'set_default','Default','','','','','',''),(704,'template_name','Template Name','','','','','',''),(705,'sms_template','SMS Template','','','','','',''),(706,'sms_template_warning','Please Use \"{Id}\" Format Without Quotation To Set Dynamic Value Inside Template','','','','','',''),(707,'order_successfully','Your booking has been completed thank you.','','','','','',''),(708,'order_fail','Booking Failed','','','','','',''),(709,'invalid_splash','Splash image not uploaded.','','','','','',''),(710,'splash','Splash image','','','','','',''),(711,'product_list','Product List','','','','','',''),(712,'amount','Total Amount','','','','','',''),(713,'return_qty','Return Qty','','','','','',''),(714,'price','Price','','','','','',''),(715,'stock_report','Stock Report','','','','','',''),(716,'purchase_list','Purchase List','','','','','',''),(717,'paymentmethod','Payment Setting','','','','','',''),(718,'candidate_name','Name','','','','','',''),(719,'apply_day','Apply Day','','','','','',''),(720,'number_of_leave_days','Number of Leave Days','','','','','',''),(721,'manage_installment','Manage Installment','','','','','',''),(722,'filter','Search','','','','','',''),(723,'salary_benefits_type','Benefit Type','','','','','',''),(724,'basic','Basic','','','','','',''),(725,'gross_salary','Gross Salary ','','','','','',''),(726,'currency_list','Currency List','','','','','',''),(727,'currency_name','Currency Name','','','','','',''),(728,'currency_add','Add Currency','','','','','',''),(729,'currency_edit','Update Currency','','','','','',''),(730,'currency_icon','Currency Icon','','','','','',''),(731,'currency_rate','Conversation Rate','','','','','',''),(732,'currency','Currency Setting','','','','','',''),(733,'education','Education','','','','','',''),(734,'institute_name','Institute Name','','','','','',''),(735,'result','Result','','','','','',''),(736,'grand_total','Grand Total','','','','','',''),(737,'common_setting','Common Setting','','','','','',''),(738,'sms_configuration','Sms Configuration','','','','','',''),(739,'sms_template','Sms Template','','','','','',''),(740,'template_list','Template List','','','','','',''),(741,'sunscribe_list','Subscribe List','','','','','',''),(742,'role_listassign','Assign Role List','','','','','',''),(743,'total_amount','Total Amount','','','','','',''),(744,'total_loan','Total Loan','','','','','',''),(745,'unit_measurement_list','Unit Measurement List','','','','','',''),(747,'welcome_back','Welcome Back','','','','','',''),(748,'security_setting','Security Setting','','','','','',''),(749,'security_modules','Security Module','','','','','',''),(750,'try_duration','Duration','','','','','',''),(751,'wrong_try','Wrong Try','','','','','',''),(752,'ip_block','Ip block','','','','','',''),(753,'site_key','Site key','','','','','',''),(754,'secret_key','Secret key','','','','','',''),(755,'balance','Balance','','','','','',''),(756,'account_code','Account Code','','','','C?digo da Conta','',''),(757,'loan_no','Loan No.','','','','','',''),(758,'bank_book','Bank Book','','','','','',''),(759,'trial_balance','Trial Balance','','','','','',''),(760,'manage_award','Manage Award','','','','','',''),(761,'award_list','Award List','','','','','',''),(762,'already_exists','Already Exists This Name.','','','','','',''),(763,'can_name','Candidate Name','','','','','',''),(764,'turkish','','','','','','',''),(765,'store_name','Store Name','','','','','',''),(766,'update_role_assign','Update Role Assign','','','','','',''),(767,'facility_details','Facility Details Name Already Exists','','','','','',''),(768,'pay_exact_amount','Please pay the exact amount','','','','','',''),(769,'search_report','Search Report','','','','','',''),(770,'payment_status','Payment Status','','','','','',''),(771,'previous','Previous','','','','','',''),(772,'check_availability','Check Availability','','','','','',''),(773,'need_help','Need Help:','','','','','',''),(774,'join_us','Join Us','','','','','',''),(775,'children','Children','','','','','',''),(776,'captcha_registration_link','Captcha Registration Link','','','','','',''),(777,'cookie_secure','Cookie Secure','','','','','',''),(778,'captcha','Captcha','','','','','',''),(779,'csrf_token','CSRF Token','','','','','',''),(780,'xss_filter','XSS filter','','','','','',''),(781,'cookie_http','Cookie http','','','','','',''),(782,'can_create','Can Create','','','','','',''),(783,'can_read','Can read','','','','','',''),(784,'can_edit','Can Edit','','','','','',''),(785,'can_delete','Can Delete','','','','','',''),(786,'amount_vs_booking','Total Booking Amount vs Total Number of Booking','','','','','',''),(787,'equalizer','Equalizer','','','','','',''),(788,'today_booking','Today Booking','','','','','',''),(789,'attach_money','Attach Money','','','','','',''),(790,'group_add','Group Add','','','','','',''),(791,'total_customer','Total Customer','','','','','',''),(792,'total_booking','Total Booking','','','','','',''),(793,'poll','Poll','','','','','',''),(794,'today_booking_list','Today Booking List','','','','','',''),(795,'next_day_booking','Next Day Booking','','','','','',''),(796,'add_new_customer','Add New Customer','','','','','',''),(797,'latest_version','Latest version','','','','','',''),(798,'current_version','Current version','','','','','',''),(799,'no_update_available','No Update available','','','','','',''),(800,'active','Active','','','','','',''),(801,'inactive','InActive','','','','','',''),(802,'select_option','Select Option','','','','','',''),(803,'left','Left','','','','','',''),(804,'right','Right','','','','','',''),(805,'is_live_or_test','Is Live or Test','','','','','',''),(806,'live','Live','','','','','',''),(807,'test_mode','Test Mode','','','','','',''),(808,'paid_amount','Paid Amount','','','','','',''),(809,'due_amount','Due Amount','','','','','',''),(810,'preview','Preview','','','','','',''),(811,'booking_confirm_message','We\'ll send your booking confirmation to this email address.','','','','','',''),(812,'create_an_account','Create an account?','','','','','',''),(813,'create_account_password','Create account password','','','','','',''),(814,'language_list','Language List','','','','','',''),(815,'phrase_name','Phrase Name','','','','','',''),(816,'label','Label','','','','','',''),(817,'unpaid','Unpaid','','','','','',''),(818,'select_payment_type','Select payment Type','','','','','',''),(819,'add_phrase','Add Phrase','','','','','',''),(820,'phrase','Phrase','','','','','',''),(821,'upload','Upload','','','','','',''),(822,'notifications','Notifications','','','','','',''),(823,'you_have','You have','','','','','',''),(824,'unseen_notification',' unseen notification','','','','','',''),(825,'view_all_notification','View All Notifications','','','','','',''),(826,'full_time','Full Time','','','','','',''),(827,'part_time','Part Time','','','','','',''),(828,'contructual','Contructual','','','','','',''),(829,'other','Other','','','','','',''),(830,'yes','Yes','','','','','',''),(831,'no','No','','','','','',''),(832,'hourly','Hourly','','','','','',''),(833,'salary','Salary','','','','','',''),(834,'select_frequency','Select Frequency','','','','','',''),(835,'weekly','Weekly','','','','','',''),(836,'biweekly','Biweekly','','','','','',''),(837,'annual','Annual','','','','','',''),(838,'male','Male','','','','','',''),(839,'female','Female','','','','','',''),(840,'single','Single','','','','','',''),(841,'married','Married','','','','','',''),(842,'divorced','Divorced','','','','','',''),(843,'widowed','Widowed','','','','','',''),(844,'citizen','Citizen','','','','','',''),(845,'non_citizen','Non-ctizen','','','','','',''),(846,'text','Text','','','','','',''),(847,'text_area','Text Area','','','','','',''),(848,'all_report','All Report','','','','','',''),(849,'no_result_found','No Result Found!!!!!','','','','','',''),(850,'select_breakfast','Select Breakfast','','','','','',''),(851,'selected','Selected','','','','','',''),(852,'select_bed_no','Select Bed No','','','','','',''),(853,'nights_booking_from','Nights Booking From','','','','','',''),(854,'number_of_rooms','Number Of Rooms','','','','','',''),(855,'number_of_person','Number Of Person','','','','','',''),(856,'select_room_no','Select Room No','','','','','',''),(857,'nights','Nights','','','','','',''),(858,'available_room','Available Room','','','','','',''),(859,'max_people','Max People','','','','','',''),(860,'price_per_night','Price Per Night','','','','','',''),(861,'offer_discount','Offer Discount','','','','','',''),(862,'sub_total','Sub Total','','','','','',''),(863,'service_charge','Service Charge','','','','','',''),(864,'no_room_found','No Room Found from this date!!!!','','','','','',''),(865,'hotel_information','Hotel Information','','','','','',''),(866,'offer_date','Offer Date','','','','','',''),(867,'taxes_and_service_charge','Taxes and Service Charge','','','','','',''),(868,'total_price','Total Price','','','','','',''),(869,'pending','Pending','','','','','',''),(870,'complete','Complete','','','','','',''),(871,'select_staus','Select Status','','','','','',''),(872,'cancel','Cancel','','','','','',''),(873,'room_facility_details_list','Room Facilities Details List','','','','','',''),(874,'room_facilities_list','Room Facilities List','','','','','',''),(875,'room','Room','','','','','',''),(876,'guest_signature','Guest Signature','','','','','',''),(877,'font_desk_office_signature','Font Desk Office Signature','','','','','',''),(879,'checkin_date','Check In Date','','','','','',''),(880,'checkout_date','Check Out Date','','','','','',''),(881,'checkin_time','Check InTime','','','','','',''),(882,'checkout_time','Check Out Time','','','','','',''),(883,'visaregno','','','','','','',''),(884,'for_foreign_guest','For Foreign Guest','','','','','',''),(885,'name_of_the_guest','Name Of the Guest','','','','','',''),(886,'guest_registration_card','Guest Registration Card','','','','','',''),(887,'unit_price','Unit Price','','','','','',''),(888,'purchase_date','Purchase Date','','','','','',''),(889,'expiry_date','Expiry Date','','','','','',''),(890,'item_information','Item Information','','','','','',''),(891,'stockqnt','Stock/Qnt','','','','','',''),(892,'there_are_currently_no_addresses','There are currently No Addresses','','','','','',''),(893,'checked_out','Checked Out','','','','','',''),(894,'remember_password','Remember password','','','','','',''),(895,'your_email','Your email','','','','','',''),(896,'sign_in_using_your_email_address','Sign in Using Your Email Address','','','','','',''),(897,'foreign','Foreign','','','','','',''),(898,'noon','Noon','','','','','',''),(899,'print_date','Print Date','','','','','',''),(900,'production_date','Production Date','','','','','',''),(901,'production_quantity','Production Quaantity','','','','','',''),(902,'position_list_detail','Position List Details','','','','','',''),(903,'add_return','Ad Return','','','','','',''),(904,'live_mode','Live mode','','','','','',''),(905,'application_list','Application List','','','','','',''),(906,'application_form','Application','','','','','',''),(907,'leave_application_form','Leave Application','','','','','',''),(908,'report_by_id','Report By Id','','','','','',''),(909,'send','Send','','','','','',''),(910,'award_form','Award','','','','','',''),(911,'manage_performance','Manage Performance','','','','','',''),(912,'employee_payment','Employee Payment','','','','','',''),(913,'setup_date','Setup Date','','','','','',''),(914,'select_date_format','Select Date Format','','','','','',''),(915,'date_format','Date Format','','','','','',''),(916,'ddmmyyyy','dd/mm/yyyy','','','','','',''),(917,'yyyymmdd','yyyy/mm/dd','','','','','',''),(918,'mmddyyyy','mm/dd/yyyy','','','','','',''),(919,'ddmyyyy','dd M,yyyy','','','','','',''),(920,'dmy','dd-mm-yyyy','','','','','',''),(921,'ymd','yyyy-mm-dd','','','','','',''),(922,'mdy','mm/dd/yyyy','','','','','',''),(923,'update_candidate','Update Candidate','','','','','',''),(924,'working_experience','Working Experience','','','','','',''),(925,'candidate_view','Candidate','','','','','',''),(926,'department_form','Department','','','','','',''),(927,'all_division','Division List','','','','','',''),(928,'add_employee_performance','Add Employee Performance','','','','','',''),(929,'update_employee_performance','Update Employee Performance','','','','','',''),(930,'deduct','Deduct','','','','','',''),(931,'addition','Addition','','','','','',''),(932,'manage_tax','Tax Manager','','','','','',''),(933,'update_salary_setup','Update Salary setup','','','','','',''),(934,'deduction','Deduction','','','','','',''),(935,'salary_setup_view','Salary Setup','','','','','',''),(936,'granted','Granted','','','','','',''),(937,'deny','Deny','','','','','',''),(938,'update_grant_loan','Update Grant Loan','','','','','',''),(939,'holiday_view','Holiday','','','','','',''),(940,'inventory','Inventory','','','','','',''),(941,'loan_installment_list','Loan Installment List','','','','','',''),(942,'interview_form','INTERVIEW','','','','','',''),(943,'deselected','Deselected','','','','','',''),(944,'selection_type','Selection type','','','','','',''),(945,'total_leave_days','Total Leave Days','','','','','',''),(946,'add_leave_type_form','Add Leave Type','','','','','',''),(947,'update_leave_type','Update Leave Type','','','','','',''),(948,'loan_view_list','Loan List','','','','','',''),(949,'benifit_class_code_description','Benifit Class Code Description','','','','','',''),(950,'benefit_accrual_date','Benefit Accrual Date','','','','','',''),(951,'create_candidate_selection','CREATE CANDIDATE SELECTION','','','','','',''),(952,'select','Select','','','','','',''),(953,'update_application','Update Application','','','','','',''),(954,'installment_update','Installment Update','','','','','',''),(955,'update_position','Update Position','','','','','',''),(956,'short_list','Short List','','','','','',''),(957,'select_weekly_leave_day','Select Weekly Leave Day','','','','','',''),(958,'friday','Friday','','','','','',''),(959,'saturday','Saturday','','','','','',''),(960,'sunday','Sunday','','','','','',''),(961,'weekly_leave','Weekly Leave','','','','','',''),(962,'add_weekly_leave','Add Weekly Leave','','','','','',''),(963,'check','check','','','','','',''),(964,'checked','Checked','','','','','',''),(965,'monthly','Monthly','','','','','',''),(966,'cash_in_hand','Cash in hand','','','','','',''),(967,'department_list','Department List','','','','','',''),(968,'today','today','','','','','',''),(969,'attach_money_icon','attach_money','','','','','',''),(970,'account_circle_icon','account_circle','','','','','',''),(971,'date_range_icon','date_range','','','','','',''),(972,'userid','User Id','','','','','',''),(973,'contact_send','Message Sent Successfully','','','','','',''),(974,'check_details','Check Your Details','','','','','',''),(975,'payment_details','Payments Details','','','','','',''),(976,'message_us','MESSAGE US','','','','','',''),(977,'start_chat','Start a chat!','','','','','',''),(978,'send_message','Send message','','','','','',''),(979,'awsome_choice','Awesome choice! You\'re getting a great deal with your rate.','','','','','',''),(980,'until','Until','','','','','',''),(981,'enter_details','Enter Your Details','','','','','',''),(982,'your_stay_includes','Your Stay Includes:','','','','','',''),(983,'booking_conditions','Booking Conditions','','','','','',''),(984,'full_guest_name','Full Guest Name','','','','','',''),(985,'special_request','Special Requests','','','','','',''),(986,'next_final_details','Next: Final details','','','','','',''),(987,'write_request','Please write requests in English or the property\'s language','','','','','',''),(988,'is_not_available','is not available for','','','','','',''),(989,'is_not_available_on_this_date','is not available on this date','','','','','',''),(990,'people','People','','','','','',''),(991,'gallery','Gallery','','','','','',''),(992,'show_all','Show All','','','','','',''),(993,'subscribe','Subscribe','','','','','',''),(994,'instagram','Instagram','','','','','',''),(995,'twitter','Twitter','','','','','',''),(996,'dribbble','Dribbble','','','','','',''),(997,'facebook','Facebook','','','','','',''),(998,'privacy','Privacy','','','','','',''),(999,'terms_conditions','Terms & Conditions','','','','','',''),(1000,'signup_account','Sign up for your account!','','','','','',''),(1001,'enter_your_valid_email','Enter your valid email','','','','','',''),(1002,'by_signing_up_you_agree','By signing up, you agree to the','','','','','',''),(1003,'terms_of_service','terms of service','','','','','',''),(1004,'sign_up','Sign Up','','','','','',''),(1005,'terms_of_use','terms of use','','','','','',''),(1006,'by_signing_up_youagree_to_our','By signing up, you agree to our','','','','','',''),(1007,'signin_to_your_account','Sign into your account!','','','','','',''),(1008,'nice_to_see_you','Nice to see you! Please log in with your account.','','','','','',''),(1009,'review','Review','','','','','',''),(1010,'night','Night','','','','','',''),(1011,'free_cancellation','Free cancellation','','','','','',''),(1012,'included_services','Included services','','','','','',''),(1013,'monthly_booking_status','Monthly Booking Status','','','','','',''),(1014,'refresh','Refresh','','','','','',''),(1015,'total_booking_history','Total Booking History','','','','','',''),(1016,'total_reservation','Total Reservation','','','','','',''),(1017,'child_limit','Child Limit','','','','','',''),(1018,'book_by','Book By','','','','','',''),(1019,'learn_more','We Provide','','','','','',''),(1020,'please_wait','Please wait...','','','','','',''),(1021,'gateway','Gateway','','','','','',''),(1022,'subtotal','Sub - Total Amount','','','','','',''),(1023,'invoice_return_list','Invoice Return List','','','','','',''),(1024,'no_product_found','No Product Found','','','','','',''),(1025,'language_name','Language Name','','','','','',''),(1026,'customer_information','Customer Information','','','','','',''),(1027,'room_rate','Room Rate','','','','','',''),(1028,'booking_information','Booking Information','','','','','',''),(1029,'login_logo','Login Logo','','','','','',''),(1030,'link1','Link1','','','','','',''),(1031,'link2','Link2','','','','','',''),(1032,'link3','Link3','','','','','',''),(1033,'header_logo','Header Logo','','','','','',''),(1034,'footer_logo','Footer Logo','','','','','',''),(1035,'invalid_credentials','Invalid Credentials','','','','','',''),(1036,'home','Home','','','','','',''),(1037,'please_logout','Please Logout First','','','','','',''),(1038,'invoice_logo','Invoice Logo','','','','','',''),(1039,'cash_book_report_on','Cash Book Report On','','','','','',''),(1040,'cash_book_voucher','Cash Book Voucher','','','','','',''),(1041,'bank_book_voucher','Bank Book Voucher','','','','','',''),(1042,'bank_book_report_of','Bank Book Report Of','','','','','',''),(1043,'general_ledger_of','General Ledger Of','','','','','',''),(1044,'transaction_date','Transaction date','','','','','',''),(1045,'voucher_type','Voucher Type','','','','','',''),(1046,'particulars','Particulars','','','','','',''),(1047,'head_of_account','Head of Account','','','','','',''),(1048,'no_report','No Report','','','','','',''),(1049,'trial_balance_with_opening_as_on','Trial Balance With Opening as On','','','','','',''),(1050,'prepared_by','Prepared By','','','','','',''),(1051,'account_official','Account Official','','','','','',''),(1052,'general_ledger_report','General Ledger Report','','','','','',''),(1053,'edit_profile','Edit Profile','','','','','',''),(1054,'phone_message','Note : Add prefix without + sign Example: (88)01840997***','','','','','',''),(1055,'assign_role','Assign Role','','','','','',''),(1056,'incorrect_email_or_password','Incorrect Email or Password','','','','','',''),(1057,'remarks','Remarks','','','','','',''),(1058,'website','Website','','','','','',''),(1059,'sorry_your_account_is_deactivated','Sorry Your account is Deactivated','','','','','',''),(1060,'settings','Settings','','','','','',''),(1061,'checkin_list','Check In List','','','','','',''),(1062,'checkout_list','Check Out List','','','','','',''),(1063,'direct_checkin','Direct Checkin','','','','','',''),(1064,'booking_detail','Booking Detail','','','','','',''),(1065,'room_detail','Room Details','','','','','',''),(1066,'occupant_info','Customer Info','','','','','',''),(1067,'rent_info','Rent Info','','','','','',''),(1068,'view_checkin','View Check In','','','','','',''),(1069,'payment_details','Payment Details','','','','','',''),(1070,'time_format','Time Format','','','','','',''),(1071,'booking_source','Booking Source','','','','','',''),(1072,'booking_source_no','Source No','','','','','',''),(1073,'arrival_from','Arival From','','','','','',''),(1074,'purpose_of_visit','Purpose of Visit','','','','','',''),(1075,'b_ty_details','Booking Type Details','','','','','',''),(1076,'b_ty_details_edit','Booking Type Details Update','','','','','',''),(1077,'booking_sourse','Booking Source','','','','','',''),(1078,'b_ty_d_list','Booking Type Details List','','','','','',''),(1079,'please_select_one','Please Select One','','','','','',''),(1080,'house_keeping','House Keeping','','','','','',''),(1081,'room_cleaning','Room Cleaning','','','','','',''),(1082,'assign_room_cleaning','Assign Room Cleaning','','','','','',''),(1083,'house_keeper','House Keeper','','','','','',''),(1089,'b_ty_details','Booking Type Details','','','','','',''),(1090,'b_ty_details_edit','Booking Type Details Update','','','','','',''),(1091,'booking_sourse','Booking Source','','','','','',''),(1092,'b_ty_d_list','Booking Type Details List','','','','','',''),(1093,'please_select_one','Please Select One','','','','','',''),(1094,'wakeup_call_list','Wake Up Call List','','','','','',''),(1095,'wakeup_time','Wake Up Time','','','','','',''),(1096,'wacall_add','Add Wake Up Call','','','','','',''),(1097,'cust_name','Customer Name\r\n','','','','','',''),(1098,'wacall_edit','Wake Up Call Update','','','','','',''),(1099,'categorylist','Category List','','','','','',''),(1100,'category_name','Category Name','','','','','',''),(1101,'add_category','Add Category','','','','','',''),(1103,'available','Available','','','','','',''),(1104,'used','Used','','','','','',''),(1106,'pool_type','Pool Type','','','','','',''),(1107,'pool_type_list','Pool Type List','','','','','',''),(1110,'swimming_pool','Swimming Pool','','','','','',''),(1111,'swimming_pool_list','Swimming Pool List','','','','','',''),(1114,'pool_img','Pool Image','','','','','',''),(1115,'pool_img_list','Pool Image List','','','','','',''),(1116,'pool_package','Pool Package','','','','','',''),(1117,'pool_package_list','Pool Package List','','','','','',''),(1118,'date_from','Date From','','','','','',''),(1121,'pool_package_add','Add Pool Package','','','','','',''),(1126,'select_customer','In House Guest','','','','','',''),(1128,'shift_mgt','Shift Management','','','','','',''),(1129,'shift_assign','Roster Assign','','','','','',''),(1140,'shift_assign_list','Roster Assign List','','','','','',''),(1142,'select_shift','Select Shift','','','','','',''),(1143,'select_emp','Select Employee','','','','','',''),(1157,'attendance_dashboard','Attendance Dashboard','','','','','',''),(1158,'complementary','Complementary','','','','','',''),(1169,'attendance_dashboard','Attendance Dashboard','','','','','',''),(1170,'itemmanage','Food Management','','','','GestiÃ³n de ArtÃ­culos','MenÃ¼ YÃ¶netimi',''),(1205,'guest_list','Guest List','','','','','',''),(1207,'tax_management','Tax Management','','','','','',''),(1208,'tax_list','Tax List','','','','','',''),(1209,'reuse_list','Laundry Product List','','','','','',''),(1210,'destroyed_list','Destroyed List','','','','','',''),(1233,'dashboard','Dashboard','','','','Tablero','GÃ¶sterge Paneli',''),(1295,'qr-order','QR Order','','','','Orden QR','QR Kod SipariÅŸleri',''),(1366,'due_marge','Due Merge','','','','','',''),(1377,'card_terminal_name','Card Terminal Name','','','','Nombre del Terminal de la Tarjeta','Kart Terminal AdÄ±',''),(1381,'card_terminal_name','Card Terminal Name','','','','Nombre del Terminal de la Tarjeta','Kart Terminal AdÄ±',''),(1386,'select_dept','Select Department','','','','','',''),(1387,'choose_file','Choose File','','','','','',''),(1388,'balance_sheet','Balance Sheet','','','','','',''),(1389,'financial_year','Financial Year','','','','','',''),(1390,'financial_year_end','Financial Year Ending','','','','','',''),(1391,'opening_balance','Opening Balance','','','','','',''),(1392,'download','Download','','','','','',''),(1393,'purchase_key','Purchase Key','','','','','',''),(1394,'add_module','Add  Module','','','','','',''),(1395,'overwrite','Overwrite','','','','','',''),(1396,'buy_now','Buy Now','','','','','',''),(1397,'install','Install','','','','','',''),(1398,'uninstall','Uninstall','','','','','',''),(1399,'room_status','Room Status','','','','','',''),(1400,'room_status','Room Status','','','','','',''),(1401,'room_status','Room Status','','','','','',''),(1438,'promocode','Promocode','','','','','',''),(1439,'promocode_list','Promocode List','','','','','',''),(1440,'addnew_promocode','New Promocode','','','','','',''),(1442,'per_price','Per Price','','','','','',''),(1448,'view','View','','','','','',''),(1451,'attend','Attend','','','','','',''),(1452,'absent','Absent','','','','','',''),(1453,'roster_empatn','Employee Attendance','','','','','',''),(1454,'today_crnt_shift','Today Current Shift','','','','','',''),(1455,'change_shift_dashboard','change shift','','','','','',''),(1456,'sv_changes','Save changes','','','','','',''),(1457,'assigned_empl_list','Assigned Employee List','','','','','',''),(1458,'extra_bpc','Extra Bed/Person/Child','','','','','',''),(1459,'additional_charges','Additional Charges','','','','','',''),(1460,'special_discount','Special Discount','','','','','',''),(1461,'restaurant','Restaurant','','','','','',''),(1462,'card_number','Card Number','','','','','',''),(1463,'cancel_charge','Cancel Charge','','','','','',''),(1464,'cancels_reservation','Cancel Reservation','','','','','',''),(1465,'total_extra_price','Total Extra Price','','','','','',''),(1466,'total_complementary_price','Total Complementary Price','','','','','',''),(1467,'reservation_details','Reservation Details','','','','','',''),(1468,'booking_reference','Booking Reference','','','','','',''),(1469,'booking_reference_no','Booking Reference No','','','','','',''),(1470,'room_info','Room Info','','','','','',''),(1471,'new_customer','New Customer','','','','','',''),(1472,'old_customer','Old Customer','','','','','',''),(1473,'mobile_no','Mobile No','','','','','',''),(1474,'rent','Rent','','','','','',''),(1475,'discount_reason','Discount Reason','','','','','',''),(1476,'discount_max','Discount (Max-100%)','','','','','',''),(1477,'commission','Commission (%)','','','','','',''),(1478,'commission_amt','Commission Amount','','','','','',''),(1479,'advance_details','Advance Details','','','','','',''),(1480,'payment_mode','Payment Mode','','','','','',''),(1481,'account_number','Account Number','','','','','',''),(1482,'advance_remarks','Advance Remarks','','','','','',''),(1483,'advance_amount','Advance Amount','','','','','',''),(1484,'occupant_details','Customer Details','','','','','',''),(1485,'guest_details','Guest Details','','','','','',''),(1486,'country_code','Country Code','','','','','',''),(1487,'father_name','Father Name','','','','','',''),(1488,'occupation','Occupation','','','','','',''),(1489,'dob','DOB','','','','','',''),(1490,'anniversary','Anniversary','','','','','',''),(1491,'vip','VIP','','','','','',''),(1492,'contact_details','Contact Details','','','','','',''),(1493,'contact_type','Contact Type','','','','','',''),(1494,'country','Country','','','','','',''),(1495,'zipcode','Zipcode','','','','','',''),(1496,'photo_id_details','Identity Details','','','','','',''),(1497,'photo_id_type','Identity Type','','','','','',''),(1498,'photo_id','ID','','','','','',''),(1499,'photo_id_upload','Identity Upload','','','','','',''),(1500,'guest_image','Guest Image','','','','','',''),(1501,'front_side','Front Side','','','','','',''),(1502,'drag_and_drop','Drag and Drop','','','','','',''),(1503,'supports_image','Supports JPG, JPEG, PNG, SVG','','','','','',''),(1504,'back_side','Back Side','','','','','',''),(1505,'occupant_image','Customer Image','','','','','',''),(1506,'bed','Bed','','','','','',''),(1507,'child','Child','','','','','',''),(1508,'amnt','Amount','','','','','',''),(1509,'check_in_details','Check In Details','','','','','',''),(1510,'go','Go','','','','','',''),(1511,'customer_details','Customer Details','','','','','',''),(1512,'booking_no','Booking No','','','','','',''),(1513,'email_id','Email ID','','','','','',''),(1514,'set_default_customer','Set Default Customer','','','','','',''),(1515,'room_rent_details','Room Rent Details','','','','','',''),(1516,'nod','NoD','','','','','',''),(1517,'rent_day','Rent/ Day','','','','','',''),(1518,'dis_day','Dis./ Day','','','','','',''),(1519,'amt_aft_dis','Amt. Aft Dis.','','','','','',''),(1520,'tot_rent','Tot. Rent','','','','','',''),(1521,'tot_amt','Tot. Amt','','','','','',''),(1522,'billing_details','Billing Details','','','','','',''),(1523,'room_rent_amt','Room Rent Amt','','','','','',''),(1524,'or','or','','','','','',''),(1525,'discount_amt','Discount Amt','','','','','',''),(1526,'service_charge_amt','Service Charge Amt','','','','','',''),(1527,'total_room_rent_amt','Total Room Rent Amt','','','','','',''),(1528,'total_room_rent_amt_with_tax','Total Room Rent Amt. With Tax','','','','','',''),(1529,'complementary_amt','Complementary Amt','','','','','',''),(1530,'extra_bpc_amt','Ex. Bed /Per. /Ch. Amt','','','','','',''),(1531,'advance_amt','Advance Amt','','','','','',''),(1532,'payable_rent_amt','Payable Rent Amt','','','','','',''),(1533,'additional_charge_comments','Additional Charge Comments','','','','','',''),(1534,'net_payable_amt','Net Payable Amt','','','','','',''),(1535,'credit_amt','Credit Amt','','','','','',''),(1536,'special_discount_amt','Special Discount Amt','','','','','',''),(1537,'payable_amt','Payable Amt','','','','','',''),(1538,'room_posted_bill','Room Posted Bill','','','','','',''),(1539,'bill_type','Bill Type','','','','','',''),(1540,'bill_settlement','Bill Settlement','','','','','',''),(1541,'cash','Cash','','','','','',''),(1542,'card','Card','','','','','',''),(1543,'cheque','Cheque','','','','','',''),(1544,'online','Online','','','','','',''),(1545,'balance_details','Balance Details','','','','','',''),(1546,'remain_amt','Remain Amt','','','','','',''),(1547,'collected_amt','Collected Amt','','','','','',''),(1548,'change_amt','Change Amt','','','','','',''),(1549,'invoiced_from','INVOICED FROM','','','','','',''),(1550,'invoiced_to','INVOICED TO','','','','','',''),(1551,'details_of_the_guest','Details of the Guest','','','','','',''),(1552,'guests_name','Guests Name','','','','','',''),(1553,'aft_dis','Aft. Dis','','','','','',''),(1554,'sub_total','Subtotal','','','','','',''),(1555,'grand_total_inctax','Grand Total (Incl.Tax)','','','','','',''),(1556,'authorized_signature','Authorized Signature','','','','','',''),(1557,'net_profit','Net Profit','','','','','',''),(1558,'net_loss','Net Loss','','','','','',''),(1559,'liability','Liability','','','','','',''),(1560,'cash_at_bank','Cash At Bank','','','','','',''),(1561,'refund_charge','Refund Charge','','','','','',''),(1562,'home_section_4','Home Section 4','','','','','',''),(1563,'image_size','Image Size','','','','','',''),(1564,'brand_logo','Brand Logo','','','','','',''),(1565,'contact_information','Contact Information','','','','','',''),(1566,'terms_and_privacy','Terms and Privacy','','','','','',''),(1567,'social_link','Social Link','','','','','',''),(1568,'pages_title','Pages Title','','','','','',''),(1569,'about_us','About Us','','','','','',''),(1570,'contact_us','Contact Us','','','','','',''),(1571,'team_members','Team Members','','','','','',''),(1572,'counter','Counter','','','','','',''),(1573,'team_gallery','Team Gallery','','','','','',''),(1574,'slider','Slider','','','','','',''),(1575,'home_section_1','Home Section 1','','','','','',''),(1576,'home_section_2','Home Section 2','','','','','',''),(1577,'home_section_3','Home Section 3','','','','','',''),(1578,'room_feature','Room Feature','','','','','',''),(1579,'footer','Footer','','','','','',''),(1580,'map_key','Map Key','','','','','',''),(1581,'latitude','Latitude','','','','','',''),(1582,'longitude','Longitude','','','','','',''),(1583,'price_text','Price Text','','','','','',''),(1584,'powered_by_text','Powered By SmartSoftware Solutions','','','','','',''),(1585,'phrase_update','Phrase Update','','','','','',''),(1586,'phrase_list','Phrase List','','','','','',''),(1587,'image_text','Image Text','','','','','',''),(1588,'instragram','Instragram','','','','','',''),(1589,'edit_user','Edit User','','','','','',''),(1590,'number','Number','','','','','',''),(1591,'increment','Increment','','','','','',''),(1592,'visitors_count','Visitors Count','','','','','',''),(1593,'invoice_information','Invoice Information','','','','','',''),(1594,'add_production','Add Production','','','','','',''),(1595,'returned_list','Returned List','','','','','',''),(1596,'promocode_discount','Promocode Discount','','','','','',''),(1597,'extra','Extra','','','','','',''),(1598,'refund_days','Refund days','','','','','',''),(1599,'refund_amount','Refund Amount','','','','','',''),(1600,'commission_rate','Commission Rate','','','','','',''),(1601,'total_balance','Total Balance','','','','','',''),(1602,'expired','Expired','','','','','',''),(1603,'extra_capability','Extra Capability','','','','','',''),(1604,'bed_charge','Bed Charge','','','','','',''),(1605,'person_charge','Person Charge','','','','','',''),(1606,'extra_capacity','Extra Capacity','','','','','',''),(1607,'reg_no','Reg No','','','','','',''),(1608,'is_active','Is Active','','','','','',''),(1609,'tax_name','Tax Name','','','','','',''),(1610,'product_queue','Product Queue','','','','','',''),(1611,'laundry_item','Laundry Item','','','','','',''),(1612,'destroyed_product_list','Destroyed Product List','','','','','',''),(1613,'destroyed','Destroyed','','','','','',''),(1614,'supplier_payment','Supplier Payment','','','','','',''),(1615,'balance_sheet_statement','Balance Sheet Statement','','','','','',''),(1616,'cash_flow_statement','Cash Flow Statement','','','','','',''),(1617,'statement_of_comprehensive_income','Statement of Comprehensive Income','','','','','',''),(1618,'as_on','As On','','','','','',''),(1619,'apply_code','Apply Code','','','','','',''),(1798,'timezone','Time Zone','','','','','',''),(1799,'select_cust_type','Select Customer Type','','','','','',''),(1800,'new_cust','New Customer','','','','','',''),(1801,'old_cust','Old Customer','','','','','',''),(1802,'phone_must_unique','Phone Number Must Be Unique','','','','','',''),(1803,'from_time','From Time','','','','','',''),(1804,'to_time','To Time','','','','','',''),(1805,'category','Category','','','','','',''),(1806,'offer_end_date','Offer End Date','','','','','',''),(1807,'varient','Varient','','','','','',''),(1808,'remove','Remove','','','','','',''),(1809,'payment_info','Payment Information','','','','','',''),(1810,'card_holder_name','Card Holder Name','','','','','',''),(1811,'monday','Monday','','','','','',''),(1812,'tuesday','Tuesday','','','','','',''),(1813,'wednesday','Wednesday','','','','','',''),(1814,'thursday','Thursday','','','','','',''),(1815,'view_order','View Order','','','','','',''),(1816,'payable_amnt','Payable amount','','','','','',''),(1817,'change_amnt','Change Amount','','','','','',''),(1818,'avg_qty','Ava. Qnty','','','','','',''),(1819,'unitres','Unit','','','','','',''),(1820,'dis_pcs','Dis/ Pcs','','','','','',''),(1821,'select_num_order','Select number of order','','','','','',''),(1822,'table_icon','Table Icon','','','','','',''),(1823,'show','Show','','','','','',''),(2111,'print','Print','','','','','',''),(2112,'close','Close','','','','','',''),(2113,'customer_name','Customer Name','','','','','',''),(2114,'forgot_password','Forgot Password','','','','','',''),(2115,'receover_password','Recover Password','','','','','',''),(2116,'enter_code','Enter Code','','','','','',''),(2117,'new_pass','New Password','','','','','',''),(2118,'y_mail','Your Email','','','','','',''),(2119,'lic_pur_key','License/Purchase key','','','','','',''),(2120,'autoupdate','Autoupdate','','','','','',''),(2121,'list','List','','','','','',''),(2122,'user_profile','User Profile','','','','','',''),(2123,'booking_details','Booking Details','','','','','',''),(2124,'update_profile','Update Profile','','','','','',''),(2125,'profile_details','Profile Details','','','','','',''),(2126,'do_not_have_an_account','Do not have an account','','','','','',''),(2127,'assignto','Assign To','','','','','',''),(2128,'underprocess','Under Process','','','','','',''),(2129,'addnew_checklist','New Checklist','','','','','',''),(2130,'task_name','Task Name','','','','','',''),(2131,'checklist','Cheklist','','','','','',''),(2132,'in_use','In Use','','','','','',''),(2133,'in_laundry','In Laundry','','','','','',''),(2134,'ready','Ready','','','','','',''),(2135,'cleaning_report','Cleaning Report','','','','','',''),(2136,'searched_records','Searched Records','','','','','',''),(2137,'assign_by','Assign By','','','','','',''),(2138,'completed','Completed','','','','','',''),(2139,'searched_report','Searched Report','','','','','',''),(2140,'manage_item','Manage Item','','','','','',''),(2141,'litem_name','Item Name','','','','','',''),(2142,'item_list','Item List','','','','','',''),(2143,'recieve','Recieve','','','','','',''),(2144,'operate_by','Operate By','','','','','',''),(2145,'total_cost','Total Cost','','','','','',''),(2146,'laundry_payment','Laundry Payment','','','','','',''),(2147,'all_records','All Records','','','','','',''),(2148,'room_cleaning_details','Room Cleaning Details','','','','','',''),(2149,'roomqr_list','Room Qr List','','','','','',''),(2150,'records','Records','','','','','',''),(2151,'laundry','Laundry','','','','','',''),(2152,'laundry_list','Laundry List','','','','','',''),(2153,'item_cost','Item Cost','','','','','',''),(2154,'ordermanage','Restaurent','','','','','',''),(2155,'manage_category','Manage Category','','','','','',''),(2156,'category_list','Category List','','','','','',''),(2157,'manage_food','Manage Food','','','','','',''),(2158,'add_food','Add Food','','','','','',''),(2159,'food_list','Food List','','','','','',''),(2160,'food_varient','Food Variant','','','','','',''),(2161,'food_availablity','Food Availability','','','','','',''),(2162,'add_varient','Add Variant','','','','','',''),(2163,'varient_name','Variant Name','','','','','',''),(2164,'variant_list','Variant List','','','','','',''),(2165,'variant_edit','Update Variant','','','','','',''),(2166,'food_availablelist','Food Available List','','','','','',''),(2167,'add_availablity','Add Available Day & Time','','','','','',''),(2168,'edit_availablity','Update Available Day & Time','','','','','',''),(2169,'available_day','Available Day','','','','','',''),(2170,'available_time','Available Time','','','','','',''),(2171,'manage_addons','Manage Add-ons','','','','','',''),(2172,'add_adons','Add Add-ons','','','','','',''),(2173,'menu_addons','Add-ons Menu','','','','','',''),(2174,'addons_list','Add-ons List','','','','','',''),(2175,'assign_adons','Add-ons Assign','','','','','',''),(2176,'assign_adons_list','Add-ons Assign List','','','','','',''),(2177,'update_adons','Update Add-ons','','','','','',''),(2178,'add_group_item','Add Group Item','','','','','',''),(2179,'menu_type','Menu Type','','','','','',''),(2180,'parent_cat','Parent Category','','','','','',''),(2181,'is_offer','Offer','','','','','',''),(2182,'offerdate','Offer Start Date','','','','','',''),(2183,'offerenddate','Select Kitchen','','','','','',''),(2184,'select_kitchen','Update','','','','','',''),(2185,'kitchen_name','Kitchen Name','','','','','',''),(2186,'is_special','Special','','','','','',''),(2187,'is_custome_quantity','Custom Quantity','','','','','',''),(2188,'cookedtime','Cooking Time','','','','','',''),(2189,'item_name','Food Name','','','','','',''),(2190,'component','Components','','','','','',''),(2191,'vat_tax','Vat','','','','','',''),(2192,'add_menu_type','Add Menu Type','','','','','',''),(2193,'menu_type_list','Menu Type List','','','','','',''),(2194,'menu_type_name','Menu Type','','','','','',''),(2195,'icon','Icon','','','','','',''),(2196,'menutype_edit','Menu Type Edit','','','','','',''),(2197,'addons_name','Add-ons Name ','','','','','',''),(2198,'pos_invoice','POS Invoice','','','','','',''),(2199,'order_list','Order List','','','','','',''),(2200,'pending_order','Pending Order','','','','','',''),(2201,'complete_order','Complete Order','','','','','',''),(2202,'cancel_order','Cancel Order','','','','','',''),(2203,'kitchen_dashboard','Kitchen Dashboard','','','','','',''),(2204,'counter_dashboard','Counter Dashboard','','','','','',''),(2205,'counter_list','Counter List','','','','','',''),(2206,'pos_setting','POS Setting','','','','','',''),(2207,'sound_setting','Sound Setting','','','','','',''),(2208,'upload_notify','Upload Notification Sound','','','','','',''),(2209,'placr_setting','Place order Setting','','','','','',''),(2210,'waiter','Waiter','','','','','',''),(2211,'table','Table Map','','','','','',''),(2212,'table_map','Table Map','','','','','',''),(2213,'is_sound','Is Sound Enable','','','','','',''),(2214,'quick_ord','Quick Order Setting','','','','','',''),(2215,'counter_no','Counter Number','','','','','',''),(2216,'add_counter','Add Counter','','','','','',''),(2217,'tabltno','Table No','','','','','',''),(2218,'ord_num','Order Number','','','','','',''),(2219,'ordtime','Order Time','','','','','',''),(2220,'remtime','Remaining Time','','','','','',''),(2221,'ordtcoun','Order Time Countdown Board','','','','','',''),(2222,'orderid','Order ID','','','','','',''),(2223,'customer_type','Customer Type','','','','','',''),(2224,'ordate','Order Date','','','','','',''),(2225,'service_chrg','Service Charge','','','','','',''),(2226,'customer_paid_amount','Customer Paid Amount','','','','','',''),(2227,'change_due','Change Due','','','','','',''),(2228,'total_due','Total Due','','','','','',''),(2229,'totalpayment','Total payment','','','','','',''),(2230,'billing_to','Billing To','','','','','',''),(2231,'bill_by','Bill By','','','','','',''),(2232,'orderno','Order No.','','','','','',''),(2233,'thanks_you','Thank you very much','','','','','',''),(2234,'powerbybdtask','Powered ?By: SmartSoftware Solutions','','','','','',''),(2235,'item','Item','','','','','',''),(2236,'billing_from','Billing From','','','','','',''),(2237,'order_status','Order Status','','','','','',''),(2238,'billing_date','Billing Date','','','','','',''),(2239,'cancel_reason','Cancel Reason','','','','','',''),(2240,'customer_order','Customer Notes','','','','','',''),(2241,'customerpicktime','Customer Pick-up Date and time','','','','','',''),(2242,'size','Size','','','','','',''),(2243,'qty','Quantity','','','','','',''),(2244,'foodnote','Food Note','','','','','',''),(2245,'addnotesi','Add Note','','','','','',''),(2246,'sl_payment','Select Your Payment Method','','','','','',''),(2247,'paymd','Payment Method','','','','','',''),(2248,'crd_terminal','Card Terminal','','','','','',''),(2249,'sl_bank','Select Bank','','','','','',''),(2250,'lstdigit','Last 4 Digit','','','','','',''),(2251,'cuspayment','Customer Payment','','','','','',''),(2252,'cng_amount','Changes Amount','','','','','',''),(2253,'pay_print','Pay Now & Print Invoice','','','','','',''),(2254,'payn','Pay Now','','','','','',''),(2255,'ordid','Order ID','','','','','',''),(2256,'can_reason','Cancel Reason','','','','','',''),(2257,'can_ord','Cancel Order','','','','','',''),(2258,'add_customer','Add Customer','','','','','',''),(2259,'fav_addesrr','Favorite Address','','','','','',''),(2260,'nw_order','New Order','','','','','',''),(2261,'ongoingorder','On Going Order','','','','','',''),(2262,'tdayorder','Today Order','','','','','',''),(2263,'onlineord','Online Order','','','','','',''),(2264,'kitchen_status','Kitchen Status','','','','','',''),(2265,'all','All','','','','','',''),(2266,'del_company','Delivery Company','','','','','',''),(2267,'thirdparty_orderid','Third-party Order ID','','','','','',''),(2268,'vat_tax1','Vat/Tax','','','','','',''),(2269,'quickorder','Quick Order','','','','','',''),(2270,'placeorder','Place Order','','','','','',''),(2271,'update_group_item','pdate Group Item','','','','','',''),(2272,'addons_qty','Add-ons Qty','','','','','',''),(2273,'add_to_cart','Add To cart','','','','','',''),(2274,'add_to_cart_more','Add Multiple Variant','','','','','',''),(2275,'select_this_table','Select This Table','','','','','',''),(2276,'seat','Seat','','','','','',''),(2277,'ord','Order','','','','','',''),(2278,'seat_time','Time','','','','','',''),(2279,'no_customer','No Customer','','','','','',''),(2280,'mergeord','Merge Order','','','','','',''),(2281,'before_time','Running Time','','','','','',''),(2282,'cmplt','Complete','','','','','',''),(2283,'split','Split','','','','','',''),(2284,'no_order_run','No Order Running','','','','','',''),(2285,'sl_product','Search Product','','','','','',''),(2286,'ord_places','Order Placed Successfully','','','','','',''),(2287,'do_print_in','Do you Want to Print Invoice???','','','','','',''),(2288,'ord_complte','Order Completed','','','','','',''),(2289,'ord_com_sucs','Order Completed Successfully','','','','','',''),(2290,'token_no','Token NO','','','','','',''),(2291,'ord_failed','Order Failed!!!','','','','','',''),(2292,'failed_msg','Order not placed due to some reason. Please Try Again!!!. Thank You !!!','','','','','',''),(2293,'ord_succ','Order Placed Successfully!!!','','','','','',''),(2294,'succ_smg','Are you Sure to Print This Invoice????','','','','','',''),(2295,'sl_option','Select Option','','','','','',''),(2296,'req_failed','Request Failed, Please check your code and try again!','','','','','',''),(2297,'person','Person','','','','','',''),(2298,'ord_number','Order No.','','','','','',''),(2299,'add_new_payment_type','Add New Payment Method','','','','','',''),(2300,'discount_type','Discount Type','','','','','',''),(2301,'type_slorder','Type and Select Order','','','','','',''),(2302,'type_table','Type and Select Table','','','','','',''),(2303,'Processingod','Processing...','','','','','',''),(2304,'sLengthMenu','Display _MENU_ records per page','','','','','',''),(2305,'sInfo','Showing _START_ to _END_ of _TOTAL_ entries','','','','','',''),(2306,'sInfoEmpty','Showing 0 to 0 of 0 entries','','','','','',''),(2307,'sInfoFiltered','(Filtered from _MAX_ Total Records)','','','','','',''),(2308,'sLoadingRecords','Loading...','','','','','',''),(2309,'sZeroRecords','Nothing found - sorry','','','','','',''),(2310,'sEmptyTable','No Data Available in Table','','','','','',''),(2311,'sFirst','First','','','','','',''),(2312,'sLast','Last','','','','','',''),(2313,'sPrevious','Previous','','','','','',''),(2314,'sNext','Next','','','','','',''),(2315,'sSortAscending','Activate to sort column ascending','','','','','',''),(2316,'sSortDescending','Activate to Sort Column Descending','','','','','',''),(2317,'_sign','Show %d Rows','','','','','',''),(2318,'_0sign','No Row Selected','','','','','',''),(2319,'_1sign','1 Line Selected','','','','','',''),(2320,'copy','Copy','','','','','',''),(2321,'excel','Excel','','','','','',''),(2322,'pdf','Pdf','','','','','',''),(2323,'colvis','Colvis','','','','','',''),(2324,'csv','CSV','','','','','',''),(2325,'tok','Token','','','','','',''),(2326,'clear','Clear','','','','','',''),(2327,'shipping_name','Shipping Method Name','','','','','',''),(2328,'shippingtime','Shipping Date & Time','','','','','',''),(2329,'select_doc_type','Select Doc Type','','','','','',''),(2330,'update_fooditem','Update Food Item','','','','','',''),(2331,'split_order','Split Order','','','','','',''),(2332,'table_manage','Manage Table','','','','','',''),(2333,'table_list','Table List','','','','','',''),(2334,'table_setting','Table Setting','','','','','',''),(2335,'add_new_table','Add Table','','','','','',''),(2336,'table_name','Table Name','','','','','',''),(2337,'floor_select','Floor Select','','','','','',''),(2338,'table_edit','Update Table','','','','','',''),(2339,'res_table_setup','Restaurant Table Setup','','','','','',''),(2340,'customertype_list','Customer Type List','','','','','',''),(2341,'list_of_card_terminal','Card Terminal List','','','','','',''),(2342,'add_new_terminal','Add New Terminal','','','','','',''),(2343,'update_terminal','Update Terminal','','','','','',''),(2344,'list_of_bank','Bank List','','','','','',''),(2345,'add_bank','Add New Bank','','','','','',''),(2346,'update_bank','Update Bank','','','','','',''),(2347,'bank_name','Bank Name','','','','','','');

/*Table structure for table `leave_apply` */

drop table if exists `leave_apply`;

CREATE TABLE `leave_apply` (
  `leave_appl_id` int(11) NOT NULL AUTO_INCREMENT,
  `employee_id` varchar(20) NOT NULL,
  `leave_type_id` int(2) NOT NULL,
  `apply_strt_date` varchar(20) NOT NULL,
  `apply_end_date` varchar(20) NOT NULL,
  `apply_day` int(11) NOT NULL,
  `leave_aprv_strt_date` varchar(20) NOT NULL,
  `leave_aprv_end_date` varchar(20) NOT NULL,
  `num_aprv_day` varchar(15) NOT NULL,
  `reason` varchar(100) NOT NULL,
  `apply_hard_copy` text DEFAULT NULL,
  `apply_date` varchar(20) NOT NULL,
  `approve_date` varchar(20) NOT NULL,
  `approved_by` varchar(30) NOT NULL,
  `leave_type` varchar(50) NOT NULL,
  PRIMARY KEY (`leave_appl_id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

/*Data for the table `leave_apply` */

/*Table structure for table `leave_type` */

drop table if exists `leave_type`;

CREATE TABLE `leave_type` (
  `leave_type_id` int(2) NOT NULL AUTO_INCREMENT,
  `leave_type` varchar(50) NOT NULL,
  `leave_days` int(2) NOT NULL,
  PRIMARY KEY (`leave_type_id`)
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=latin1;

/*Data for the table `leave_type` */

insert into `leave_type` values (3,'Paid Leave',10),(4,'Paternity Leave',45),(5,'Medical Leave',7),(6,'Unpaid Leave',5);

/*Table structure for table `loan_installment` */

drop table if exists `loan_installment`;

CREATE TABLE `loan_installment` (
  `loan_inst_id` int(11) NOT NULL AUTO_INCREMENT,
  `employee_id` varchar(21) CHARACTER SET latin1 NOT NULL,
  `loan_id` varchar(21) CHARACTER SET latin1 NOT NULL,
  `installment_amount` varchar(20) CHARACTER SET latin1 NOT NULL,
  `payment` varchar(20) CHARACTER SET latin1 NOT NULL,
  `date` varchar(20) CHARACTER SET latin1 NOT NULL,
  `received_by` varchar(20) CHARACTER SET latin1 NOT NULL,
  `installment_no` varchar(20) CHARACTER SET latin1 NOT NULL DEFAULT '1',
  `notes` varchar(80) CHARACTER SET latin1 NOT NULL,
  PRIMARY KEY (`loan_inst_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

/*Data for the table `loan_installment` */

/*Table structure for table `marital_info` */

drop table if exists `marital_info`;

CREATE TABLE `marital_info` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `marital_sta` varchar(30) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

/*Data for the table `marital_info` */

/*Table structure for table `membership` */

drop table if exists `membership`;

CREATE TABLE `membership` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `membership_name` varchar(250) COLLATE utf8_unicode_ci NOT NULL,
  `discount` float NOT NULL,
  `other_facilities` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `create_by` int(11) NOT NULL,
  `create_date` date NOT NULL,
  `update_by` int(11) NOT NULL,
  `update_date` date NOT NULL,
  `startpoint` int(11) NOT NULL,
  `endpoint` int(11) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

/*Data for the table `membership` */

/*Table structure for table `menu_add_on` */

drop table if exists `menu_add_on`;

CREATE TABLE `menu_add_on` (
  `row_id` bigint(20) NOT NULL AUTO_INCREMENT,
  `menu_id` int(11) NOT NULL,
  `add_on_id` int(11) NOT NULL,
  `is_active` tinyint(4) NOT NULL,
  PRIMARY KEY (`row_id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

/*Data for the table `menu_add_on` */

insert into `menu_add_on` values (1,7,1,1);

/*Table structure for table `message` */

drop table if exists `message`;

CREATE TABLE `message` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `sender_id` int(11) NOT NULL,
  `receiver_id` int(11) NOT NULL,
  `subject` varchar(255) NOT NULL,
  `message` text NOT NULL,
  `datetime` datetime NOT NULL,
  `sender_status` tinyint(1) NOT NULL DEFAULT 0 COMMENT '0=unseen, 1=seen, 2=delete',
  `receiver_status` tinyint(1) NOT NULL DEFAULT 0 COMMENT '0=unseen, 1=seen, 2=delete',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

/*Data for the table `message` */

/*Table structure for table `module` */

drop table if exists `module`;

CREATE TABLE `module` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(50) NOT NULL,
  `description` text DEFAULT NULL,
  `image` varchar(255) NOT NULL,
  `directory` varchar(100) NOT NULL,
  `status` tinyint(1) NOT NULL DEFAULT 1,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8;

/*Data for the table `module` */

insert into `module` values (1,'House Keeping','House keeping module provides room service, laundry service and it also has house keeping android app for managing room cleanig with QR code ','application/modules/house_keeping/assets/images/thumbnail.jpg','house_keeping',1),(2,'Restaurent Module','This is a POS system. Using this module you can manage a restaurent and order food for In house customer, outside customer and old customer.','application/modules/ordermanage/assets/images/thumbnail.jpg','ordermanage',1);

/*Table structure for table `module_permission` */

drop table if exists `module_permission`;

CREATE TABLE `module_permission` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `fk_module_id` int(11) NOT NULL,
  `fk_user_id` int(11) NOT NULL,
  `create` tinyint(1) DEFAULT NULL,
  `read` tinyint(1) DEFAULT NULL,
  `update` tinyint(1) DEFAULT NULL,
  `delete` tinyint(1) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `fk_module_id` (`fk_module_id`),
  KEY `fk_user_id` (`fk_user_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

/*Data for the table `module_permission` */

/*Table structure for table `multipay_bill` */

drop table if exists `multipay_bill`;

CREATE TABLE `multipay_bill` (
  `multipay_id` int(11) NOT NULL AUTO_INCREMENT,
  `order_id` int(11) NOT NULL,
  `multipayid` varchar(30) DEFAULT NULL,
  `payment_type_id` int(11) NOT NULL,
  `payment_acc_number` varchar(100) DEFAULT NULL,
  `amount` float NOT NULL,
  PRIMARY KEY (`multipay_id`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8mb4;

/*Data for the table `multipay_bill` */

insert into `multipay_bill` values (4,1,'',4,'',1100),(5,2,'',4,'',4800);

/*Table structure for table `notice_board` */

drop table if exists `notice_board`;

CREATE TABLE `notice_board` (
  `notice_id` int(11) NOT NULL AUTO_INCREMENT,
  `notice_descriptiion` text NOT NULL,
  `notice_date` date NOT NULL,
  `notice_type` varchar(50) NOT NULL,
  `notice_by` varchar(50) NOT NULL,
  `notice_attachment` text DEFAULT NULL,
  PRIMARY KEY (`notice_id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

/*Data for the table `notice_board` */

/*Table structure for table `order_menu` */

drop table if exists `order_menu`;

CREATE TABLE `order_menu` (
  `row_id` bigint(20) NOT NULL AUTO_INCREMENT,
  `order_id` bigint(20) NOT NULL,
  `menu_id` int(11) NOT NULL,
  `price` decimal(19,3) DEFAULT 0.000,
  `groupmid` int(11) DEFAULT 0,
  `notes` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `menuqty` float NOT NULL,
  `add_on_id` varchar(100) COLLATE utf8_unicode_ci NOT NULL,
  `addonsqty` varchar(100) COLLATE utf8_unicode_ci NOT NULL,
  `varientid` int(11) NOT NULL,
  `groupvarient` int(11) DEFAULT NULL,
  `addonsuid` int(11) DEFAULT NULL,
  `qroupqty` int(11) DEFAULT NULL,
  `isgroup` int(11) DEFAULT 0,
  `food_status` int(11) DEFAULT 0,
  `allfoodready` int(11) DEFAULT NULL,
  `isupdate` int(11) DEFAULT NULL,
  PRIMARY KEY (`row_id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

/*Data for the table `order_menu` */

insert into `order_menu` values (1,1,6,'600.000',0,'',2,'','',12,(null),612,(null),0,1,1,(null)),(2,2,6,'1200.000',0,'',4,'','',10,(null),610,(null),0,1,1,(null));

/*Table structure for table `page_title` */

drop table if exists `page_title`;

CREATE TABLE `page_title` (
  `pageid` int(11) NOT NULL AUTO_INCREMENT,
  `home` text NOT NULL,
  `aboutus` text NOT NULL,
  `contactus` text NOT NULL,
  `gallery` text NOT NULL,
  `roomlist` text NOT NULL,
  `roomdetails` text NOT NULL,
  PRIMARY KEY (`pageid`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8;

/*Data for the table `page_title` */

insert into `page_title` values (1,'Welcome to our Hotels','About Our Hotels','Contact Us','Our Gallerys','All roomss','All roomss');

/*Table structure for table `pay_frequency` */

drop table if exists `pay_frequency`;

CREATE TABLE `pay_frequency` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `frequency_name` varchar(30) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

/*Data for the table `pay_frequency` */

/*Table structure for table `payment_method` */

drop table if exists `payment_method`;

CREATE TABLE `payment_method` (
  `payment_method_id` tinyint(4) NOT NULL AUTO_INCREMENT,
  `payment_method` varchar(100) COLLATE utf8_unicode_ci NOT NULL,
  `is_active` tinyint(1) NOT NULL,
  PRIMARY KEY (`payment_method_id`)
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

/*Data for the table `payment_method` */

insert into `payment_method` values (1,'Card Payment',0),(3,'Paypal',1),(4,'Cash Payment',0),(5,'POS',1),(6,'Bank Payment',0);

/*Table structure for table `paymentsetup` */

drop table if exists `paymentsetup`;

CREATE TABLE `paymentsetup` (
  `setupid` int(11) NOT NULL AUTO_INCREMENT,
  `paymentid` int(11) NOT NULL,
  `marchantid` varchar(255) DEFAULT NULL,
  `password` varchar(120) NOT NULL,
  `email` varchar(100) NOT NULL,
  `currency` varchar(20) NOT NULL,
  `Islive` int(11) NOT NULL,
  `status` int(11) NOT NULL,
  PRIMARY KEY (`setupid`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8;

/*Data for the table `paymentsetup` */

insert into `paymentsetup` values (1,5,'style5c246d140fefc','style5c246d140fefc@ssl','shemul.rabbani@gmail.com','BDT',0,1),(2,3,'','','tareq7500personal2@gmail.com','USD',0,1);

/*Table structure for table `payroll_holiday` */

drop table if exists `payroll_holiday`;

CREATE TABLE `payroll_holiday` (
  `payrl_holi_id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `holiday_name` varchar(30) CHARACTER SET latin1 NOT NULL,
  `start_date` varchar(30) CHARACTER SET latin1 NOT NULL,
  `end_date` varchar(30) CHARACTER SET latin1 NOT NULL,
  `no_of_days` varchar(30) CHARACTER SET latin1 NOT NULL,
  `created_by` varchar(30) CHARACTER SET latin1 NOT NULL,
  `updated_by` varchar(30) CHARACTER SET latin1 NOT NULL,
  PRIMARY KEY (`payrl_holi_id`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8;

/*Data for the table `payroll_holiday` */

insert into `payroll_holiday` values (4,'Dussehra','2021-09-15','','1','',''),(5,'Vijayadashami','2021-10-15','2021-10-15','1','','');

/*Table structure for table `payroll_tax_setup` */

drop table if exists `payroll_tax_setup`;

CREATE TABLE `payroll_tax_setup` (
  `tax_setup_id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `start_amount` varchar(30) CHARACTER SET latin1 NOT NULL,
  `end_amount` varchar(30) CHARACTER SET latin1 NOT NULL,
  `rate` varchar(30) CHARACTER SET latin1 NOT NULL,
  `status` varchar(30) CHARACTER SET latin1 NOT NULL,
  PRIMARY KEY (`tax_setup_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

/*Data for the table `payroll_tax_setup` */

/*Table structure for table `position` */

drop table if exists `position`;

CREATE TABLE `position` (
  `pos_id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `position_name` varchar(255) CHARACTER SET latin1 NOT NULL,
  `position_details` varchar(255) CHARACTER SET latin1 NOT NULL,
  PRIMARY KEY (`pos_id`)
) ENGINE=InnoDB AUTO_INCREMENT=15 DEFAULT CHARSET=utf8;

/*Data for the table `position` */

insert into `position` values (1,'Director','Responsible for the pastry shop in a foodservice establishment. Ensures that the products produced in the pastry shop meet the quality standards in conjunction with the executive chef.'),(2,'HRM','Recruits and hires qualified employees, creates in-house job-training programs, and assists employees with their career needs.'),(3,'Kitchen manager','Supervises and coordinates activities concerning all back-of-the-house operations and personnel, including food preparation, kitchen and storeroom areas.'),(6,'House Keeper','House keepers are worked as room cleaner and laundry iteam carrier for the hotel'),(7,'Accounts','Play a key role in every restaurant. '),(9,'Waiter','Restaurant Waiter'),(13,'Hotel Manager','Manage Hotel'),(14,'Shift Manager','Manage Working Shift');

/*Table structure for table `products` */

drop table if exists `products`;

CREATE TABLE `products` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `product_name` varchar(250) COLLATE utf8_unicode_ci NOT NULL,
  `category_id` int(11) NOT NULL DEFAULT 1,
  `uom_id` int(11) NOT NULL,
  `stock` int(100) DEFAULT 0,
  `used` int(100) DEFAULT 0,
  `destroyed` int(11) NOT NULL DEFAULT 0,
  `reuseable` int(3) NOT NULL DEFAULT 0 COMMENT '0=No,1=Yes',
  `is_active` tinyint(4) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `category_id` (`category_id`,`is_active`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

/*Data for the table `products` */

insert into `products` values (1,'Detergent',501,7,0,0,0,0,1);

/*Table structure for table `promocode` */

drop table if exists `promocode`;

CREATE TABLE `promocode` (
  `promocodeid` int(11) NOT NULL AUTO_INCREMENT,
  `roomid` int(11) NOT NULL,
  `startdate` date NOT NULL,
  `enddate` date NOT NULL,
  `promocode` text COLLATE latin1_general_ci NOT NULL,
  `discount` int(11) NOT NULL,
  `status` int(11) NOT NULL,
  PRIMARY KEY (`promocodeid`)
) ENGINE=MyISAM AUTO_INCREMENT=4 DEFAULT CHARSET=latin1 COLLATE=latin1_general_ci;

/*Data for the table `promocode` */

/*Table structure for table `purchase_details` */

drop table if exists `purchase_details`;

CREATE TABLE `purchase_details` (
  `detailsid` int(11) NOT NULL AUTO_INCREMENT,
  `purchaseid` int(11) NOT NULL,
  `proid` int(11) NOT NULL,
  `quantity` decimal(10,2) NOT NULL DEFAULT 0.00,
  `unitname` varchar(80) NOT NULL,
  `price` decimal(10,2) NOT NULL DEFAULT 0.00,
  `totalprice` decimal(10,2) NOT NULL DEFAULT 0.00,
  `purchaseby` int(11) NOT NULL,
  `purchasedate` date NOT NULL,
  `purchaseexpiredate` date DEFAULT NULL,
  PRIMARY KEY (`detailsid`),
  KEY `purchaseid` (`purchaseid`,`proid`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8;

/*Data for the table `purchase_details` */

insert into `purchase_details` values (1,1,0,'5.00','','5000.00','25000.00',1,'2022-04-06','2022-04-30');

/*Table structure for table `purchase_return` */

drop table if exists `purchase_return`;

CREATE TABLE `purchase_return` (
  `preturn_id` int(11) NOT NULL AUTO_INCREMENT,
  `supplier_id` int(11) NOT NULL,
  `po_no` varchar(120) COLLATE utf8_unicode_ci NOT NULL,
  `return_date` date NOT NULL,
  `totalamount` float NOT NULL,
  `totaldiscount` float NOT NULL,
  `return_reason` varchar(250) COLLATE utf8_unicode_ci NOT NULL,
  `createby` int(11) NOT NULL,
  `createdate` datetime NOT NULL,
  `updateby` int(11) NOT NULL,
  `updatedate` datetime NOT NULL,
  PRIMARY KEY (`preturn_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

/*Data for the table `purchase_return` */

/*Table structure for table `purchase_return_details` */

drop table if exists `purchase_return_details`;

CREATE TABLE `purchase_return_details` (
  `preturn_id` int(11) NOT NULL,
  `product_id` bigint(20) NOT NULL,
  `qty` int(11) NOT NULL,
  `product_rate` float NOT NULL,
  `store_id` int(11) NOT NULL,
  `discount` float DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

/*Data for the table `purchase_return_details` */

/*Table structure for table `purchaseitem` */

drop table if exists `purchaseitem`;

CREATE TABLE `purchaseitem` (
  `purID` int(11) NOT NULL AUTO_INCREMENT,
  `invoiceid` varchar(50) DEFAULT NULL,
  `suplierID` int(11) NOT NULL,
  `total_price` decimal(10,2) NOT NULL DEFAULT 0.00,
  `details` text DEFAULT NULL,
  `purchasedate` date NOT NULL,
  `purchaseexpiredate` date NOT NULL,
  `savedby` int(11) NOT NULL,
  `status` varchar(3) DEFAULT '0' COMMENT '0=unpaid,1=paid',
  PRIMARY KEY (`purID`),
  KEY `invoiceid` (`invoiceid`,`suplierID`,`status`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8;

/*Data for the table `purchaseitem` */

insert into `purchaseitem` values (1,'081000',1,'25000.00','Put the detail here','2022-04-06','2022-04-30',1,'0');

/*Table structure for table `rate_type` */

drop table if exists `rate_type`;

CREATE TABLE `rate_type` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `r_type_name` varchar(30) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

/*Data for the table `rate_type` */

/*Table structure for table `rest_table` */

drop table if exists `rest_table`;

CREATE TABLE `rest_table` (
  `tableid` int(11) NOT NULL AUTO_INCREMENT,
  `tablename` varchar(50) NOT NULL,
  `person_capicity` int(11) NOT NULL,
  `table_icon` varchar(255) NOT NULL,
  `floor` int(11) DEFAULT 0,
  `status` int(11) NOT NULL DEFAULT 0 COMMENT '1=booked,0=free',
  PRIMARY KEY (`tableid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

/*Data for the table `rest_table` */

/*Table structure for table `room_image` */

drop table if exists `room_image`;

CREATE TABLE `room_image` (
  `room_img_id` int(11) NOT NULL AUTO_INCREMENT,
  `room_id` int(11) NOT NULL,
  `room_imagename` varchar(255) COLLATE latin1_general_ci NOT NULL,
  PRIMARY KEY (`room_img_id`)
) ENGINE=MyISAM AUTO_INCREMENT=18 DEFAULT CHARSET=latin1 COLLATE=latin1_general_ci;

/*Data for the table `room_image` */

/*Table structure for table `roomdetails` */

drop table if exists `roomdetails`;

CREATE TABLE `roomdetails` (
  `roomid` int(11) NOT NULL AUTO_INCREMENT,
  `roomtype` varchar(255) COLLATE latin1_general_ci NOT NULL,
  `roomsize` int(11) NOT NULL,
  `roomsizemesurement` varchar(255) COLLATE latin1_general_ci NOT NULL,
  `roomactive` int(11) NOT NULL,
  `bedsno` int(11) NOT NULL,
  `bedstype` int(255) NOT NULL,
  `number_of_star` int(10) DEFAULT 4,
  `roomdescription` varchar(255) COLLATE latin1_general_ci NOT NULL,
  `reservecondition` text COLLATE latin1_general_ci DEFAULT NULL,
  `roomstatus` int(11) NOT NULL DEFAULT 0,
  `capacity` int(11) NOT NULL,
  `exbedcapability` int(11) NOT NULL DEFAULT 1,
  `child_limit` int(11) DEFAULT 0,
  `rate` decimal(10,2) NOT NULL DEFAULT 0.00,
  `bedcharge` decimal(10,0) NOT NULL,
  `personcharge` decimal(10,0) NOT NULL,
  PRIMARY KEY (`roomid`),
  KEY `roomtype` (`roomtype`)
) ENGINE=MyISAM AUTO_INCREMENT=12 DEFAULT CHARSET=latin1 COLLATE=latin1_general_ci;

/*Data for the table `roomdetails` */

insert into `roomdetails` values (9,'Standard Single',1,'10',1,1,12,5,'This Is the description','This Is the condition',0,1,1,(null),'12000.00','12000','12000'),(10,'Standard Double',1,'10',1,1,13,5,'This Is the description','This Is the condition',0,1,1,(null),'14000.00','14000','14000'),(11,'standard Double 2',2,'10',1,1,13,0,'Bigger than single','couples onlz',0,2,1,(null),'12000.00','8000','4000');

/*Table structure for table `roomfacilitydetails` */

drop table if exists `roomfacilitydetails`;

CREATE TABLE `roomfacilitydetails` (
  `facilityid` int(11) NOT NULL AUTO_INCREMENT,
  `facilitytypeid` int(11) NOT NULL,
  `facilitytitle` varchar(255) COLLATE latin1_general_ci NOT NULL,
  `image` varchar(100) COLLATE latin1_general_ci DEFAULT NULL,
  PRIMARY KEY (`facilityid`),
  KEY `facilitytypeid` (`facilitytypeid`),
  KEY `facilitytypeid_2` (`facilitytypeid`)
) ENGINE=MyISAM AUTO_INCREMENT=14 DEFAULT CHARSET=latin1 COLLATE=latin1_general_ci;

/*Data for the table `roomfacilitydetails` */

insert into `roomfacilitydetails` values (13,49,'LCD TV','');

/*Table structure for table `roomfacilitytype` */

drop table if exists `roomfacilitytype`;

CREATE TABLE `roomfacilitytype` (
  `facilitytypeid` int(11) NOT NULL AUTO_INCREMENT,
  `facilitytypetitle` varchar(255) COLLATE latin1_general_ci NOT NULL,
  PRIMARY KEY (`facilitytypeid`)
) ENGINE=MyISAM AUTO_INCREMENT=52 DEFAULT CHARSET=latin1 COLLATE=latin1_general_ci;

/*Data for the table `roomfacilitytype` */

insert into `roomfacilitytype` values (45,'Delicious Food'),(46,'Lighting'),(47,'Internet'),(48,'AC'),(49,'Smart TV'),(50,'Fridge'),(51,'Deep Freezer');

/*Table structure for table `roomfaility_ref_accomodation` */

drop table if exists `roomfaility_ref_accomodation`;

CREATE TABLE `roomfaility_ref_accomodation` (
  `accomodationid` int(11) NOT NULL AUTO_INCREMENT,
  `facilititypeid` int(11) NOT NULL,
  `facilityid` int(11) NOT NULL,
  `room_id` int(11) NOT NULL,
  PRIMARY KEY (`accomodationid`)
) ENGINE=MyISAM AUTO_INCREMENT=186 DEFAULT CHARSET=latin1 COLLATE=latin1_general_ci;

/*Data for the table `roomfaility_ref_accomodation` */

insert into `roomfaility_ref_accomodation` values (185,49,13,11);

/*Table structure for table `roomsizemesurement` */

drop table if exists `roomsizemesurement`;

CREATE TABLE `roomsizemesurement` (
  `mesurementid` int(11) NOT NULL AUTO_INCREMENT,
  `roommesurementitle` varchar(255) COLLATE latin1_general_ci NOT NULL,
  PRIMARY KEY (`mesurementid`)
) ENGINE=MyISAM AUTO_INCREMENT=20 DEFAULT CHARSET=latin1 COLLATE=latin1_general_ci;

/*Data for the table `roomsizemesurement` */

insert into `roomsizemesurement` values (10,'Double'),(11,'Triple'),(12,'Quad'),(13,'Queen'),(14,'King'),(15,'Twin'),(16,'Double-Double'),(17,'Executive Suite');

/*Table structure for table `salary_setup_header` */

drop table if exists `salary_setup_header`;

CREATE TABLE `salary_setup_header` (
  `s_s_h_id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `employee_id` varchar(30) CHARACTER SET latin1 NOT NULL,
  `salary_payable` varchar(30) CHARACTER SET latin1 DEFAULT NULL,
  `absent_deduct` varchar(30) CHARACTER SET latin1 NOT NULL,
  `tax_manager` varchar(30) CHARACTER SET latin1 NOT NULL,
  `status` varchar(30) CHARACTER SET latin1 NOT NULL,
  PRIMARY KEY (`s_s_h_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

/*Data for the table `salary_setup_header` */

/*Table structure for table `salary_sheet_generate` */

drop table if exists `salary_sheet_generate`;

CREATE TABLE `salary_sheet_generate` (
  `ssg_id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `employee_id` varchar(20) NOT NULL,
  `name` varchar(30) CHARACTER SET latin1 NOT NULL,
  `gdate` varchar(20) DEFAULT NULL,
  `start_date` varchar(30) CHARACTER SET latin1 NOT NULL,
  `end_date` varchar(30) CHARACTER SET latin1 NOT NULL,
  `generate_by` varchar(30) CHARACTER SET latin1 NOT NULL,
  PRIMARY KEY (`ssg_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

/*Data for the table `salary_sheet_generate` */

/*Table structure for table `salary_type` */

drop table if exists `salary_type`;

CREATE TABLE `salary_type` (
  `salary_type_id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `sal_name` varchar(50) CHARACTER SET latin1 NOT NULL,
  `emp_sal_type` varchar(50) CHARACTER SET latin1 NOT NULL,
  `default_amount` varchar(30) NOT NULL,
  `status` varchar(50) NOT NULL,
  PRIMARY KEY (`salary_type_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

/*Data for the table `salary_type` */

/*Table structure for table `sampledata` */

drop table if exists `sampledata`;

CREATE TABLE `sampledata` (
  `brand` varchar(30) NOT NULL,
  `dealer_name` varchar(30) NOT NULL,
  `authorized` varchar(30) NOT NULL,
  `address` varchar(30) NOT NULL,
  `contact_no` varchar(30) NOT NULL,
  `mobile_no` varchar(30) NOT NULL,
  `fax` varchar(30) NOT NULL,
  `email_id` varchar(30) NOT NULL,
  `website_addr` varchar(30) NOT NULL,
  `state` varchar(30) NOT NULL,
  `city` varchar(30) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

/*Data for the table `sampledata` */

/*Table structure for table `schdule_purchse_info` */

drop table if exists `schdule_purchse_info`;

CREATE TABLE `schdule_purchse_info` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `purchase_key` varchar(100) DEFAULT NULL,
  `domain` varchar(200) DEFAULT NULL,
  `ip_address` varchar(100) DEFAULT NULL,
  `port` varchar(11) DEFAULT NULL,
  `created_at` datetime NOT NULL DEFAULT current_timestamp(),
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

/*Data for the table `schdule_purchse_info` */

/*Table structure for table `sec_menu_item` */

drop table if exists `sec_menu_item`;

CREATE TABLE `sec_menu_item` (
  `menu_id` int(11) NOT NULL AUTO_INCREMENT,
  `menu_title` varchar(200) COLLATE utf8_unicode_ci DEFAULT NULL,
  `page_url` varchar(250) COLLATE utf8_unicode_ci DEFAULT NULL,
  `module` varchar(200) COLLATE utf8_unicode_ci DEFAULT NULL,
  `parent_menu` int(11) DEFAULT NULL,
  `is_report` tinyint(1) DEFAULT NULL,
  `createby` int(11) NOT NULL,
  `createdate` datetime NOT NULL,
  PRIMARY KEY (`menu_id`)
) ENGINE=InnoDB AUTO_INCREMENT=245 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

/*Data for the table `sec_menu_item` */

insert into `sec_menu_item` values (1,'c_o_a','treeview','accounts',0,0,1,'2019-06-12 00:00:00'),(2,'debit_voucher','debit_voucher','accounts',0,0,1,'2019-06-12 00:00:00'),(3,'credit_voucher','credit_voucher','accounts',0,0,1,'2019-06-12 00:00:00'),(4,'contra_voucher','contra_voucher','accounts',0,0,1,'2019-06-12 00:00:00'),(5,'journal_voucher','journal_voucher','accounts',0,0,1,'2019-06-12 00:00:00'),(6,'voucher_approval','voucher_approval','accounts',0,0,1,'2019-06-12 00:00:00'),(7,'account_report','','accounts',0,0,1,'2019-06-12 00:00:00'),(8,'voucher_report','coa','accounts',7,0,1,'2019-06-12 00:00:00'),(9,'cash_book','cash_book','accounts',7,0,1,'2019-06-12 00:00:00'),(10,'bank_book','bank_book','accounts',7,0,1,'2019-06-16 00:00:00'),(11,'general_ledger','general_ledger','accounts',7,0,1,'2019-06-16 00:00:00'),(12,'trial_balance','trial_balance','accounts',7,0,1,'2019-06-16 00:00:00'),(13,'profit_loss','profit_loss_report','accounts',7,0,1,'2019-06-16 00:00:00'),(14,'cash_flow','cash_flow_report','accounts',7,0,1,'2019-06-16 00:00:00'),(15,'coa_print','coa_print','accounts',7,0,1,'2019-06-16 00:00:00'),(16,'hrm','','hrm',0,0,1,'2019-06-16 00:00:00'),(17,'attendance','Home','hrm',0,0,1,'2019-06-16 00:00:00'),(18,'atn_form','atnview','hrm',17,0,1,'2019-06-16 00:00:00'),(19,'atn_report','attendance_list','hrm',17,0,1,'2019-06-16 00:00:00'),(20,'award','Award_controller','hrm',0,0,1,'2019-06-16 00:00:00'),(21,'new_award','create_award','hrm',20,0,1,'2019-06-16 00:00:00'),(22,'circularprocess','Candidate','hrm',0,0,1,'2019-06-16 00:00:00'),(23,'add_canbasic_info','caninfo_create','hrm',22,0,1,'2019-06-16 00:00:00'),(24,'can_basicinfo_list','canInfoview','hrm',22,0,1,'2019-06-16 00:00:00'),(25,'candidate_basic_info','Candidate_select','hrm',0,0,1,'2019-06-16 00:00:00'),(26,'candidate_shortlist','shortlist_form','hrm',25,0,1,'2019-06-16 00:00:00'),(27,'candidate_interview','interview_form','hrm',25,0,1,'2019-06-16 00:00:00'),(28,'candidate_selection','selection_form','hrm',25,0,1,'2019-06-16 00:00:00'),(29,'department','Department_controller','hrm',0,0,1,'2019-06-16 00:00:00'),(30,'departmentfrm','create_dept','hrm',29,0,1,'2019-06-16 00:00:00'),(31,'division','Division_controller','hrm',0,0,1,'2019-06-16 00:00:00'),(32,'add_division','division_form','hrm',31,0,1,'2019-06-16 00:00:00'),(33,'division_list','','hrm',0,0,1,'2019-06-16 00:00:00'),(34,'position','position_form','hrm',0,0,1,'2019-06-16 00:00:00'),(35,'employee','','hrm',0,0,1,'2019-06-16 00:00:00'),(36,'add_employee','employ_form','hrm',35,0,1,'2019-06-16 00:00:00'),(37,'manage_employee','employee_view','hrm',35,0,1,'2019-06-16 00:00:00'),(38,'emp_performance','emp_performance_form','hrm',35,0,1,'2019-06-16 00:00:00'),(39,'emp_sal_payment','paymentview','hrm',35,0,1,'2019-06-16 00:00:00'),(40,'leave','leave','hrm',0,0,1,'2019-06-16 00:00:00'),(41,'weekly_holiday','weeklyform','hrm',40,0,1,'2019-06-16 00:00:00'),(42,'holiday','holiday_form','hrm',40,0,1,'2019-06-16 00:00:00'),(43,'others_leave_application','others_leave','hrm',40,0,1,'2019-06-16 00:00:00'),(44,'add_leave_type','leave_type_form','hrm',40,0,1,'2019-06-16 00:00:00'),(45,'leave_application','others_leave','hrm',40,0,1,'2019-06-16 00:00:00'),(46,'loan','loan','hrm',0,0,1,'2019-06-16 00:00:00'),(47,'loan_grand','create_grandloan','hrm',46,0,1,'2019-06-16 00:00:00'),(48,'loan_installment','create_installment','hrm',46,0,1,'2019-06-16 00:00:00'),(49,'manage_installment','installmentView','hrm',46,0,1,'2019-06-16 00:00:00'),(50,'manage_granted_loan','loan_view','hrm',46,0,1,'2019-06-16 00:00:00'),(51,'loan_report','loan_report','hrm',46,0,1,'2019-06-16 00:00:00'),(52,'payroll','payroll','hrm',0,0,1,'2019-06-16 00:00:00'),(53,'salary_type_setup','create_salary_setup','hrm',52,0,1,'2019-06-16 00:00:00'),(54,'manage_salary_setup','emp_salary_setup_view','hrm',52,0,1,'2019-06-16 00:00:00'),(55,'salary_setup','create_s_setup','hrm',52,0,1,'2019-06-16 00:00:00'),(56,'manage_salary_type','salary_setup_view','hrm',52,0,1,'2019-06-16 00:00:00'),(57,'salary_generate','create_salary_generate','hrm',52,0,1,'2019-06-16 00:00:00'),(58,'manage_salary_generate','salary_generate_view','hrm',52,0,1,'2019-06-16 00:00:00'),(59,'purchase_item','index','purchase',0,0,1,'2019-06-16 00:00:00'),(60,'purchase_add','create','purchase',59,0,1,'2019-06-16 00:00:00'),(61,'purchase_return','return_form','purchase',59,0,1,'2019-06-16 00:00:00'),(62,'return_invoice','return_invoice','purchase',59,0,1,'2019-06-16 00:00:00'),(63,'report','report','reports',(null),0,1,'2019-06-16 00:00:00'),(64,'purchase_report','index','reports',63,0,1,'2019-06-16 00:00:00'),(65,'paymentmethod','','payment_setting',0,0,1,'2019-06-16 00:00:00'),(66,'paymentmethod_list','index','payment_setting',65,0,1,'2019-06-16 00:00:00'),(67,'payment_add','create','payment_setting',66,0,1,'2019-06-16 00:00:00'),(68,'customer','customer_info','customer',0,0,1,'2019-06-16 00:00:00'),(69,'customer_add','create','customer',68,0,1,'2019-06-16 00:00:00'),(70,'booking_report','index','reports',63,0,1,'2019-06-16 00:00:00'),(71,'paymentmethod_setup','paymentsetup','payment_setting',65,0,1,'2019-06-16 00:00:00'),(72,'room_facilities','index','room_facilities',0,0,1,'2019-06-16 00:00:00'),(73,'faciliti_details_list','room_facilitidetails','room_facilities',72,0,1,'2019-06-16 00:00:00'),(74,'roomsize_list','room_size','room_facilities',72,0,1,'2019-06-16 00:00:00'),(75,'room_reservation','room_reservation','room_reservation',0,0,0,'0000-00-00 00:00:00'),(76,'bed_list','index','room_setting',0,0,1,'2019-06-16 00:00:00'),(77,'starclass_list','starclass','room_setting',0,0,1,'2019-06-16 00:00:00'),(78,'bookingtype_list','booking_type','room_setting',0,0,1,'2019-06-16 00:00:00'),(79,'floorplan_list','floorplan','room_setting',0,0,1,'2019-06-16 00:00:00'),(80,'room_list','room_details','room_setting',0,0,1,'2019-06-16 00:00:00'),(81,'room_image','room_images','room_setting',0,0,1,'2019-06-16 00:00:00'),(82,'stock_report','stockreport','reports',63,0,1,'2019-07-04 00:00:00'),(83,'customer_list','index','customer',68,0,0,'0000-00-00 00:00:00'),(84,'units','','units',0,0,0,'0000-00-00 00:00:00'),(85,'unit_list','index','units',84,0,0,'0000-00-00 00:00:00'),(86,'ingradient_list','index','units',84,0,0,'0000-00-00 00:00:00'),(87,'supplier_list','index','units',84,0,0,'0000-00-00 00:00:00'),(88,'booking_list','index','room_reservation',75,0,1,'2019-06-16 00:00:00'),(89,'faciliti_list','','room_facilities',72,0,0,'0000-00-00 00:00:00'),(91,'booking_source','b_ty_details','room_setting',0,0,1,'2021-06-06 00:00:00'),(92,'house_keeping','house-keeping','house_keeping',0,0,1,'0000-00-00 00:00:00'),(96,'wakeup_call_list','wakeup_call_list','customer',68,0,1,'2021-06-06 00:00:00'),(97,'categorylist','categorylist','units',84,0,0,'2021-06-14 00:00:00'),(110,'complementary','complementary','room_setting',0,0,1,'2021-07-14 00:00:00'),(113,'guest_list','guestlist','customer',68,0,0,'0000-00-00 00:00:00'),(116,'tax_management','tax-management','tax_management',0,0,1,'2021-08-21 00:00:00'),(117,'tax_list','tax-list','tax_management',116,0,1,'2021-08-21 00:00:00'),(119,'destroyed_list','Destroyed-list','units',84,0,1,'2021-08-23 00:00:00'),(120,'laundry','laundry','house_keeping',92,0,1,'2021-08-24 00:00:00'),(155,'balance_sheet','balance-sheet','accounts',7,0,1,'2021-10-04 00:00:00'),(156,'financial_year','financial-year','accounts',7,0,1,'2021-10-11 00:00:00'),(157,'financial_year_end','financial-year-end','accounts',7,0,1,'2021-10-12 00:00:00'),(158,'opening_balance','opening-balance','accounts',7,0,1,'2021-10-13 00:00:00'),(160,'room_status','room-status','room_reservation',75,0,1,'2021-10-25 00:00:00'),(165,'promocode','promocode','room_setting',0,0,1,'2021-11-07 00:00:00'),(202,'checkin','checkin','room_reservation',75,0,1,'2021-10-25 00:00:00'),(203,'checkout','checkout','room_reservation',75,0,1,'2021-10-25 00:00:00'),(204,'room_cleaning','room-cleaning','house_keeping',92,0,1,'2021-11-10 00:00:00'),(205,'assign_room_cleaning','house-keeping','house_keeping',92,0,1,'2021-11-10 00:00:00'),(206,'payment','payment','house_keeping',120,0,1,'2021-11-10 00:00:00'),(207,'records','records','house_keeping',92,0,1,'2021-11-10 00:00:00'),(208,'checklist','checklist','house_keeping',92,0,1,'2021-11-10 00:00:00'),(209,'roomqr_list','roomqr_list','house_keeping',92,0,1,'2021-11-22 00:00:00'),(210,'reports','reports','house_keeping',92,0,1,'2021-08-19 00:00:00'),(211,'laundry_list','laundry-list','house_keeping',120,0,1,'2021-08-28 00:00:00'),(212,'reuse_list','reuse-list','house_keeping',120,0,1,'2021-08-26 00:00:00'),(213,'item_cost','item-cost','house_keeping',120,0,1,'2021-08-26 00:00:00'),(214,'ordermanage','','ordermanage',0,0,1,'2021-09-06 00:00:00'),(215,'pos_invoice','pos-invoice','ordermanage',214,0,1,'2021-09-06 00:00:00'),(216,'order_list','order-list','ordermanage',214,0,1,'2021-09-06 00:00:00'),(217,'pending_order','pending-order','ordermanage',214,0,1,'2021-09-06 00:00:00'),(218,'complete_order','complete-list','ordermanage',214,0,1,'2021-09-06 00:00:00'),(219,'cancel_order','cancel-list','ordermanage',214,0,1,'2021-09-06 00:00:00'),(220,'kitchen_dashboard','kitchen','ordermanage',214,0,1,'2021-09-06 00:00:00'),(221,'counter_dashboard','counter-board','ordermanage',214,0,1,'2021-09-06 00:00:00'),(222,'counter_list','counter-list','ordermanage',214,0,1,'2021-09-06 00:00:00'),(223,'pos_setting','pos-setting','ordermanage',214,0,1,'2021-09-06 00:00:00'),(224,'sound_setting','sound-setting','ordermanage',214,0,1,'2021-09-06 00:00:00'),(225,'table_manage','restauranttable','ordermanage',0,0,1,'2021-09-06 00:00:00'),(226,'table_list','table-list','ordermanage',225,0,1,'2021-09-06 00:00:00'),(227,'table_setting','table-setting','ordermanage',225,0,1,'2021-09-06 00:00:00'),(228,'customer_type','customertype','ordermanage',0,0,1,'2021-09-06 00:00:00'),(229,'customertype_list','customer-type','ordermanage',228,0,1,'2021-09-06 00:00:00'),(230,'list_of_card_terminal','card-terminal','ordermanage',228,0,1,'2021-09-06 00:00:00'),(231,'manage_category','item_category','ordermanage',0,0,1,'2021-09-06 00:00:00'),(232,'add_category','category-create','ordermanage',231,0,1,'2021-09-06 00:00:00'),(233,'category_list','category-list','ordermanage',231,0,1,'2021-09-06 00:00:00'),(234,'manage_food','item_food','ordermanage',0,0,1,'2021-09-06 00:00:00'),(235,'add_food','food-create','ordermanage',234,0,1,'2021-09-06 00:00:00'),(236,'food_list','food-list','ordermanage',234,0,1,'2021-09-06 00:00:00'),(237,'add_group_item','food-groop-create','ordermanage',234,0,1,'2021-09-06 00:00:00'),(238,'food_varient','food-varient-list','ordermanage',234,0,1,'2021-09-06 00:00:00'),(239,'food_availablity','food-available-list','ordermanage',234,0,1,'2021-09-06 00:00:00'),(240,'menu_type','today-menu-type','ordermanage',234,0,1,'2021-09-06 00:00:00'),(241,'manage_addons','menu_addons','ordermanage',0,0,1,'2021-09-06 00:00:00'),(242,'add_adons','menu-addons-create','ordermanage',241,0,1,'2021-09-06 00:00:00'),(243,'addons_list','menu-addons-list','ordermanage',241,0,1,'2021-09-06 00:00:00'),(244,'assign_adons_list','assign-menu-addons','ordermanage',241,0,1,'2021-09-06 00:00:00');

/*Table structure for table `sec_role_permission` */

drop table if exists `sec_role_permission`;

CREATE TABLE `sec_role_permission` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `role_id` int(11) NOT NULL,
  `menu_id` int(11) NOT NULL,
  `can_access` tinyint(1) NOT NULL,
  `can_create` tinyint(1) NOT NULL,
  `can_edit` tinyint(1) NOT NULL,
  `can_delete` tinyint(1) NOT NULL,
  `createby` int(11) NOT NULL,
  `createdate` datetime NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2789 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

/*Data for the table `sec_role_permission` */

insert into `sec_role_permission` values (411,12,1,0,0,0,0,1,'2020-11-29 01:12:42'),(412,12,2,0,0,0,0,1,'2020-11-29 01:12:42'),(413,12,3,0,0,0,0,1,'2020-11-29 01:12:42'),(414,12,4,0,0,0,0,1,'2020-11-29 01:12:42'),(415,12,5,0,0,0,0,1,'2020-11-29 01:12:42'),(416,12,6,0,0,0,0,1,'2020-11-29 01:12:42'),(417,12,7,0,0,0,0,1,'2020-11-29 01:12:42'),(418,12,8,0,0,0,0,1,'2020-11-29 01:12:42'),(419,12,9,0,0,0,0,1,'2020-11-29 01:12:42'),(420,12,10,0,0,0,0,1,'2020-11-29 01:12:42'),(421,12,11,0,0,0,0,1,'2020-11-29 01:12:42'),(422,12,12,0,0,0,0,1,'2020-11-29 01:12:42'),(423,12,13,0,0,0,0,1,'2020-11-29 01:12:42'),(424,12,14,0,0,0,0,1,'2020-11-29 01:12:42'),(425,12,15,0,0,0,0,1,'2020-11-29 01:12:42'),(426,12,68,0,0,0,0,1,'2020-11-29 01:12:42'),(427,12,69,0,0,0,0,1,'2020-11-29 01:12:42'),(428,12,16,0,0,0,0,1,'2020-11-29 01:12:42'),(429,12,17,0,0,0,0,1,'2020-11-29 01:12:42'),(430,12,18,0,0,0,0,1,'2020-11-29 01:12:42'),(431,12,19,0,0,0,0,1,'2020-11-29 01:12:42'),(432,12,20,0,0,0,0,1,'2020-11-29 01:12:42'),(433,12,21,0,0,0,0,1,'2020-11-29 01:12:42'),(434,12,22,0,0,0,0,1,'2020-11-29 01:12:42'),(435,12,23,0,0,0,0,1,'2020-11-29 01:12:42'),(436,12,24,0,0,0,0,1,'2020-11-29 01:12:42'),(437,12,25,0,0,0,0,1,'2020-11-29 01:12:42'),(438,12,26,0,0,0,0,1,'2020-11-29 01:12:42'),(439,12,27,0,0,0,0,1,'2020-11-29 01:12:42'),(440,12,28,0,0,0,0,1,'2020-11-29 01:12:42'),(441,12,29,0,0,0,0,1,'2020-11-29 01:12:42'),(442,12,30,0,0,0,0,1,'2020-11-29 01:12:42'),(443,12,31,0,0,0,0,1,'2020-11-29 01:12:42'),(444,12,32,0,0,0,0,1,'2020-11-29 01:12:42'),(445,12,33,0,0,0,0,1,'2020-11-29 01:12:42'),(446,12,34,0,0,0,0,1,'2020-11-29 01:12:42'),(447,12,35,0,0,0,0,1,'2020-11-29 01:12:42'),(448,12,36,0,0,0,0,1,'2020-11-29 01:12:42'),(449,12,37,0,0,0,0,1,'2020-11-29 01:12:42'),(450,12,38,0,0,0,0,1,'2020-11-29 01:12:42'),(451,12,39,0,0,0,0,1,'2020-11-29 01:12:42'),(452,12,40,0,0,0,0,1,'2020-11-29 01:12:42'),(453,12,41,0,0,0,0,1,'2020-11-29 01:12:42'),(454,12,42,0,0,0,0,1,'2020-11-29 01:12:42'),(455,12,43,0,0,0,0,1,'2020-11-29 01:12:42'),(456,12,44,0,0,0,0,1,'2020-11-29 01:12:42'),(457,12,45,0,0,0,0,1,'2020-11-29 01:12:42'),(458,12,46,0,0,0,0,1,'2020-11-29 01:12:42'),(459,12,47,0,0,0,0,1,'2020-11-29 01:12:42'),(460,12,48,0,0,0,0,1,'2020-11-29 01:12:42'),(461,12,49,0,0,0,0,1,'2020-11-29 01:12:42'),(462,12,50,0,0,0,0,1,'2020-11-29 01:12:42'),(463,12,51,0,0,0,0,1,'2020-11-29 01:12:42'),(464,12,52,0,0,0,0,1,'2020-11-29 01:12:42'),(465,12,53,0,0,0,0,1,'2020-11-29 01:12:42'),(466,12,54,0,0,0,0,1,'2020-11-29 01:12:42'),(467,12,55,0,0,0,0,1,'2020-11-29 01:12:42'),(468,12,56,0,0,0,0,1,'2020-11-29 01:12:42'),(469,12,57,0,0,0,0,1,'2020-11-29 01:12:42'),(470,12,58,0,0,0,0,1,'2020-11-29 01:12:42'),(471,12,65,0,0,0,0,1,'2020-11-29 01:12:42'),(472,12,66,0,0,0,0,1,'2020-11-29 01:12:42'),(473,12,67,0,0,0,0,1,'2020-11-29 01:12:42'),(474,12,71,0,0,0,0,1,'2020-11-29 01:12:42'),(475,12,59,0,0,0,0,1,'2020-11-29 01:12:42'),(476,12,60,0,0,0,0,1,'2020-11-29 01:12:42'),(477,12,61,0,0,0,0,1,'2020-11-29 01:12:42'),(478,12,62,0,0,0,0,1,'2020-11-29 01:12:42'),(479,12,63,0,0,0,0,1,'2020-11-29 01:12:42'),(480,12,64,0,0,0,0,1,'2020-11-29 01:12:42'),(481,12,70,0,0,0,0,1,'2020-11-29 01:12:42'),(482,12,82,0,0,0,0,1,'2020-11-29 01:12:42'),(483,12,72,0,0,0,0,1,'2020-11-29 01:12:42'),(484,12,73,0,0,0,0,1,'2020-11-29 01:12:42'),(485,12,74,0,0,0,0,1,'2020-11-29 01:12:42'),(486,12,75,0,0,0,0,1,'2020-11-29 01:12:42'),(487,12,76,0,0,0,0,1,'2020-11-29 01:12:42'),(488,12,77,0,0,0,0,1,'2020-11-29 01:12:42'),(489,12,78,0,0,0,0,1,'2020-11-29 01:12:42'),(490,12,79,0,0,0,0,1,'2020-11-29 01:12:42'),(491,12,80,0,0,0,0,1,'2020-11-29 01:12:42'),(492,12,81,0,0,0,0,1,'2020-11-29 01:12:42'),(493,7,1,1,1,1,1,1,'2020-12-21 07:01:16'),(494,7,2,1,1,1,1,1,'2020-12-21 07:01:16'),(495,7,3,1,1,1,1,1,'2020-12-21 07:01:16'),(496,7,4,1,1,1,1,1,'2020-12-21 07:01:16'),(497,7,5,1,1,1,1,1,'2020-12-21 07:01:16'),(498,7,6,1,1,1,1,1,'2020-12-21 07:01:16'),(499,7,7,1,1,1,1,1,'2020-12-21 07:01:16'),(500,7,8,1,1,1,1,1,'2020-12-21 07:01:16'),(501,7,9,1,1,1,1,1,'2020-12-21 07:01:16'),(502,7,10,1,1,1,1,1,'2020-12-21 07:01:16'),(503,7,11,1,1,1,1,1,'2020-12-21 07:01:16'),(504,7,12,1,1,1,1,1,'2020-12-21 07:01:16'),(505,7,13,1,1,1,1,1,'2020-12-21 07:01:16'),(506,7,14,1,1,1,1,1,'2020-12-21 07:01:16'),(507,7,15,1,1,1,1,1,'2020-12-21 07:01:16'),(508,7,68,1,1,1,1,1,'2020-12-21 07:01:16'),(509,7,69,1,1,1,1,1,'2020-12-21 07:01:16'),(510,7,16,0,0,0,0,1,'2020-12-21 07:01:16'),(511,7,17,0,0,0,0,1,'2020-12-21 07:01:16'),(512,7,18,0,0,0,0,1,'2020-12-21 07:01:16'),(513,7,19,0,0,0,0,1,'2020-12-21 07:01:16'),(514,7,20,0,0,0,0,1,'2020-12-21 07:01:16'),(515,7,21,0,0,0,0,1,'2020-12-21 07:01:16'),(516,7,22,0,0,0,0,1,'2020-12-21 07:01:16'),(517,7,23,0,0,0,0,1,'2020-12-21 07:01:16'),(518,7,24,0,0,0,0,1,'2020-12-21 07:01:16'),(519,7,25,0,0,0,0,1,'2020-12-21 07:01:16'),(520,7,26,0,0,0,0,1,'2020-12-21 07:01:16'),(521,7,27,0,0,0,0,1,'2020-12-21 07:01:16'),(522,7,28,0,0,0,0,1,'2020-12-21 07:01:16'),(523,7,29,0,0,0,0,1,'2020-12-21 07:01:16'),(524,7,30,0,0,0,0,1,'2020-12-21 07:01:16'),(525,7,31,0,0,0,0,1,'2020-12-21 07:01:16'),(526,7,32,0,0,0,0,1,'2020-12-21 07:01:16'),(527,7,33,0,0,0,0,1,'2020-12-21 07:01:16'),(528,7,34,0,0,0,0,1,'2020-12-21 07:01:16'),(529,7,35,0,0,0,0,1,'2020-12-21 07:01:16'),(530,7,36,0,0,0,0,1,'2020-12-21 07:01:16'),(531,7,37,0,0,0,0,1,'2020-12-21 07:01:16'),(532,7,38,0,0,0,0,1,'2020-12-21 07:01:16'),(533,7,39,0,0,0,0,1,'2020-12-21 07:01:16'),(534,7,40,0,0,0,0,1,'2020-12-21 07:01:16'),(535,7,41,0,0,0,0,1,'2020-12-21 07:01:16'),(536,7,42,0,0,0,0,1,'2020-12-21 07:01:16'),(537,7,43,0,0,0,0,1,'2020-12-21 07:01:16'),(538,7,44,0,0,0,0,1,'2020-12-21 07:01:16'),(539,7,45,0,0,0,0,1,'2020-12-21 07:01:16'),(540,7,46,0,0,0,0,1,'2020-12-21 07:01:16'),(541,7,47,0,0,0,0,1,'2020-12-21 07:01:16'),(542,7,48,0,0,0,0,1,'2020-12-21 07:01:16'),(543,7,49,0,0,0,0,1,'2020-12-21 07:01:16'),(544,7,50,0,0,0,0,1,'2020-12-21 07:01:16'),(545,7,51,0,0,0,0,1,'2020-12-21 07:01:16'),(546,7,52,0,0,0,0,1,'2020-12-21 07:01:16'),(547,7,53,0,0,0,0,1,'2020-12-21 07:01:16'),(548,7,54,0,0,0,0,1,'2020-12-21 07:01:16'),(549,7,55,0,0,0,0,1,'2020-12-21 07:01:16'),(550,7,56,0,0,0,0,1,'2020-12-21 07:01:16'),(551,7,57,0,0,0,0,1,'2020-12-21 07:01:16'),(552,7,58,0,0,0,0,1,'2020-12-21 07:01:16'),(553,7,65,1,1,1,1,1,'2020-12-21 07:01:16'),(554,7,66,1,1,1,1,1,'2020-12-21 07:01:16'),(555,7,67,1,1,1,1,1,'2020-12-21 07:01:16'),(556,7,71,1,1,1,1,1,'2020-12-21 07:01:16'),(557,7,59,1,1,1,1,1,'2020-12-21 07:01:16'),(558,7,60,1,1,1,1,1,'2020-12-21 07:01:16'),(559,7,61,1,1,1,1,1,'2020-12-21 07:01:16'),(560,7,62,1,1,1,1,1,'2020-12-21 07:01:16'),(561,7,63,1,1,1,1,1,'2020-12-21 07:01:16'),(562,7,64,1,1,1,1,1,'2020-12-21 07:01:16'),(563,7,70,1,1,1,1,1,'2020-12-21 07:01:16'),(564,7,82,1,1,1,1,1,'2020-12-21 07:01:16'),(565,7,72,1,1,1,1,1,'2020-12-21 07:01:16'),(566,7,73,1,1,1,1,1,'2020-12-21 07:01:16'),(567,7,74,1,1,1,1,1,'2020-12-21 07:01:16'),(568,7,75,1,1,1,1,1,'2020-12-21 07:01:16'),(569,7,76,1,1,1,1,1,'2020-12-21 07:01:16'),(570,7,77,1,1,1,1,1,'2020-12-21 07:01:16'),(571,7,78,1,1,1,1,1,'2020-12-21 07:01:16'),(572,7,79,1,1,1,1,1,'2020-12-21 07:01:16'),(573,7,80,1,1,1,1,1,'2020-12-21 07:01:16'),(574,7,81,1,1,1,1,1,'2020-12-21 07:01:16'),(2458,15,1,0,0,0,0,1,'2021-02-08 05:06:37'),(2459,15,2,0,0,0,0,1,'2021-02-08 05:06:37'),(2460,15,3,0,0,0,0,1,'2021-02-08 05:06:37'),(2461,15,4,0,0,0,0,1,'2021-02-08 05:06:37'),(2462,15,5,0,0,0,0,1,'2021-02-08 05:06:37'),(2463,15,6,0,0,0,0,1,'2021-02-08 05:06:37'),(2464,15,7,0,0,0,0,1,'2021-02-08 05:06:37'),(2465,15,8,0,0,0,0,1,'2021-02-08 05:06:37'),(2466,15,9,0,0,0,0,1,'2021-02-08 05:06:37'),(2467,15,10,0,0,0,0,1,'2021-02-08 05:06:37'),(2468,15,11,0,0,0,0,1,'2021-02-08 05:06:37'),(2469,15,12,0,0,0,0,1,'2021-02-08 05:06:37'),(2470,15,13,0,0,0,0,1,'2021-02-08 05:06:37'),(2471,15,14,0,0,0,0,1,'2021-02-08 05:06:37'),(2472,15,15,0,0,0,0,1,'2021-02-08 05:06:37'),(2473,15,68,0,0,0,0,1,'2021-02-08 05:06:37'),(2474,15,69,0,0,0,0,1,'2021-02-08 05:06:37'),(2475,15,83,0,0,0,0,1,'2021-02-08 05:06:37'),(2476,15,16,0,0,0,0,1,'2021-02-08 05:06:37'),(2477,15,17,0,0,0,0,1,'2021-02-08 05:06:37'),(2478,15,18,0,0,0,0,1,'2021-02-08 05:06:37'),(2479,15,19,0,0,0,0,1,'2021-02-08 05:06:37'),(2480,15,20,0,0,0,0,1,'2021-02-08 05:06:37'),(2481,15,21,0,0,0,0,1,'2021-02-08 05:06:37'),(2482,15,22,0,0,0,0,1,'2021-02-08 05:06:37'),(2483,15,23,0,0,0,0,1,'2021-02-08 05:06:37'),(2484,15,24,0,0,0,0,1,'2021-02-08 05:06:37'),(2485,15,25,0,0,0,0,1,'2021-02-08 05:06:37'),(2486,15,26,0,0,0,0,1,'2021-02-08 05:06:37'),(2487,15,27,0,0,0,0,1,'2021-02-08 05:06:37'),(2488,15,28,0,0,0,0,1,'2021-02-08 05:06:37'),(2489,15,29,0,0,0,0,1,'2021-02-08 05:06:37'),(2490,15,30,0,0,0,0,1,'2021-02-08 05:06:37'),(2491,15,31,0,0,0,0,1,'2021-02-08 05:06:37'),(2492,15,32,0,0,0,0,1,'2021-02-08 05:06:37'),(2493,15,33,0,0,0,0,1,'2021-02-08 05:06:37'),(2494,15,34,0,0,0,0,1,'2021-02-08 05:06:37'),(2495,15,35,0,0,0,0,1,'2021-02-08 05:06:37'),(2496,15,36,0,0,0,0,1,'2021-02-08 05:06:37'),(2497,15,37,0,0,0,0,1,'2021-02-08 05:06:37'),(2498,15,38,0,0,0,0,1,'2021-02-08 05:06:37'),(2499,15,39,0,0,0,0,1,'2021-02-08 05:06:37'),(2500,15,40,0,0,0,0,1,'2021-02-08 05:06:37'),(2501,15,41,0,0,0,0,1,'2021-02-08 05:06:37'),(2502,15,42,0,0,0,0,1,'2021-02-08 05:06:37'),(2503,15,43,0,0,0,0,1,'2021-02-08 05:06:37'),(2504,15,44,0,0,0,0,1,'2021-02-08 05:06:37'),(2505,15,45,0,0,0,0,1,'2021-02-08 05:06:37'),(2506,15,46,0,0,0,0,1,'2021-02-08 05:06:37'),(2507,15,47,0,0,0,0,1,'2021-02-08 05:06:37'),(2508,15,48,0,0,0,0,1,'2021-02-08 05:06:37'),(2509,15,49,0,0,0,0,1,'2021-02-08 05:06:37'),(2510,15,50,0,0,0,0,1,'2021-02-08 05:06:37'),(2511,15,51,0,0,0,0,1,'2021-02-08 05:06:37'),(2512,15,52,0,0,0,0,1,'2021-02-08 05:06:37'),(2513,15,53,0,0,0,0,1,'2021-02-08 05:06:37'),(2514,15,54,0,0,0,0,1,'2021-02-08 05:06:37'),(2515,15,55,0,0,0,0,1,'2021-02-08 05:06:37'),(2516,15,56,0,0,0,0,1,'2021-02-08 05:06:37'),(2517,15,57,0,0,0,0,1,'2021-02-08 05:06:37'),(2518,15,58,0,0,0,0,1,'2021-02-08 05:06:37'),(2519,15,65,0,0,0,0,1,'2021-02-08 05:06:37'),(2520,15,66,0,0,0,0,1,'2021-02-08 05:06:37'),(2521,15,67,0,0,0,0,1,'2021-02-08 05:06:37'),(2522,15,71,0,0,0,0,1,'2021-02-08 05:06:37'),(2523,15,59,0,0,0,0,1,'2021-02-08 05:06:37'),(2524,15,60,0,0,0,0,1,'2021-02-08 05:06:37'),(2525,15,61,0,0,0,0,1,'2021-02-08 05:06:37'),(2526,15,62,0,0,0,0,1,'2021-02-08 05:06:37'),(2527,15,63,0,0,0,0,1,'2021-02-08 05:06:37'),(2528,15,64,0,0,0,0,1,'2021-02-08 05:06:37'),(2529,15,70,0,0,0,0,1,'2021-02-08 05:06:37'),(2530,15,82,0,0,0,0,1,'2021-02-08 05:06:37'),(2531,15,72,0,0,0,0,1,'2021-02-08 05:06:37'),(2532,15,73,0,0,0,0,1,'2021-02-08 05:06:37'),(2533,15,74,0,0,0,0,1,'2021-02-08 05:06:37'),(2534,15,89,0,0,0,0,1,'2021-02-08 05:06:37'),(2535,15,75,1,1,1,0,1,'2021-02-08 05:06:37'),(2536,15,88,1,1,1,0,1,'2021-02-08 05:06:37'),(2537,15,76,0,0,0,0,1,'2021-02-08 05:06:37'),(2538,15,77,0,0,0,0,1,'2021-02-08 05:06:37'),(2539,15,78,0,0,0,0,1,'2021-02-08 05:06:37'),(2540,15,79,0,0,0,0,1,'2021-02-08 05:06:37'),(2541,15,80,0,0,0,0,1,'2021-02-08 05:06:37'),(2542,15,81,0,0,0,0,1,'2021-02-08 05:06:37'),(2543,15,84,0,0,0,0,1,'2021-02-08 05:06:37'),(2544,15,85,0,0,0,0,1,'2021-02-08 05:06:37'),(2545,15,86,0,0,0,0,1,'2021-02-08 05:06:37'),(2546,15,87,0,0,0,0,1,'2021-02-08 05:06:37'),(2547,14,1,0,0,0,0,1,'2021-02-08 05:13:35'),(2548,14,2,0,0,0,0,1,'2021-02-08 05:13:35'),(2549,14,3,0,0,0,0,1,'2021-02-08 05:13:35'),(2550,14,4,0,0,0,0,1,'2021-02-08 05:13:35'),(2551,14,5,0,0,0,0,1,'2021-02-08 05:13:35'),(2552,14,6,0,0,0,0,1,'2021-02-08 05:13:35'),(2553,14,7,0,0,0,0,1,'2021-02-08 05:13:35'),(2554,14,8,0,0,0,0,1,'2021-02-08 05:13:35'),(2555,14,9,0,0,0,0,1,'2021-02-08 05:13:35'),(2556,14,10,0,0,0,0,1,'2021-02-08 05:13:35'),(2557,14,11,0,0,0,0,1,'2021-02-08 05:13:35'),(2558,14,12,0,0,0,0,1,'2021-02-08 05:13:35'),(2559,14,13,0,0,0,0,1,'2021-02-08 05:13:35'),(2560,14,14,0,0,0,0,1,'2021-02-08 05:13:35'),(2561,14,15,0,0,0,0,1,'2021-02-08 05:13:35'),(2562,14,68,1,1,0,0,1,'2021-02-08 05:13:35'),(2563,14,69,1,1,0,0,1,'2021-02-08 05:13:35'),(2564,14,83,1,1,0,0,1,'2021-02-08 05:13:35'),(2565,14,16,1,1,1,0,1,'2021-02-08 05:13:35'),(2566,14,17,1,1,1,0,1,'2021-02-08 05:13:35'),(2567,14,18,1,1,1,0,1,'2021-02-08 05:13:35'),(2568,14,19,1,1,1,0,1,'2021-02-08 05:13:35'),(2569,14,20,0,0,0,0,1,'2021-02-08 05:13:35'),(2570,14,21,0,0,0,0,1,'2021-02-08 05:13:35'),(2571,14,22,0,0,0,0,1,'2021-02-08 05:13:35'),(2572,14,23,0,0,0,0,1,'2021-02-08 05:13:35'),(2573,14,24,0,0,0,0,1,'2021-02-08 05:13:35'),(2574,14,25,0,0,0,0,1,'2021-02-08 05:13:35'),(2575,14,26,0,0,0,0,1,'2021-02-08 05:13:35'),(2576,14,27,0,0,0,0,1,'2021-02-08 05:13:35'),(2577,14,28,0,0,0,0,1,'2021-02-08 05:13:35'),(2578,14,29,0,0,0,0,1,'2021-02-08 05:13:35'),(2579,14,30,0,0,0,0,1,'2021-02-08 05:13:35'),(2580,14,31,0,0,0,0,1,'2021-02-08 05:13:35'),(2581,14,32,0,0,0,0,1,'2021-02-08 05:13:35'),(2582,14,33,0,0,0,0,1,'2021-02-08 05:13:35'),(2583,14,34,0,0,0,0,1,'2021-02-08 05:13:35'),(2584,14,35,0,0,0,0,1,'2021-02-08 05:13:35'),(2585,14,36,0,0,0,0,1,'2021-02-08 05:13:35'),(2586,14,37,0,0,0,0,1,'2021-02-08 05:13:35'),(2587,14,38,0,0,0,0,1,'2021-02-08 05:13:35'),(2588,14,39,0,0,0,0,1,'2021-02-08 05:13:35'),(2589,14,40,0,0,0,0,1,'2021-02-08 05:13:35'),(2590,14,41,0,0,0,0,1,'2021-02-08 05:13:35'),(2591,14,42,0,0,0,0,1,'2021-02-08 05:13:35'),(2592,14,43,0,0,0,0,1,'2021-02-08 05:13:35'),(2593,14,44,0,0,0,0,1,'2021-02-08 05:13:35'),(2594,14,45,0,0,0,0,1,'2021-02-08 05:13:35'),(2595,14,46,0,0,0,0,1,'2021-02-08 05:13:35'),(2596,14,47,0,0,0,0,1,'2021-02-08 05:13:35'),(2597,14,48,0,0,0,0,1,'2021-02-08 05:13:35'),(2598,14,49,0,0,0,0,1,'2021-02-08 05:13:35'),(2599,14,50,0,0,0,0,1,'2021-02-08 05:13:35'),(2600,14,51,0,0,0,0,1,'2021-02-08 05:13:35'),(2601,14,52,0,0,0,0,1,'2021-02-08 05:13:35'),(2602,14,53,0,0,0,0,1,'2021-02-08 05:13:35'),(2603,14,54,0,0,0,0,1,'2021-02-08 05:13:35'),(2604,14,55,0,0,0,0,1,'2021-02-08 05:13:35'),(2605,14,56,0,0,0,0,1,'2021-02-08 05:13:35'),(2606,14,57,0,0,0,0,1,'2021-02-08 05:13:35'),(2607,14,58,0,0,0,0,1,'2021-02-08 05:13:35'),(2608,14,65,0,0,0,0,1,'2021-02-08 05:13:35'),(2609,14,66,0,0,0,0,1,'2021-02-08 05:13:35'),(2610,14,67,0,0,0,0,1,'2021-02-08 05:13:35'),(2611,14,71,0,0,0,0,1,'2021-02-08 05:13:35'),(2612,14,59,0,0,0,0,1,'2021-02-08 05:13:35'),(2613,14,60,0,0,0,0,1,'2021-02-08 05:13:35'),(2614,14,61,0,0,0,0,1,'2021-02-08 05:13:35'),(2615,14,62,0,0,0,0,1,'2021-02-08 05:13:35'),(2616,14,63,1,1,1,0,1,'2021-02-08 05:13:35'),(2617,14,64,1,1,1,0,1,'2021-02-08 05:13:35'),(2618,14,70,1,1,1,0,1,'2021-02-08 05:13:35'),(2619,14,82,1,1,1,0,1,'2021-02-08 05:13:35'),(2620,14,72,1,1,1,0,1,'2021-02-08 05:13:35'),(2621,14,73,1,1,1,0,1,'2021-02-08 05:13:35'),(2622,14,74,1,1,1,0,1,'2021-02-08 05:13:35'),(2623,14,89,1,1,1,0,1,'2021-02-08 05:13:35'),(2624,14,75,1,1,1,0,1,'2021-02-08 05:13:35'),(2625,14,88,1,1,1,0,1,'2021-02-08 05:13:35'),(2626,14,76,0,0,0,0,1,'2021-02-08 05:13:35'),(2627,14,77,0,0,0,0,1,'2021-02-08 05:13:35'),(2628,14,78,0,0,0,0,1,'2021-02-08 05:13:35'),(2629,14,79,0,0,0,0,1,'2021-02-08 05:13:35'),(2630,14,80,0,0,0,0,1,'2021-02-08 05:13:35'),(2631,14,81,0,0,0,0,1,'2021-02-08 05:13:35'),(2632,14,84,1,1,1,0,1,'2021-02-08 05:13:35'),(2633,14,85,1,1,1,0,1,'2021-02-08 05:13:35'),(2634,14,86,1,1,1,0,1,'2021-02-08 05:13:35'),(2635,14,87,1,1,1,0,1,'2021-02-08 05:13:35'),(2636,16,1,0,0,0,0,1,'2021-09-13 02:19:50'),(2637,16,2,0,0,0,0,1,'2021-09-13 02:19:50'),(2638,16,3,0,0,0,0,1,'2021-09-13 02:19:50'),(2639,16,4,0,0,0,0,1,'2021-09-13 02:19:50'),(2640,16,5,0,0,0,0,1,'2021-09-13 02:19:50'),(2641,16,6,0,0,0,0,1,'2021-09-13 02:19:50'),(2642,16,7,0,0,0,0,1,'2021-09-13 02:19:50'),(2643,16,8,0,0,0,0,1,'2021-09-13 02:19:50'),(2644,16,9,0,0,0,0,1,'2021-09-13 02:19:50'),(2645,16,10,0,0,0,0,1,'2021-09-13 02:19:50'),(2646,16,11,0,0,0,0,1,'2021-09-13 02:19:50'),(2647,16,12,0,0,0,0,1,'2021-09-13 02:19:50'),(2648,16,13,0,0,0,0,1,'2021-09-13 02:19:50'),(2649,16,14,0,0,0,0,1,'2021-09-13 02:19:50'),(2650,16,15,0,0,0,0,1,'2021-09-13 02:19:50'),(2651,16,68,1,1,0,0,1,'2021-09-13 02:19:50'),(2652,16,69,1,1,0,0,1,'2021-09-13 02:19:50'),(2653,16,83,1,1,0,0,1,'2021-09-13 02:19:50'),(2654,16,96,1,1,0,0,1,'2021-09-13 02:19:50'),(2655,16,113,1,1,0,0,1,'2021-09-13 02:19:50'),(2656,16,119,1,0,0,0,1,'2021-09-13 02:19:50'),(2657,16,108,1,0,0,0,1,'2021-09-13 02:19:50'),(2658,16,109,1,0,0,0,1,'2021-09-13 02:19:50'),(2659,16,111,1,0,0,0,1,'2021-09-13 02:19:50'),(2660,16,112,1,0,0,0,1,'2021-09-13 02:19:50'),(2661,16,92,1,0,0,0,1,'2021-09-13 02:19:50'),(2662,16,93,1,0,0,0,1,'2021-09-13 02:19:50'),(2663,16,94,1,0,0,0,1,'2021-09-13 02:19:50'),(2664,16,95,1,0,0,0,1,'2021-09-13 02:19:50'),(2665,16,114,1,0,0,0,1,'2021-09-13 02:19:50'),(2666,16,115,1,0,0,0,1,'2021-09-13 02:19:50'),(2667,16,118,1,0,0,0,1,'2021-09-13 02:19:50'),(2668,16,120,1,0,0,0,1,'2021-09-13 02:19:50'),(2669,16,121,1,0,0,0,1,'2021-09-13 02:19:50'),(2670,16,122,1,0,0,0,1,'2021-09-13 02:19:50'),(2671,16,16,1,0,0,0,1,'2021-09-13 02:19:50'),(2672,16,17,1,0,0,0,1,'2021-09-13 02:19:50'),(2673,16,18,1,0,0,0,1,'2021-09-13 02:19:50'),(2674,16,19,1,0,0,0,1,'2021-09-13 02:19:50'),(2675,16,20,1,0,0,0,1,'2021-09-13 02:19:50'),(2676,16,21,1,0,0,0,1,'2021-09-13 02:19:50'),(2677,16,22,1,0,0,0,1,'2021-09-13 02:19:50'),(2678,16,23,1,0,0,0,1,'2021-09-13 02:19:50'),(2679,16,24,1,0,0,0,1,'2021-09-13 02:19:50'),(2680,16,25,1,0,0,0,1,'2021-09-13 02:19:50'),(2681,16,26,1,0,0,0,1,'2021-09-13 02:19:50'),(2682,16,27,1,0,0,0,1,'2021-09-13 02:19:50'),(2683,16,28,1,0,0,0,1,'2021-09-13 02:19:50'),(2684,16,29,1,0,0,0,1,'2021-09-13 02:19:50'),(2685,16,30,1,0,0,0,1,'2021-09-13 02:19:50'),(2686,16,31,1,0,0,0,1,'2021-09-13 02:19:50'),(2687,16,32,1,0,0,0,1,'2021-09-13 02:19:50'),(2688,16,33,1,0,0,0,1,'2021-09-13 02:19:50'),(2689,16,34,1,0,0,0,1,'2021-09-13 02:19:50'),(2690,16,35,1,0,0,0,1,'2021-09-13 02:19:50'),(2691,16,36,1,0,0,0,1,'2021-09-13 02:19:50'),(2692,16,37,1,0,0,0,1,'2021-09-13 02:19:50'),(2693,16,38,1,0,0,0,1,'2021-09-13 02:19:50'),(2694,16,39,1,0,0,0,1,'2021-09-13 02:19:50'),(2695,16,40,1,0,0,0,1,'2021-09-13 02:19:50'),(2696,16,41,1,0,0,0,1,'2021-09-13 02:19:50'),(2697,16,42,1,0,0,0,1,'2021-09-13 02:19:50'),(2698,16,43,1,0,0,0,1,'2021-09-13 02:19:50'),(2699,16,44,1,0,0,0,1,'2021-09-13 02:19:50'),(2700,16,45,1,0,0,0,1,'2021-09-13 02:19:50'),(2701,16,46,1,0,0,0,1,'2021-09-13 02:19:50'),(2702,16,47,1,0,0,0,1,'2021-09-13 02:19:50'),(2703,16,48,1,0,0,0,1,'2021-09-13 02:19:50'),(2704,16,49,1,0,0,0,1,'2021-09-13 02:19:50'),(2705,16,50,1,0,0,0,1,'2021-09-13 02:19:50'),(2706,16,51,1,0,0,0,1,'2021-09-13 02:19:50'),(2707,16,52,1,0,0,0,1,'2021-09-13 02:19:50'),(2708,16,53,1,0,0,0,1,'2021-09-13 02:19:50'),(2709,16,54,1,0,0,0,1,'2021-09-13 02:19:50'),(2710,16,55,1,0,0,0,1,'2021-09-13 02:19:50'),(2711,16,56,1,0,0,0,1,'2021-09-13 02:19:50'),(2712,16,57,1,0,0,0,1,'2021-09-13 02:19:50'),(2713,16,58,1,0,0,0,1,'2021-09-13 02:19:50'),(2714,16,105,1,0,0,0,1,'2021-09-13 02:19:50'),(2715,16,106,1,0,0,0,1,'2021-09-13 02:19:50'),(2716,16,107,1,0,0,0,1,'2021-09-13 02:19:50'),(2717,16,140,1,1,1,1,1,'2021-09-13 02:19:50'),(2718,16,141,1,1,1,1,1,'2021-09-13 02:19:50'),(2719,16,142,1,1,1,1,1,'2021-09-13 02:19:50'),(2720,16,143,1,1,1,1,1,'2021-09-13 02:19:50'),(2721,16,144,1,1,1,1,1,'2021-09-13 02:19:50'),(2722,16,145,1,1,1,1,1,'2021-09-13 02:19:50'),(2723,16,146,1,1,1,1,1,'2021-09-13 02:19:50'),(2724,16,147,1,1,1,1,1,'2021-09-13 02:19:50'),(2725,16,148,1,1,1,1,1,'2021-09-13 02:19:50'),(2726,16,149,1,1,1,1,1,'2021-09-13 02:19:50'),(2727,16,150,1,1,1,1,1,'2021-09-13 02:19:50'),(2728,16,151,1,1,1,1,1,'2021-09-13 02:19:50'),(2729,16,152,1,1,1,1,1,'2021-09-13 02:19:50'),(2730,16,153,1,1,1,1,1,'2021-09-13 02:19:50'),(2731,16,154,1,1,1,1,1,'2021-09-13 02:19:50'),(2732,16,123,1,0,1,0,1,'2021-09-13 02:19:50'),(2733,16,124,1,0,1,0,1,'2021-09-13 02:19:50'),(2734,16,125,1,0,1,0,1,'2021-09-13 02:19:50'),(2735,16,126,1,0,1,0,1,'2021-09-13 02:19:50'),(2736,16,127,1,0,1,0,1,'2021-09-13 02:19:50'),(2737,16,128,1,0,1,0,1,'2021-09-13 02:19:50'),(2738,16,129,1,0,1,0,1,'2021-09-13 02:19:50'),(2739,16,130,1,0,1,0,1,'2021-09-13 02:19:50'),(2740,16,131,1,0,1,0,1,'2021-09-13 02:19:50'),(2741,16,132,1,0,1,0,1,'2021-09-13 02:19:50'),(2742,16,133,1,0,1,0,1,'2021-09-13 02:19:50'),(2743,16,134,1,0,1,0,1,'2021-09-13 02:19:50'),(2744,16,135,1,0,1,0,1,'2021-09-13 02:19:50'),(2745,16,136,1,0,1,0,1,'2021-09-13 02:19:50'),(2746,16,137,1,0,1,0,1,'2021-09-13 02:19:50'),(2747,16,138,1,0,1,0,1,'2021-09-13 02:19:50'),(2748,16,139,1,0,1,0,1,'2021-09-13 02:19:50'),(2749,16,65,0,0,0,0,1,'2021-09-13 02:19:50'),(2750,16,66,0,0,0,0,1,'2021-09-13 02:19:50'),(2751,16,67,0,0,0,0,1,'2021-09-13 02:19:50'),(2752,16,71,0,0,0,0,1,'2021-09-13 02:19:50'),(2753,16,98,1,0,0,0,1,'2021-09-13 02:19:50'),(2754,16,99,1,0,0,0,1,'2021-09-13 02:19:50'),(2755,16,100,1,0,0,0,1,'2021-09-13 02:19:50'),(2756,16,101,1,0,0,0,1,'2021-09-13 02:19:50'),(2757,16,102,1,0,0,0,1,'2021-09-13 02:19:50'),(2758,16,104,1,0,0,0,1,'2021-09-13 02:19:50'),(2759,16,59,1,0,0,0,1,'2021-09-13 02:19:50'),(2760,16,60,1,0,0,0,1,'2021-09-13 02:19:50'),(2761,16,61,1,0,0,0,1,'2021-09-13 02:19:50'),(2762,16,62,1,0,0,0,1,'2021-09-13 02:19:50'),(2763,16,63,1,0,0,0,1,'2021-09-13 02:19:50'),(2764,16,64,1,0,0,0,1,'2021-09-13 02:19:50'),(2765,16,70,1,0,0,0,1,'2021-09-13 02:19:50'),(2766,16,82,1,0,0,0,1,'2021-09-13 02:19:50'),(2767,16,72,1,0,0,0,1,'2021-09-13 02:19:50'),(2768,16,73,1,0,0,0,1,'2021-09-13 02:19:50'),(2769,16,74,1,0,0,0,1,'2021-09-13 02:19:50'),(2770,16,89,1,0,0,0,1,'2021-09-13 02:19:50'),(2771,16,75,1,0,0,0,1,'2021-09-13 02:19:50'),(2772,16,88,1,0,0,0,1,'2021-09-13 02:19:50'),(2773,16,76,0,0,0,0,1,'2021-09-13 02:19:50'),(2774,16,77,0,0,0,0,1,'2021-09-13 02:19:50'),(2775,16,78,0,0,0,0,1,'2021-09-13 02:19:50'),(2776,16,79,0,0,0,0,1,'2021-09-13 02:19:50'),(2777,16,80,0,0,0,0,1,'2021-09-13 02:19:50'),(2778,16,81,0,0,0,0,1,'2021-09-13 02:19:50'),(2779,16,91,0,0,0,0,1,'2021-09-13 02:19:50'),(2780,16,103,0,0,0,0,1,'2021-09-13 02:19:50'),(2781,16,110,0,0,0,0,1,'2021-09-13 02:19:50'),(2782,16,117,1,1,1,0,1,'2021-09-13 02:19:50'),(2783,16,116,1,1,1,0,1,'2021-09-13 02:19:50'),(2784,16,84,1,0,0,0,1,'2021-09-13 02:19:50'),(2785,16,85,1,0,0,0,1,'2021-09-13 02:19:50'),(2786,16,86,1,0,0,0,1,'2021-09-13 02:19:50'),(2787,16,87,1,0,0,0,1,'2021-09-13 02:19:50'),(2788,16,97,1,0,0,0,1,'2021-09-13 02:19:50');

/*Table structure for table `sec_role_tbl` */

drop table if exists `sec_role_tbl`;

CREATE TABLE `sec_role_tbl` (
  `role_id` int(11) NOT NULL AUTO_INCREMENT,
  `role_name` text NOT NULL,
  `role_description` text NOT NULL,
  `create_by` int(11) DEFAULT NULL,
  `date_time` datetime DEFAULT NULL,
  `role_status` int(11) NOT NULL DEFAULT 1,
  PRIMARY KEY (`role_id`)
) ENGINE=InnoDB AUTO_INCREMENT=17 DEFAULT CHARSET=utf8;

/*Data for the table `sec_role_tbl` */

insert into `sec_role_tbl` values (7,'Manager ','Manager Role list.',1,'2019-11-17 11:46:11',1),(12,'Cashier','Cashier',1,'2020-11-29 01:12:42',1),(14,'Moderator','New Role Permission',1,'2021-01-10 06:31:46',1),(15,'Booking','Hotel booking',1,'2021-01-10 09:23:15',1),(16,'Manager In-Charge','Should get access to all operation',1,'2021-09-13 02:19:50',1);

/*Table structure for table `sec_user_access_tbl` */

drop table if exists `sec_user_access_tbl`;

CREATE TABLE `sec_user_access_tbl` (
  `role_acc_id` int(11) NOT NULL AUTO_INCREMENT,
  `fk_role_id` int(11) NOT NULL,
  `fk_user_id` int(11) NOT NULL,
  PRIMARY KEY (`role_acc_id`)
) ENGINE=InnoDB AUTO_INCREMENT=34 DEFAULT CHARSET=utf8;

/*Data for the table `sec_user_access_tbl` */

insert into `sec_user_access_tbl` values (7,7,4),(9,1,177),(10,1,3),(11,8,3),(12,1,3),(13,1,3),(14,1,3),(19,7,180),(24,14,193),(28,15,194),(30,14,2),(32,15,197),(33,16,19);

/*Table structure for table `setting` */

drop table if exists `setting`;

CREATE TABLE `setting` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `title` varchar(255) DEFAULT NULL,
  `storename` varchar(100) DEFAULT NULL,
  `address` text DEFAULT NULL,
  `email` varchar(50) DEFAULT NULL,
  `phone` varchar(20) DEFAULT NULL,
  `logo` varchar(50) DEFAULT NULL,
  `splash_logo` varchar(255) NOT NULL,
  `favicon` varchar(100) DEFAULT NULL,
  `vat` int(11) NOT NULL DEFAULT 0,
  `isvatnumshow` int(11) DEFAULT 0,
  `vattinno` varchar(30) DEFAULT NULL,
  `servicecharge` int(11) NOT NULL DEFAULT 0,
  `discount_type` int(11) NOT NULL DEFAULT 0 COMMENT '0=amount,1=percent',
  `service_chargeType` int(11) NOT NULL DEFAULT 0 COMMENT '0=amount,1=percent',
  `discountrate` decimal(19,3) NOT NULL DEFAULT 0.000,
  `country` varchar(100) DEFAULT NULL,
  `map_key` varchar(255) DEFAULT NULL,
  `latitude` double(10,4) DEFAULT NULL,
  `longitude` double(10,4) DEFAULT NULL,
  `currency` int(11) DEFAULT 0,
  `language` varchar(100) DEFAULT NULL,
  `timezone` varchar(150) NOT NULL,
  `checkintime` time NOT NULL,
  `checkouttime` time NOT NULL,
  `dateformat` text NOT NULL,
  `site_align` varchar(50) DEFAULT NULL,
  `pricetxt` text DEFAULT NULL,
  `powerbytxt` text DEFAULT NULL,
  `footer_text` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8;

/*Data for the table `setting` */

insert into `setting` values (2,'ABU Hotel','ABU Hotel','Ahmadu Bello University, Zaria-Nigeria','abuhotel@abu.edu.ng','08068107088','assets/img/icons/2022-01-21/a.png','assets/img/icons/2022-01-21/a1.png','assets/img/icons/2022-01-21/f.png',0,1,'',0,1,1,'0.000','NGN','AIzaSyB-EEPxbay_aFpp3jcFXpjyPQcVQUJ2pp0',23.8311,90.4243,3,'english','Africa/Accra','08:00:00','12:00:00','d/m/Y','LTR','The crossed-out prices you see are based on prices currently being quoted by the property for a 30-day window around your check-in date. To ','SmartSoftware Solutions ','2021?Copyright');

/*Table structure for table `sms_configuration` */

drop table if exists `sms_configuration`;

CREATE TABLE `sms_configuration` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `link` text NOT NULL,
  `gateway` varchar(200) NOT NULL,
  `user_name` varchar(200) NOT NULL,
  `password` varchar(255) NOT NULL,
  `sms_from` varchar(200) NOT NULL,
  `userid` varchar(100) NOT NULL,
  `status` int(11) NOT NULL DEFAULT 0,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8;

/*Data for the table `sms_configuration` */

insert into `sms_configuration` values (3,'https://www.budgetsms.net/','budgetsms','user1','1e753da74','budgetsms','21547',0);

/*Table structure for table `sms_template` */

drop table if exists `sms_template`;

CREATE TABLE `sms_template` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `template_name` varchar(255) NOT NULL,
  `message` varchar(255) NOT NULL,
  `type` varchar(255) NOT NULL,
  `status` tinyint(4) NOT NULL DEFAULT 1,
  `default_status` tinyint(4) NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp(),
  `updated_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=9 DEFAULT CHARSET=latin1;

/*Data for the table `sms_template` */

insert into `sms_template` values (1,'one','your Order {id} is cancel for some reason.','Cancel',0,0,'2021-10-24 11:57:48','0000-00-00 00:00:00'),(2,'two','your order {id} is completed','CompleteOrder',0,1,'2019-01-02 14:58:19','0000-00-00 00:00:00'),(3,'three','your order {id} is processing','Processing',0,1,'2020-03-07 20:48:29','0000-00-00 00:00:00'),(8,'four','Your Order Has been Placed Successfully.','Neworder',1,1,'2020-03-07 20:48:33','0000-00-00 00:00:00');

/*Table structure for table `starclass` */

drop table if exists `starclass`;

CREATE TABLE `starclass` (
  `starcalssid` int(11) NOT NULL AUTO_INCREMENT,
  `starclassname` varchar(50) COLLATE latin1_general_ci NOT NULL,
  PRIMARY KEY (`starcalssid`)
) ENGINE=MyISAM AUTO_INCREMENT=8 DEFAULT CHARSET=latin1 COLLATE=latin1_general_ci;

/*Data for the table `starclass` */

/*Table structure for table `sub_order` */

drop table if exists `sub_order`;

CREATE TABLE `sub_order` (
  `sub_id` int(11) NOT NULL AUTO_INCREMENT,
  `order_id` int(11) NOT NULL,
  `customer_id` int(11) DEFAULT NULL,
  `vat` float DEFAULT NULL,
  `discount` decimal(10,2) DEFAULT 0.00,
  `s_charge` float DEFAULT NULL,
  `total_price` float DEFAULT NULL,
  `status` int(11) NOT NULL DEFAULT 0 COMMENT '0=unpaid,1=paid',
  `order_menu_id` text DEFAULT NULL,
  `adons_id` varchar(20) DEFAULT NULL,
  `adons_qty` varchar(20) DEFAULT NULL,
  PRIMARY KEY (`sub_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

/*Data for the table `sub_order` */

/*Table structure for table `subscribe_emaillist` */

drop table if exists `subscribe_emaillist`;

CREATE TABLE `subscribe_emaillist` (
  `emailid` int(11) NOT NULL AUTO_INCREMENT,
  `email` varchar(255) DEFAULT NULL,
  `dateinsert` datetime NOT NULL,
  PRIMARY KEY (`emailid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

/*Data for the table `subscribe_emaillist` */

/*Table structure for table `supplier` */

drop table if exists `supplier`;

CREATE TABLE `supplier` (
  `supid` int(11) NOT NULL AUTO_INCREMENT,
  `suplier_code` varchar(255) NOT NULL,
  `supName` varchar(100) NOT NULL,
  `supEmail` varchar(100) NOT NULL,
  `supMobile` varchar(50) NOT NULL,
  `supAddress` text NOT NULL,
  `total_amount` decimal(15,2) DEFAULT 0.00,
  `paid_amount` decimal(15,2) DEFAULT 0.00,
  `due_amount` decimal(15,2) DEFAULT 0.00,
  PRIMARY KEY (`supid`),
  KEY `suplier_code` (`suplier_code`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8;

/*Data for the table `supplier` */

insert into `supplier` values (1,'sup_002','Yahaya Salihu','yahsal1@yahoo.com','08068107088','Tudun Wada','25000.00','0.00','25000.00');

/*Table structure for table `synchronizer_setting` */

drop table if exists `synchronizer_setting`;

CREATE TABLE `synchronizer_setting` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `hostname` varchar(100) NOT NULL,
  `username` varchar(100) NOT NULL,
  `password` varchar(100) NOT NULL,
  `port` varchar(10) NOT NULL,
  `debug` varchar(10) NOT NULL,
  `project_root` varchar(100) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

/*Data for the table `synchronizer_setting` */

/*Table structure for table `table_details` */

drop table if exists `table_details`;

CREATE TABLE `table_details` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `table_id` int(11) NOT NULL,
  `customer_id` int(11) DEFAULT NULL,
  `order_id` int(11) NOT NULL,
  `time_enter` time NOT NULL,
  `total_people` int(11) NOT NULL,
  `delete_at` int(11) NOT NULL DEFAULT 0,
  `created_at` date NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8;

/*Data for the table `table_details` */

/*Table structure for table `table_setting` */

drop table if exists `table_setting`;

CREATE TABLE `table_setting` (
  `settingid` int(11) NOT NULL AUTO_INCREMENT,
  `tableid` int(11) NOT NULL,
  `iconpos` text NOT NULL,
  PRIMARY KEY (`settingid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

/*Data for the table `table_setting` */

/*Table structure for table `tax_settings` */

drop table if exists `tax_settings`;

CREATE TABLE `tax_settings` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `default_value` float NOT NULL,
  `tax_name` varchar(250) NOT NULL,
  `nt` int(11) NOT NULL,
  `reg_no` varchar(100) NOT NULL,
  `is_show` tinyint(4) NOT NULL DEFAULT 1,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

/*Data for the table `tax_settings` */

/*Table structure for table `tbl_assign_kitchen` */

drop table if exists `tbl_assign_kitchen`;

CREATE TABLE `tbl_assign_kitchen` (
  `assignid` int(11) NOT NULL AUTO_INCREMENT,
  `kitchen_id` int(11) NOT NULL,
  `userid` int(11) NOT NULL,
  PRIMARY KEY (`assignid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

/*Data for the table `tbl_assign_kitchen` */

/*Table structure for table `tbl_bank` */

drop table if exists `tbl_bank`;

CREATE TABLE `tbl_bank` (
  `bankid` int(11) NOT NULL AUTO_INCREMENT,
  `bank_name` varchar(255) NOT NULL,
  `ac_name` varchar(200) DEFAULT NULL,
  `ac_number` varchar(200) DEFAULT NULL,
  `branch` varchar(200) DEFAULT NULL,
  `signature_pic` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`bankid`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8;

/*Data for the table `tbl_bank` */

insert into `tbl_bank` values (2,'City Bank','Kamal Hassan','3869583','Uttara','./application/modules/hrm/assets/images/2020-01-18/e.jpg');

/*Table structure for table `tbl_booking_type_info` */

drop table if exists `tbl_booking_type_info`;

CREATE TABLE `tbl_booking_type_info` (
  `btypeinfoid` int(11) NOT NULL AUTO_INCREMENT,
  `booking_type` varchar(200) NOT NULL,
  `booking_sourse` varchar(200) NOT NULL,
  `commissionrate` decimal(10,0) NOT NULL DEFAULT 2,
  `balance` float NOT NULL DEFAULT 0,
  `paid_amount` decimal(10,0) NOT NULL DEFAULT 0,
  `due_amount` decimal(10,0) NOT NULL DEFAULT 0,
  PRIMARY KEY (`btypeinfoid`),
  KEY `booking_type` (`booking_type`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8mb4;

/*Data for the table `tbl_booking_type_info` */

insert into `tbl_booking_type_info` values (1,'Wedding','Yahaya','2',1680,'0','0'),(2,'Business Seminar','Aminu Umar','3',0,'0','0');

/*Table structure for table `tbl_cancelitem` */

drop table if exists `tbl_cancelitem`;

CREATE TABLE `tbl_cancelitem` (
  `cancelid` int(11) NOT NULL AUTO_INCREMENT,
  `orderid` int(11) NOT NULL,
  `foodid` int(11) NOT NULL,
  `varientid` int(11) NOT NULL,
  `quantity` decimal(19,3) NOT NULL DEFAULT 0.000,
  PRIMARY KEY (`cancelid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

/*Data for the table `tbl_cancelitem` */

/*Table structure for table `tbl_card_terminal` */

drop table if exists `tbl_card_terminal`;

CREATE TABLE `tbl_card_terminal` (
  `card_terminalid` int(11) NOT NULL AUTO_INCREMENT,
  `terminal_name` varchar(255) NOT NULL,
  PRIMARY KEY (`card_terminalid`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8;

/*Data for the table `tbl_card_terminal` */

insert into `tbl_card_terminal` values (1,'Nexus Terminal');

/*Table structure for table `tbl_cashcounter` */

drop table if exists `tbl_cashcounter`;

CREATE TABLE `tbl_cashcounter` (
  `ccid` int(11) NOT NULL AUTO_INCREMENT,
  `counterno` int(11) NOT NULL,
  PRIMARY KEY (`ccid`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=latin1;

/*Data for the table `tbl_cashcounter` */

insert into `tbl_cashcounter` values (1,1),(2,2);

/*Table structure for table `tbl_cashregister` */

drop table if exists `tbl_cashregister`;

CREATE TABLE `tbl_cashregister` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `userid` int(11) NOT NULL,
  `counter_no` int(11) NOT NULL,
  `opening_balance` decimal(19,3) NOT NULL DEFAULT 0.000,
  `closing_balance` decimal(19,3) NOT NULL DEFAULT 0.000,
  `openclosedate` date NOT NULL,
  `opendate` datetime DEFAULT '1970-01-01 01:01:01',
  `closedate` datetime DEFAULT '1970-01-01 01:01:01',
  `status` int(11) NOT NULL DEFAULT 0,
  `openingnote` text DEFAULT NULL,
  `closing_note` text DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `userid` (`userid`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

/*Data for the table `tbl_cashregister` */

/*Table structure for table `tbl_category` */

drop table if exists `tbl_category`;

CREATE TABLE `tbl_category` (
  `category_id` int(11) NOT NULL AUTO_INCREMENT,
  `categoryname` text DEFAULT NULL,
  `status` int(3) DEFAULT NULL COMMENT '0=inactive,1=active',
  PRIMARY KEY (`category_id`)
) ENGINE=InnoDB AUTO_INCREMENT=503 DEFAULT CHARSET=utf8;

/*Data for the table `tbl_category` */

insert into `tbl_category` values (1,'Beauty Items',1),(3,'Glass Items',1),(4,'Tasty Items',1),(501,'Houekeeping products',1),(502,'Detergent',1);

/*Table structure for table `tbl_checklist` */

drop table if exists `tbl_checklist`;

CREATE TABLE `tbl_checklist` (
  `checklist_id` int(11) NOT NULL AUTO_INCREMENT,
  `taskname` text DEFAULT NULL,
  `type` int(3) NOT NULL DEFAULT 1 COMMENT '1=housekeepr,2=laundry',
  `status` int(3) NOT NULL DEFAULT 1 COMMENT '0=inactive,1=active',
  PRIMARY KEY (`checklist_id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8;

/*Data for the table `tbl_checklist` */

insert into `tbl_checklist` values (1,'Toilet Cleaning',1,1),(2,'Tiles Moping',1,1),(3,'Bed Cleaning',1,1);

/*Table structure for table `tbl_complementary` */

drop table if exists `tbl_complementary`;

CREATE TABLE `tbl_complementary` (
  `complementary_id` int(11) NOT NULL AUTO_INCREMENT,
  `roomtype` text DEFAULT NULL,
  `complementaryname` text DEFAULT NULL,
  `rate` decimal(10,2) DEFAULT NULL,
  `status` int(3) NOT NULL COMMENT '0=inactive,1=active',
  PRIMARY KEY (`complementary_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

/*Data for the table `tbl_complementary` */

/*Table structure for table `tbl_country` */

drop table if exists `tbl_country`;

CREATE TABLE `tbl_country` (
  `countryid` int(11) NOT NULL AUTO_INCREMENT,
  `countryname` varchar(70) NOT NULL,
  `status` int(11) NOT NULL DEFAULT 1,
  PRIMARY KEY (`countryid`)
) ENGINE=InnoDB AUTO_INCREMENT=253 DEFAULT CHARSET=utf8;

/*Data for the table `tbl_country` */

insert into `tbl_country` values (1,'Afghanistan',1),(2,'Aland Islands',1),(3,'Albania',1),(4,'Algeria',1),(5,'American Samoa',1),(6,'Andorra',1),(7,'Angola',1),(8,'Anguilla',1),(9,'Antarctica',1),(10,'Antigua and Barbuda',1),(11,'Argentina',1),(12,'Armenia',1),(13,'Aruba',1),(14,'Australia',1),(15,'Austria',1),(16,'Azerbaijan',1),(17,'Bahamas',1),(18,'Bahrain',1),(19,'Bangladesh',1),(20,'Barbados',1),(21,'Belarus',1),(22,'Belgium',1),(23,'Belize',1),(24,'Benin',1),(25,'Bermuda',1),(26,'Bhutan',1),(27,'Bolivia',1),(28,'Bonaire, Sint Eustatius and Saba',1),(29,'Bosnia and Herzegovina',1),(30,'Botswana',1),(31,'Bouvet Island',1),(32,'Brazil',1),(33,'British Indian Ocean Territory',1),(34,'Brunei Darussalam',1),(35,'Bulgaria',1),(36,'Burkina Faso',1),(37,'Burundi',1),(38,'Cambodia',1),(39,'Cameroon',1),(40,'Canada',1),(41,'Cape Verde',1),(42,'Cayman Islands',1),(43,'Central African Republic',1),(44,'Chad',1),(45,'Chile',1),(46,'China',1),(47,'Christmas Island',1),(48,'Cocos (Keeling) Islands',1),(49,'Colombia',1),(50,'Comoros',1),(51,'Congo',1),(52,'Congo, Democratic Republic of the Congo',1),(53,'Cook Islands',1),(54,'Costa Rica',1),(55,'Cote D\'Ivoire',1),(56,'Croatia',1),(57,'Cuba',1),(58,'Curacao',1),(59,'Cyprus',1),(60,'Czech Republic',1),(61,'Denmark',1),(62,'Djibouti',1),(63,'Dominica',1),(64,'Dominican Republic',1),(65,'Ecuador',1),(66,'Egypt',1),(67,'El Salvador',1),(68,'Equatorial Guinea',1),(69,'Eritrea',1),(70,'Estonia',1),(71,'Ethiopia',1),(72,'Falkland Islands (Malvinas)',1),(73,'Faroe Islands',1),(74,'Fiji',1),(75,'Finland',1),(76,'France',1),(77,'French Guiana',1),(78,'French Polynesia',1),(79,'French Southern Territories',1),(80,'Gabon',1),(81,'Gambia',1),(82,'Georgia',1),(83,'Germany',1),(84,'Ghana',1),(85,'Gibraltar',1),(86,'Greece',1),(87,'Greenland',1),(88,'Grenada',1),(89,'Guadeloupe',1),(90,'Guam',1),(91,'Guatemala',1),(92,'Guernsey',1),(93,'Guinea',1),(94,'Guinea-Bissau',1),(95,'Guyana',1),(96,'Haiti',1),(97,'Heard Island and Mcdonald Islands',1),(98,'Holy See (Vatican City State)',1),(99,'Honduras',1),(100,'Hong Kong',1),(101,'Hungary',1),(102,'Iceland',1),(103,'India',1),(104,'Indonesia',1),(105,'Iran, Islamic Republic of',1),(106,'Iraq',1),(107,'Ireland',1),(108,'Isle of Man',1),(109,'Israel',1),(110,'Italy',1),(111,'Jamaica',1),(112,'Japan',1),(113,'Jersey',1),(114,'Jordan',1),(115,'Kazakhstan',1),(116,'Kenya',1),(117,'Kiribati',1),(118,'Korea, Democratic People\'s Republic of',1),(119,'Korea, Republic of',1),(120,'Kosovo',1),(121,'Kuwait',1),(122,'Kyrgyzstan',1),(123,'Lao People\'s Democratic Republic',1),(124,'Latvia',1),(125,'Lebanon',1),(126,'Lesotho',1),(127,'Liberia',1),(128,'Libyan Arab Jamahiriya',1),(129,'Liechtenstein',1),(130,'Lithuania',1),(131,'Luxembourg',1),(132,'Macao',1),(133,'Macedonia, the Former Yugoslav Republic of',1),(134,'Madagascar',1),(135,'Malawi',1),(136,'Malaysia',1),(137,'Maldives',1),(138,'Mali',1),(139,'Malta',1),(140,'Marshall Islands',1),(141,'Martinique',1),(142,'Mauritania',1),(143,'Mauritius',1),(144,'Mayotte',1),(145,'Mexico',1),(146,'Micronesia, Federated States of',1),(147,'Moldova, Republic of',1),(148,'Monaco',1),(149,'Mongolia',1),(150,'Montenegro',1),(151,'Montserrat',1),(152,'Morocco',1),(153,'Mozambique',1),(154,'Myanmar',1),(155,'Namibia',1),(156,'Nauru',1),(157,'Nepal',1),(158,'Netherlands',1),(159,'Netherlands Antilles',1),(160,'New Caledonia',1),(161,'New Zealand',1),(162,'Nicaragua',1),(163,'Niger',1),(164,'Nigeria',1),(165,'Niue',1),(166,'Norfolk Island',1),(167,'Northern Mariana Islands',1),(168,'Norway',1),(169,'Oman',1),(170,'Pakistan',1),(171,'Palau',1),(172,'Palestinian Territory, Occupied',1),(173,'Panama',1),(174,'Papua New Guinea',1),(175,'Paraguay',1),(176,'Peru',1),(177,'Philippines',1),(178,'Pitcairn',1),(179,'Poland',1),(180,'Portugal',1),(181,'Puerto Rico',1),(182,'Qatar',1),(183,'Reunion',1),(184,'Romania',1),(185,'Russian Federation',1),(186,'Rwanda',1),(187,'Saint Barthelemy',1),(188,'Saint Helena',1),(189,'Saint Kitts and Nevis',1),(190,'Saint Lucia',1),(191,'Saint Martin',1),(192,'Saint Pierre and Miquelon',1),(193,'Saint Vincent and the Grenadines',1),(194,'Samoa',1),(195,'San Marino',1),(196,'Sao Tome and Principe',1),(197,'Saudi Arabia',1),(198,'Senegal',1),(199,'Serbia',1),(200,'Serbia and Montenegro',1),(201,'Seychelles',1),(202,'Sierra Leone',1),(203,'Singapore',1),(204,'Sint Maarten',1),(205,'Slovakia',1),(206,'Slovenia',1),(207,'Solomon Islands',1),(208,'Somalia',1),(209,'South Africa',1),(210,'South Georgia and the South Sandwich Islands',1),(211,'South Sudan',1),(212,'Spain',1),(213,'Sri Lanka',1),(214,'Sudan',1),(215,'Suriname',1),(216,'Svalbard and Jan Mayen',1),(217,'Swaziland',1),(218,'Sweden',1),(219,'Switzerland',1),(220,'Syrian Arab Republic',1),(221,'Taiwan, Province of China',1),(222,'Tajikistan',1),(223,'Tanzania, United Republic of',1),(224,'Thailand',1),(225,'Timor-Leste',1),(226,'Togo',1),(227,'Tokelau',1),(228,'Tonga',1),(229,'Trinidad and Tobago',1),(230,'Tunisia',1),(231,'Turkey',1),(232,'Turkmenistan',1),(233,'Turks and Caicos Islands',1),(234,'Tuvalu',1),(235,'Uganda',1),(236,'Ukraine',1),(237,'United Arab Emirates',1),(238,'United Kingdom',1),(239,'United States',1),(240,'United States Minor Outlying Islands',1),(241,'Uruguay',1),(242,'Uzbekistan',1),(243,'Vanuatu',1),(244,'Venezuela',1),(245,'Viet Nam',1),(246,'Virgin Islands, British',1),(247,'Virgin Islands, U.s.',1),(248,'Wallis and Futuna',1),(249,'Western Sahara',1),(250,'Yemen',1),(251,'Zambia',1),(252,'Zimbabwe',1);

/*Table structure for table `tbl_destroyedproduct` */

drop table if exists `tbl_destroyedproduct`;

CREATE TABLE `tbl_destroyedproduct` (
  `destroy_id` int(11) NOT NULL AUTO_INCREMENT,
  `product_id` int(11) NOT NULL,
  `quantity` int(11) DEFAULT 0,
  `rec_date` datetime DEFAULT NULL,
  `comment` text DEFAULT NULL,
  PRIMARY KEY (`destroy_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

/*Data for the table `tbl_destroyedproduct` */

/*Table structure for table `tbl_financialyear` */

drop table if exists `tbl_financialyear`;

CREATE TABLE `tbl_financialyear` (
  `fiyear_id` int(11) NOT NULL AUTO_INCREMENT,
  `title` varchar(50) NOT NULL,
  `start_date` date DEFAULT NULL,
  `end_date` date DEFAULT NULL,
  `date_time` datetime DEFAULT NULL,
  `is_active` varchar(3) DEFAULT NULL COMMENT '1=ended,0=inactive,2=active',
  `create_by` varchar(3) DEFAULT NULL,
  PRIMARY KEY (`fiyear_id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8;

/*Data for the table `tbl_financialyear` */

insert into `tbl_financialyear` values (1,'2022-2022','2022-01-21','2022-01-31','2022-01-21 00:40:45','0','1'),(2,'2022-2022','2022-04-06','2022-04-30','2022-04-06 08:30:16','2','1'),(3,'2024-2024','2024-03-01','2024-03-31','2024-03-21 14:40:24','2','1');

/*Table structure for table `tbl_floor` */

drop table if exists `tbl_floor`;

CREATE TABLE `tbl_floor` (
  `floorid` int(11) NOT NULL AUTO_INCREMENT,
  `floorname` varchar(100) NOT NULL,
  `status` int(11) NOT NULL DEFAULT 1,
  PRIMARY KEY (`floorid`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8;

/*Data for the table `tbl_floor` */

insert into `tbl_floor` values (1,'Ground Floor',1),(2,'First Floor',1),(3,'Second Floor',1),(4,'Third Floor',1);

/*Table structure for table `tbl_floorplan` */

drop table if exists `tbl_floorplan`;

CREATE TABLE `tbl_floorplan` (
  `floorplanid` int(11) NOT NULL AUTO_INCREMENT,
  `floorName` int(11) NOT NULL,
  `noofroom` int(11) NOT NULL,
  `startno` varchar(255) NOT NULL,
  `roomno` varchar(50) NOT NULL,
  PRIMARY KEY (`floorplanid`),
  KEY `floorName` (`floorName`)
) ENGINE=InnoDB AUTO_INCREMENT=81 DEFAULT CHARSET=utf8;

/*Data for the table `tbl_floorplan` */

insert into `tbl_floorplan` values (1,1,20,'1','1'),(2,1,20,'1','2'),(3,1,20,'1','3'),(4,1,20,'1','4'),(5,1,20,'1','5'),(6,1,20,'1','6'),(7,1,20,'1','7'),(8,1,20,'1','8'),(9,1,20,'1','9'),(10,1,20,'1','10'),(11,1,20,'1','11'),(12,1,20,'1','12'),(13,1,20,'1','13'),(14,1,20,'1','14'),(15,1,20,'1','15'),(16,1,20,'1','16'),(17,1,20,'1','17'),(18,1,20,'1','18'),(19,1,20,'1','19'),(20,1,20,'1','20'),(21,2,15,'21','21'),(22,2,15,'21','22'),(23,2,15,'21','23'),(24,2,15,'21','24'),(25,2,15,'21','25'),(26,2,15,'21','26'),(27,2,15,'21','27'),(28,2,15,'21','28'),(29,2,15,'21','29'),(30,2,15,'21','30'),(31,2,15,'21','31'),(32,2,15,'21','32'),(33,2,15,'21','33'),(34,2,15,'21','34'),(35,2,15,'21','35'),(36,3,15,'36','36'),(37,3,15,'36','37'),(38,3,15,'36','38'),(39,3,15,'36','39'),(40,3,15,'36','40'),(41,3,15,'36','41'),(42,3,15,'36','42'),(43,3,15,'36','43'),(44,3,15,'36','44'),(45,3,15,'36','45'),(46,3,15,'36','46'),(47,3,15,'36','47'),(48,3,15,'36','48'),(49,3,15,'36','49'),(50,3,15,'36','50'),(51,4,30,'37','37'),(52,4,30,'37','38'),(53,4,30,'37','39'),(54,4,30,'37','40'),(55,4,30,'37','41'),(56,4,30,'37','42'),(57,4,30,'37','43'),(58,4,30,'37','44'),(59,4,30,'37','45'),(60,4,30,'37','46'),(61,4,30,'37','47'),(62,4,30,'37','48'),(63,4,30,'37','49'),(64,4,30,'37','50'),(65,4,30,'37','51'),(66,4,30,'37','52'),(67,4,30,'37','53'),(68,4,30,'37','54'),(69,4,30,'37','55'),(70,4,30,'37','56'),(71,4,30,'37','57'),(72,4,30,'37','58'),(73,4,30,'37','59'),(74,4,30,'37','60'),(75,4,30,'37','61'),(76,4,30,'37','62'),(77,4,30,'37','63'),(78,4,30,'37','64'),(79,4,30,'37','65'),(80,4,30,'37','66');

/*Table structure for table `tbl_groupitems` */

drop table if exists `tbl_groupitems`;

CREATE TABLE `tbl_groupitems` (
  `groupid` int(11) NOT NULL AUTO_INCREMENT,
  `gitemid` int(11) NOT NULL,
  `items` int(11) NOT NULL,
  `item_qty` decimal(10,2) NOT NULL DEFAULT 0.00,
  `varientid` int(11) NOT NULL,
  `status` int(11) NOT NULL DEFAULT 1,
  PRIMARY KEY (`groupid`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

/*Data for the table `tbl_groupitems` */

/*Table structure for table `tbl_guestpayments` */

drop table if exists `tbl_guestpayments`;

CREATE TABLE `tbl_guestpayments` (
  `payid` int(11) NOT NULL AUTO_INCREMENT,
  `bookedid` varchar(255) NOT NULL,
  `invoice` varchar(255) NOT NULL,
  `paydate` datetime NOT NULL,
  `paymenttype` varchar(100) NOT NULL,
  `paymentamount` decimal(10,2) NOT NULL DEFAULT 0.00,
  `details` varchar(100) DEFAULT NULL,
  PRIMARY KEY (`payid`),
  KEY `bookedid` (`bookedid`,`invoice`)
) ENGINE=InnoDB AUTO_INCREMENT=9 DEFAULT CHARSET=utf8;

/*Data for the table `tbl_guestpayments` */

insert into `tbl_guestpayments` values (1,'13','000001','2022-01-21 00:44:40','Cash Payment','24000.00','Advance in Card/Account No:  Bank Name: '),(2,'14','000002','2022-01-23 23:51:47','Cash Payment','80000.00','Advance in Card/Account No:  Bank Name: bank'),(3,'15','000003','2022-04-06 11:20:06','Card Payment','24000.00','Advance in Card/Account No:  Bank Name: bank'),(4,'15','000004','2022-04-06 11:34:10','Bank Payment','4800.00','Card/Account No: 100010 Bank Name: Dhaka Bank'),(5,'14','000005','2022-04-06 11:36:00','Bank Payment','20800.00','Card/Account No:  Bank Name: Dhaka Bank'),(6,'16','000006','2024-03-21 14:45:35','Cash Payment','5000.00','Advance in Card/Account No:  Bank Name: '),(7,'17','000007','2024-03-21 14:51:59','POS','4000.00','Advance in Card/Account No:  Bank Name: '),(8,'17','000008','2024-03-21 15:01:50','POS','39200.00','Card/Account No:  Bank Name: ');

/*Table structure for table `tbl_hkitem` */

drop table if exists `tbl_hkitem`;

CREATE TABLE `tbl_hkitem` (
  `item_id` int(11) NOT NULL AUTO_INCREMENT,
  `product_id` int(11) NOT NULL,
  `checklist` text DEFAULT NULL,
  `price` decimal(8,2) NOT NULL,
  PRIMARY KEY (`item_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

/*Data for the table `tbl_hkitem` */

/*Table structure for table `tbl_housekeepingrecord` */

drop table if exists `tbl_housekeepingrecord`;

CREATE TABLE `tbl_housekeepingrecord` (
  `hkeeper_id` int(11) NOT NULL AUTO_INCREMENT,
  `assignby` varchar(100) NOT NULL DEFAULT '1',
  `employee_id` text NOT NULL,
  `roomno` int(11) NOT NULL,
  `date_start` datetime DEFAULT NULL,
  `date_end` datetime DEFAULT NULL,
  `createDate` datetime NOT NULL,
  `all_checklist` text DEFAULT NULL,
  `all_productlist` varchar(100) DEFAULT NULL,
  `allproductqty` varchar(100) DEFAULT NULL,
  `status` int(3) NOT NULL COMMENT '0=pending,1=completed,2=under process',
  PRIMARY KEY (`hkeeper_id`)
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8;

/*Data for the table `tbl_housekeepingrecord` */

insert into `tbl_housekeepingrecord` values (1,'1','EIOJG86X',1,'2022-01-21 23:17:31','2022-01-21 23:32:31','2022-01-21 23:15:16','1,2,3','1','2',1),(2,'1','EIOJG86X',2,'2022-01-21 23:18:29','2022-01-21 23:33:29','2022-01-21 23:15:17','1,2,3','1','2',1),(3,'1','EIOJG86X',3,'2022-01-24 00:18:58','2022-01-24 00:33:58','2022-01-21 23:15:18','1,2,3','','',1),(4,'1','EIOJG86X',48,'2022-01-24 00:19:23','2022-01-24 00:34:23','2022-01-21 23:15:19','2','','',1),(5,'1','EIOJG86X',1,'','','2022-04-07 21:43:41','','','',2),(6,'1','EIOJG86X',2,'','','2022-04-07 21:43:42','','','',2);

/*Table structure for table `tbl_itemaccepted` */

drop table if exists `tbl_itemaccepted`;

CREATE TABLE `tbl_itemaccepted` (
  `acid` int(11) NOT NULL AUTO_INCREMENT,
  `orderid` int(11) NOT NULL,
  `menuid` int(11) NOT NULL,
  `varient` int(11) NOT NULL,
  `accepttime` datetime NOT NULL DEFAULT '1970-01-01 01:01:01',
  PRIMARY KEY (`acid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

/*Data for the table `tbl_itemaccepted` */

/*Table structure for table `tbl_kitchen` */

drop table if exists `tbl_kitchen`;

CREATE TABLE `tbl_kitchen` (
  `kitchenid` int(11) NOT NULL AUTO_INCREMENT,
  `kitchen_name` varchar(100) NOT NULL,
  `ip` varchar(255) DEFAULT NULL,
  `port` varchar(10) DEFAULT NULL,
  `status` int(11) NOT NULL DEFAULT 0,
  PRIMARY KEY (`kitchenid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

/*Data for the table `tbl_kitchen` */

/*Table structure for table `tbl_kitchen_order` */

drop table if exists `tbl_kitchen_order`;

CREATE TABLE `tbl_kitchen_order` (
  `ktid` int(11) NOT NULL AUTO_INCREMENT,
  `kitchenid` int(11) NOT NULL,
  `orderid` int(11) NOT NULL,
  `itemid` int(11) NOT NULL,
  `varient` int(11) DEFAULT NULL,
  `addonsuid` int(11) DEFAULT NULL,
  PRIMARY KEY (`ktid`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8;

/*Data for the table `tbl_kitchen_order` */

insert into `tbl_kitchen_order` values (1,0,1,6,12,(null)),(2,0,2,6,10,(null));

/*Table structure for table `tbl_laundry` */

drop table if exists `tbl_laundry`;

CREATE TABLE `tbl_laundry` (
  `laundry_id` int(11) NOT NULL AUTO_INCREMENT,
  `invoice_no` text DEFAULT NULL,
  `product_id` varchar(100) NOT NULL,
  `type` text DEFAULT NULL,
  `checklist` text DEFAULT NULL,
  `operate_by` text DEFAULT NULL,
  `quantity` varchar(100) DEFAULT '0',
  `item_cost` varchar(100) DEFAULT NULL,
  `total_cost` decimal(10,0) NOT NULL DEFAULT 0,
  `rec_date` datetime DEFAULT NULL,
  `document` text DEFAULT NULL,
  `comment` text DEFAULT NULL,
  `status` varchar(3) DEFAULT '0' COMMENT '1=paid,0=unpaid',
  PRIMARY KEY (`laundry_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

/*Data for the table `tbl_laundry` */

/*Table structure for table `tbl_laundry_payment` */

drop table if exists `tbl_laundry_payment`;

CREATE TABLE `tbl_laundry_payment` (
  `landry_id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(100) NOT NULL,
  `total_amount` decimal(10,2) DEFAULT NULL,
  `paid_amount` decimal(10,2) DEFAULT NULL,
  `due_amount` decimal(10,2) DEFAULT NULL,
  PRIMARY KEY (`landry_id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8;

/*Data for the table `tbl_laundry_payment` */

insert into `tbl_laundry_payment` values (1,'Laundry','0.00','0.00','0.00');

/*Table structure for table `tbl_menutype` */

drop table if exists `tbl_menutype`;

CREATE TABLE `tbl_menutype` (
  `menutypeid` int(11) NOT NULL AUTO_INCREMENT,
  `menutype` varchar(120) NOT NULL,
  `menu_icon` varchar(150) DEFAULT NULL,
  `status` int(11) NOT NULL DEFAULT 1,
  PRIMARY KEY (`menutypeid`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=latin1;

/*Data for the table `tbl_menutype` */

insert into `tbl_menutype` values (1,'Launch','',1),(2,'Party','',1),(3,'Coffee','',1),(4,'Breakfast','',1),(5,'Dinner','',1);

/*Table structure for table `tbl_module_purchasekey` */

drop table if exists `tbl_module_purchasekey`;

CREATE TABLE `tbl_module_purchasekey` (
  `mpid` int(11) NOT NULL AUTO_INCREMENT,
  `module` varchar(25) DEFAULT NULL,
  `purchasekey` varchar(55) DEFAULT NULL,
  `downloaddate` datetime NOT NULL DEFAULT '1970-01-01 01:01:01',
  `updatedate` datetime NOT NULL DEFAULT '1970-01-01 01:01:01',
  PRIMARY KEY (`mpid`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8;

/*Data for the table `tbl_module_purchasekey` */

insert into `tbl_module_purchasekey` values (1,'house_keeping','BDT-0CD7D69-6F-96F-9ED963C2B9746','2022-01-19 15:00:52','2022-01-19 15:00:52'),(2,'ordermanage','BDT-5F4-7B0A786-EC24-281C6137BA8','2022-01-20 19:40:22','2022-01-20 19:40:22');

/*Table structure for table `tbl_openingbalance` */

drop table if exists `tbl_openingbalance`;

CREATE TABLE `tbl_openingbalance` (
  `opbalance_id` int(11) NOT NULL AUTO_INCREMENT,
  `fiyear_id` int(11) NOT NULL,
  `headcode` text DEFAULT NULL,
  `opening_balance` decimal(10,2) DEFAULT NULL,
  `current_balance` decimal(10,2) DEFAULT NULL,
  `remark` text DEFAULT NULL,
  PRIMARY KEY (`opbalance_id`),
  KEY `fiyear_id` (`fiyear_id`)
) ENGINE=InnoDB AUTO_INCREMENT=24 DEFAULT CHARSET=utf8;

/*Data for the table `tbl_openingbalance` */

insert into `tbl_openingbalance` values (1,1,'1020101','0.00','109900.00','Auto inserted while transaction'),(2,1,'30301','0.00','-104000.00','Auto inserted while transaction'),(3,1,'102030101','0.00','0.00','Auto inserted while transaction'),(4,1,'1010410','0.00','0.00','Auto inserted while transaction approved'),(5,1,'30303','0.00','-5900.00','Auto inserted while transaction'),(6,1,'5020303','0.00','0.00','Auto inserted while transaction'),(7,1,'1020204','0.00','0.00','Auto inserted while transaction'),(8,1,'30304','0.00','0.00','Auto inserted while transaction'),(9,2,'10107','0.00','25000.00','Auto inserted while transaction'),(10,2,'502020501','0.00','-25000.00','Auto inserted while transaction'),(11,2,'102010304','0.00','24000.00','Auto inserted while transaction'),(12,2,'30301','0.00','-28000.00','Auto inserted while transaction'),(13,2,'102030101','0.00','0.00','Auto inserted while transaction'),(14,2,'102010201','0.00','25600.00','Auto inserted while transaction'),(15,2,'30304','0.00','0.00','Auto inserted while transaction'),(16,2,'1020204','0.00','21600.00','Auto inserted while transaction'),(17,2,'5020303','0.00','-21600.00','Auto inserted while transaction'),(18,3,'1020101','0.00','5000.00','Auto inserted while transaction'),(19,3,'30301','0.00','-41000.00','Auto inserted while transaction'),(20,3,'102030101','0.00','0.00','Auto inserted while transaction'),(21,3,'30304','0.00','0.00','Auto inserted while transaction'),(22,3,'1020204','0.00','7200.00','Auto inserted while transaction'),(23,3,'5020303','0.00','-7200.00','Auto inserted while transaction');

/*Table structure for table `tbl_orderprepare` */

drop table if exists `tbl_orderprepare`;

CREATE TABLE `tbl_orderprepare` (
  `opid` int(11) NOT NULL AUTO_INCREMENT,
  `orderid` int(11) NOT NULL,
  `menuid` int(11) NOT NULL,
  `varient` int(11) NOT NULL,
  `preparetime` datetime NOT NULL DEFAULT '1970-01-01 01:01:01',
  PRIMARY KEY (`opid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

/*Data for the table `tbl_orderprepare` */

/*Table structure for table `tbl_otherguest` */

drop table if exists `tbl_otherguest`;

CREATE TABLE `tbl_otherguest` (
  `otherguest_id` int(11) NOT NULL AUTO_INCREMENT,
  `bookedid` text DEFAULT NULL,
  `customerid` int(11) DEFAULT NULL,
  `guestname` text DEFAULT NULL,
  `gender` text DEFAULT NULL,
  `mobile` text DEFAULT NULL,
  `email` text DEFAULT NULL,
  `photo_id_type` text DEFAULT NULL,
  `photo_id` text DEFAULT NULL,
  `front_image` varchar(100) DEFAULT NULL,
  `back_image` varchar(100) DEFAULT NULL,
  `occupant_image` varchar(100) DEFAULT NULL,
  PRIMARY KEY (`otherguest_id`),
  KEY `customerid` (`customerid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

/*Data for the table `tbl_otherguest` */

/*Table structure for table `tbl_posetting` */

drop table if exists `tbl_posetting`;

CREATE TABLE `tbl_posetting` (
  `possettingid` int(11) NOT NULL AUTO_INCREMENT,
  `waiter` int(11) NOT NULL DEFAULT 0 COMMENT '1=show,0=hide',
  `tableid` int(11) NOT NULL DEFAULT 0 COMMENT '1=show,0=hide',
  `cooktime` int(11) NOT NULL DEFAULT 0 COMMENT '1=enable,0=disable',
  `productionsetting` tinyint(4) NOT NULL DEFAULT 0 COMMENT '0=manual,1=auto',
  `tablemaping` int(11) NOT NULL DEFAULT 0 COMMENT '1=enable,0=disable',
  `soundenable` int(11) DEFAULT NULL COMMENT '1=enable,0=disable',
  PRIMARY KEY (`possettingid`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8;

/*Data for the table `tbl_posetting` */

insert into `tbl_posetting` values (1,0,0,1,0,0,1);

/*Table structure for table `tbl_postedbills` */

drop table if exists `tbl_postedbills`;

CREATE TABLE `tbl_postedbills` (
  `bill_id` int(11) NOT NULL AUTO_INCREMENT,
  `bookedid` int(11) NOT NULL,
  `taskname` text DEFAULT NULL,
  `rate` text DEFAULT NULL,
  `scharge` varchar(100) DEFAULT NULL,
  `complementary` decimal(10,2) DEFAULT 0.00,
  `credit` decimal(8,2) DEFAULT NULL,
  `additional_charges` decimal(10,2) DEFAULT 0.00,
  `extrabpc` decimal(10,2) DEFAULT 0.00,
  `ex_discount` decimal(10,2) DEFAULT 0.00,
  `swimming_pool` decimal(10,2) DEFAULT 0.00,
  `restaurant` decimal(10,2) NOT NULL DEFAULT 0.00,
  `special_discount` decimal(10,2) DEFAULT 0.00,
  `checkoutdate` datetime DEFAULT NULL,
  `days` int(11) DEFAULT NULL,
  `amount` decimal(11,0) DEFAULT NULL,
  `charge` decimal(10,2) DEFAULT NULL,
  `remarks` text DEFAULT NULL,
  PRIMARY KEY (`bill_id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8;

/*Data for the table `tbl_postedbills` */

insert into `tbl_postedbills` values (1,15,'S/C,VAT,Tourism','10.00,5.00,5.00','0','0.00','0.00','0.00','0.00','0.00','0.00','0.00','0.00','2022-04-06 11:34:10',(null),'','',''),(2,14,'S/C,VAT,Tourism','10.00,5.00,5.00','0','0.00','0.00','0.00','0.00','0.00','0.00','0.00','0.00','2022-04-06 11:35:59',(null),'','',''),(3,17,'S/C,VAT,Tourism','10.00,5.00,5.00','0','0.00','0.00','0.00','0.00','0.00','0.00','0.00','0.00','2024-03-21 15:01:50',(null),'','','');

/*Table structure for table `tbl_quickordersetting` */

drop table if exists `tbl_quickordersetting`;

CREATE TABLE `tbl_quickordersetting` (
  `quickordid` int(11) NOT NULL AUTO_INCREMENT,
  `waiter` int(11) NOT NULL DEFAULT 1 COMMENT '1=show,0=hide',
  `tableid` int(11) NOT NULL DEFAULT 1 COMMENT '1=show,0=hide',
  `cooktime` int(11) NOT NULL DEFAULT 1 COMMENT '1=show,0=hide',
  `soundenable` int(11) NOT NULL DEFAULT 1 COMMENT '1=enable,0=disable',
  `tablemaping` int(11) NOT NULL DEFAULT 1 COMMENT '1=enable,0=disable',
  PRIMARY KEY (`quickordid`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8;

/*Data for the table `tbl_quickordersetting` */

insert into `tbl_quickordersetting` values (1,0,0,1,1,0);

/*Table structure for table `tbl_reuseableproduct` */

drop table if exists `tbl_reuseableproduct`;

CREATE TABLE `tbl_reuseableproduct` (
  `reuse_id` int(11) NOT NULL AUTO_INCREMENT,
  `product_id` int(11) DEFAULT NULL,
  `in_use` int(11) DEFAULT 0,
  `in_laundry` int(11) DEFAULT 0,
  `ready` int(11) DEFAULT 0,
  PRIMARY KEY (`reuse_id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8;

/*Data for the table `tbl_reuseableproduct` */

insert into `tbl_reuseableproduct` values (1,1,0,0,0);

/*Table structure for table `tbl_room_offer` */

drop table if exists `tbl_room_offer`;

CREATE TABLE `tbl_room_offer` (
  `offerid` int(11) NOT NULL AUTO_INCREMENT,
  `roomid` int(11) NOT NULL,
  `offer` int(11) NOT NULL,
  `offertitle` varchar(255) DEFAULT NULL,
  `offertext` text DEFAULT NULL,
  `offer_date` date NOT NULL,
  PRIMARY KEY (`offerid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

/*Data for the table `tbl_room_offer` */

/*Table structure for table `tbl_roomnofloorassign` */

drop table if exists `tbl_roomnofloorassign`;

CREATE TABLE `tbl_roomnofloorassign` (
  `roomassignid` int(11) NOT NULL AUTO_INCREMENT,
  `roomid` int(11) NOT NULL,
  `floorid` int(11) NOT NULL,
  `roomno` int(11) NOT NULL,
  `status` int(3) DEFAULT 1 COMMENT '1=ready,2=booked,3=assigned to clean,4=booked and assigned to clean, 5=under maintenance,6=dirty,7=blocked,8=do not reserve',
  PRIMARY KEY (`roomassignid`)
) ENGINE=InnoDB AUTO_INCREMENT=137 DEFAULT CHARSET=utf8;

/*Data for the table `tbl_roomnofloorassign` */

insert into `tbl_roomnofloorassign` values (76,9,1,1,1),(77,9,1,2,1),(78,9,1,3,1),(79,9,1,4,1),(80,9,1,5,1),(81,9,1,10,1),(82,9,1,14,1),(83,9,1,16,1),(84,9,1,17,1),(85,9,2,25,1),(86,9,2,26,1),(87,9,2,27,1),(88,9,2,29,1),(89,9,2,30,1),(90,9,2,31,1),(91,9,2,33,1),(92,9,2,34,1),(93,9,3,41,1),(94,9,3,47,1),(95,9,3,48,1),(96,9,4,40,1),(97,9,4,61,1),(105,11,1,7,1),(106,11,1,11,1),(107,11,1,13,1),(108,11,1,15,1),(109,11,1,19,1),(110,11,2,24,1),(111,11,3,38,1),(112,11,4,37,1),(123,10,1,6,1),(124,10,1,9,1),(125,10,1,18,1),(126,10,1,20,1),(127,10,2,21,1),(128,10,2,22,1),(129,10,2,23,1),(130,10,3,36,1),(131,10,3,37,1),(132,10,3,39,1),(133,10,3,40,1),(134,10,3,42,1),(135,10,3,44,1),(136,10,4,65,1);

/*Table structure for table `tbl_shippingaddress` */

drop table if exists `tbl_shippingaddress`;

CREATE TABLE `tbl_shippingaddress` (
  `shipaddressid` int(11) NOT NULL AUTO_INCREMENT,
  `orderid` int(11) NOT NULL,
  `firstname` varchar(100) DEFAULT NULL,
  `lastname` varchar(100) DEFAULT NULL,
  `companyname` varchar(100) DEFAULT NULL,
  `email` varchar(150) DEFAULT NULL,
  `phone` varchar(50) DEFAULT NULL,
  `city` varchar(70) DEFAULT NULL,
  `district` varchar(255) DEFAULT NULL,
  `country` varchar(150) DEFAULT NULL,
  `zip` varchar(50) DEFAULT NULL,
  `address` text DEFAULT NULL,
  `address2` text DEFAULT NULL,
  `DateInserted` datetime NOT NULL DEFAULT current_timestamp(),
  PRIMARY KEY (`shipaddressid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

/*Data for the table `tbl_shippingaddress` */

/*Table structure for table `tbl_slider` */

drop table if exists `tbl_slider`;

CREATE TABLE `tbl_slider` (
  `slid` int(11) NOT NULL AUTO_INCREMENT,
  `Sltypeid` int(11) NOT NULL,
  `title` varchar(255) DEFAULT NULL,
  `subtitle` varchar(255) DEFAULT NULL,
  `image` varchar(255) NOT NULL,
  `link1` text DEFAULT NULL,
  `link2` text DEFAULT NULL,
  `link3` text DEFAULT NULL,
  `slink` text DEFAULT NULL,
  `status` int(11) NOT NULL DEFAULT 1,
  `delation_status` int(11) NOT NULL DEFAULT 0,
  `width` int(11) NOT NULL DEFAULT 0,
  `height` int(11) NOT NULL DEFAULT 0,
  PRIMARY KEY (`slid`)
) ENGINE=InnoDB AUTO_INCREMENT=91 DEFAULT CHARSET=utf8;

/*Data for the table `tbl_slider` */

insert into `tbl_slider` values (2,1,'Enjoy Your Stay in CoxsToday','It is a long established fact that a reader will be distracted by the readable content of a page when looking at its layout.','','','','','#',1,0,1920,1000),(3,1,'Enjoy Your Vacation','It is a long established fact that a reader will be distracted by the readable content of a page when looking at its layout.','','','','','#',1,0,1920,1000),(4,2,'home About','test','','','','','#',1,0,445,408),(6,3,'Enjoy the eye catching and wonderful sunset comfortably from your room window.','','','','','','#',1,0,375,211),(7,3,'Lorem Ipsum  since the 1500  Usd offer','','','','','','#',1,0,375,211),(8,3,'Credit card that\'s right for you. 200 usd','','','','','','#',1,0,375,211),(9,3,'In some form, by injected humor','','','','','','#',1,0,375,211),(10,3,'Many desktop publishing 50 USD','','','','','','#',1,0,375,211),(11,3,'The point of using 400 USD','','','','','','#',1,0,660,372),(12,4,'It uses a dictionary of over 200 Latin words','Scenic Travel','','','','','#',1,0,280,498),(13,4,'Many desktop publishing packages and web page','Southern Travel','','','','','#',1,0,280,498),(14,4,'Contrary to popular belief, Lorem Ipsum is','Scenic Travel','','','','','#',1,0,280,498),(15,4,'Various versions have evolved over the years','Scenic Travel','','','','','#',1,0,280,498),(16,5,'Lauren Cox','Creative Director a','','https://www.facebook.com','https://www.facebook.com','https://www.facebook.com','It is a long established fact that a reader will be distracted by the readable content of a page when looking at its layout.',1,0,400,490),(17,5,'Jessie Barnett','UI/UX Designer','','https://www.facebook.com','https://www.facebook.com','https://www.facebook.com','Contrary to popular belief, Lorem Ipsum is not simply random text. It has roots in a piece of classical Latin literature from',1,0,400,490),(18,5,'Terry Fletcher','Web Developer','','https://www.facebook.com','https://www.facebook.com','https://www.facebook.com','Contrary to popular belief, Lorem Ipsum is not simply random text. It has roots in a piece of classical Latin literature from',1,0,400,490),(19,5,'Terry Fletcher','Web Developer','','https://www.facebook.com','https://www.facebook.com','https://www.facebook.com','Contrary to popular belief, Lorem Ipsum is not simply random text. It has roots in a piece of classical Latin literature from',1,0,400,490),(20,6,'About tio','','','','','','#',1,0,640,790),(21,6,'about','','','','','','#',1,0,470,424),(22,6,'about','','','','','','#',1,0,470,318),(23,6,'about','','','','','','#',1,0,314,284),(24,6,'about','','','','','','#',1,0,454,284),(25,6,'about','','','','','','#',1,0,810,460),(26,8,'Twin Room','','','','','','#',1,0,700,700),(27,8,'Single Room','','','','','','#',1,0,700,700),(29,8,'Twin Room','','','','','','#',1,0,700,700),(30,8,'Deluxe Double Room','','','','','','#',1,0,700,700),(32,8,'Single Room','','','','','','#',1,0,700,700),(33,8,'Twin Room','','','','','','#',1,0,700,700),(34,8,'Single Room','','','','','','#',1,0,700,700),(35,8,'Twin Room','','','','','','#',1,0,700,700),(38,4,'Find the credit card that\'s right for you.','Scenic Travel','','','','','#',1,0,280,498),(39,1,'Hotel','Baraar ','','','','','',1,0,1920,1000),(41,9,'Alphabet logo','','','','','','#',1,0,104,35),(42,9,'Amazon','','','','','','#',1,0,104,35),(43,9,'Fitbit','','','','','','#',1,0,104,35),(44,9,'Google','','','','','','#',1,0,104,35),(45,9,'Paypal','','','','','','#',1,0,104,35),(46,9,'Samsung','','','','','','#',1,0,104,35),(47,9,'Shopify','','','','','','#',1,0,104,35),(48,9,'Slack','','','','','','#',1,0,104,35),(49,9,'Stripe','','','','','','',1,0,104,35),(50,10,'It\'s almost yours','We just need a few more details to confirm your booking at The Radisson Hotel.','','','','','#',1,0,50,50),(51,10,'No surprises','Pay the price you see ? no booking fees!','','','','','#',1,0,50,50),(52,10,'Your booking is secure','Your details are protected by a secure connection.','','','','','#',1,0,50,50),(53,11,'Bed','','','','','','#',1,0,22,22),(54,11,'Free WiFi','','','','','','#',1,0,22,25),(55,11,'Balcony, City / Landmark / Garden view','','','','','','#',1,0,22,25),(56,11,'Flat-screen TV','','','','','','#',1,0,22,25),(57,11,'Facilities for guests with disabilities','','','','','','#',1,0,22,25),(58,12,'Save up to 10%','','','','','','#',1,0,40,40),(59,12,'Best Rate Guarantee','','','','','','#',1,0,40,40),(60,12,'Free Wi-Fi','','','','','','#',1,0,40,40),(61,12,'Enjoy Free Nights','','','','','','#',1,0,40,40),(62,3,'Printer simply dummy 500 USD','','','','','','#',1,0,375,211),(63,3,'Lorem Ipsum is simply dummy 100 usd','','','','','','#',1,0,375,211),(65,8,'Twin Room','','','','','','',1,0,700,700),(68,13,'50000','Monthly Active Users ','','1000','','','',1,0,0,0),(69,13,'130','Team Members','','10','','','',1,0,0,0),(70,13,'1235','User Projects Published','','10','','','',1,0,0,0),(71,13,'4590','Server Uptime','','10','','','',1,0,0,0),(72,14,'Address','Ahmadu Bello University, Kongo Campus, Zaria','','','','','',1,0,0,0),(73,14,'Phone & WhatsApp Number','08068107088','','','','','',1,0,0,0),(74,14,'Email','abuhotel@abu.edu.ng','','','','','',1,0,0,0),(75,14,'Mobile','08068107088','','','','','',1,0,0,0),(81,15,'Instragram','','','https://www.instagram.com/','','','',1,0,0,0),(82,15,'Twitter','','','https://twitter.com/','','','',1,0,0,0),(83,15,'Dribble','','','https://dribbble.com/','','','',1,0,0,0),(84,15,'Facebook','','','https://www.facebook.com/','','','',1,0,0,0),(85,1,'','','','','','','',1,0,500,1000),(86,8,'Double Deluxe Romm','','','','','','',1,0,700,700),(87,8,'Double Deluxe Romm','','','','','','',1,0,700,700),(88,8,'Double Deluxe Romm','','','','','','',1,0,700,700),(90,8,'VIP Suite','','','','','','',1,0,800,1000);

/*Table structure for table `tbl_slider_type` */

drop table if exists `tbl_slider_type`;

CREATE TABLE `tbl_slider_type` (
  `stype_id` int(11) NOT NULL AUTO_INCREMENT,
  `STypeName` varchar(255) DEFAULT NULL,
  `delation_status` int(11) NOT NULL DEFAULT 0,
  PRIMARY KEY (`stype_id`)
) ENGINE=InnoDB AUTO_INCREMENT=13 DEFAULT CHARSET=utf8;

/*Data for the table `tbl_slider_type` */

insert into `tbl_slider_type` values (1,'Home Slider',0),(2,'Home Middle',0),(3,'Top Offers',0),(4,'Explore Destination',0),(5,'About Team',0),(6,'About Top',0),(7,'About Brand',0),(8,'gallery',0),(9,'Company',0),(10,'Booking Conditions',0),(11,'Facility',0),(12,'Home below slider',0);

/*Table structure for table `tbl_soundsetting` */

drop table if exists `tbl_soundsetting`;

CREATE TABLE `tbl_soundsetting` (
  `soundid` int(11) NOT NULL AUTO_INCREMENT,
  `nofitysound` text DEFAULT NULL,
  `addtocartsound` text DEFAULT NULL,
  PRIMARY KEY (`soundid`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8;

/*Data for the table `tbl_soundsetting` */

insert into `tbl_soundsetting` values (1,'assets/2021-03-21/b1.mp3','h');

/*Table structure for table `tbl_state` */

drop table if exists `tbl_state`;

CREATE TABLE `tbl_state` (
  `stateid` int(11) NOT NULL AUTO_INCREMENT,
  `countryid` int(11) NOT NULL,
  `statename` varchar(100) NOT NULL,
  `status` int(11) NOT NULL DEFAULT 1,
  PRIMARY KEY (`stateid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

/*Data for the table `tbl_state` */

/*Table structure for table `tbl_tablefloor` */

drop table if exists `tbl_tablefloor`;

CREATE TABLE `tbl_tablefloor` (
  `tbfloorid` int(11) NOT NULL AUTO_INCREMENT,
  `floorName` varchar(100) NOT NULL,
  PRIMARY KEY (`tbfloorid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

/*Data for the table `tbl_tablefloor` */

/*Table structure for table `tbl_tax` */

drop table if exists `tbl_tax`;

CREATE TABLE `tbl_tax` (
  `taxsettings` int(11) NOT NULL AUTO_INCREMENT,
  `tax` int(11) NOT NULL DEFAULT 0 COMMENT '1=show,0=hide',
  PRIMARY KEY (`taxsettings`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8;

/*Data for the table `tbl_tax` */

insert into `tbl_tax` values (1,0);

/*Table structure for table `tbl_taxmgt` */

drop table if exists `tbl_taxmgt`;

CREATE TABLE `tbl_taxmgt` (
  `tax_id` int(11) NOT NULL AUTO_INCREMENT,
  `taxname` text DEFAULT NULL,
  `rate` decimal(8,2) DEFAULT 2.00,
  `reg_no` text DEFAULT NULL,
  `isactive` int(3) DEFAULT 1,
  PRIMARY KEY (`tax_id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8;

/*Data for the table `tbl_taxmgt` */

insert into `tbl_taxmgt` values (1,'S/C','10.00','001',1),(2,'VAT','5.00','002',1),(3,'Tourism','5.00','003',1);

/*Table structure for table `tbl_thirdparty_customer` */

drop table if exists `tbl_thirdparty_customer`;

CREATE TABLE `tbl_thirdparty_customer` (
  `companyId` int(11) NOT NULL AUTO_INCREMENT,
  `company_name` varchar(150) NOT NULL,
  `address` text DEFAULT NULL,
  `commision` decimal(10,2) DEFAULT 0.00,
  PRIMARY KEY (`companyId`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

/*Data for the table `tbl_thirdparty_customer` */

/*Table structure for table `tbl_updateitems` */

drop table if exists `tbl_updateitems`;

CREATE TABLE `tbl_updateitems` (
  `updateid` int(11) NOT NULL AUTO_INCREMENT,
  `ordid` int(11) NOT NULL,
  `menuid` int(11) NOT NULL,
  `qty` decimal(10,3) NOT NULL DEFAULT 0.000,
  `adonsqty` varchar(50) DEFAULT NULL,
  `addonsid` varchar(50) DEFAULT NULL,
  `varientid` int(11) NOT NULL,
  `addonsuid` int(11) DEFAULT NULL,
  `isupdate` varchar(5) DEFAULT NULL,
  `insertdate` date DEFAULT '0000-00-00',
  PRIMARY KEY (`updateid`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

/*Data for the table `tbl_updateitems` */

/*Table structure for table `tbl_version_checker` */

drop table if exists `tbl_version_checker`;

CREATE TABLE `tbl_version_checker` (
  `vid` int(11) NOT NULL AUTO_INCREMENT,
  `version` varchar(10) DEFAULT NULL,
  `disable` int(11) NOT NULL DEFAULT 0,
  PRIMARY KEY (`vid`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=latin1;

/*Data for the table `tbl_version_checker` */

insert into `tbl_version_checker` values (1,'0',0);

/*Table structure for table `tbl_wakeup_call` */

drop table if exists `tbl_wakeup_call`;

CREATE TABLE `tbl_wakeup_call` (
  `wapupid` int(11) NOT NULL AUTO_INCREMENT,
  `custid` int(11) NOT NULL,
  `wakeupcall_time` varchar(100) NOT NULL,
  `insert_time` timestamp NOT NULL DEFAULT current_timestamp(),
  `remarks` text DEFAULT NULL,
  PRIMARY KEY (`wapupid`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4;

/*Data for the table `tbl_wakeup_call` */

insert into `tbl_wakeup_call` values (1,316,'2022-01-21 00:13','2022-01-21 00:11:30','Calling you');

/*Table structure for table `tbl_widget` */

drop table if exists `tbl_widget`;

CREATE TABLE `tbl_widget` (
  `widgetid` int(11) NOT NULL AUTO_INCREMENT,
  `widget_name` varchar(100) NOT NULL,
  `widget_title` varchar(150) DEFAULT NULL,
  `widget_desc` text DEFAULT NULL,
  PRIMARY KEY (`widgetid`)
) ENGINE=InnoDB AUTO_INCREMENT=38 DEFAULT CHARSET=utf8;

/*Data for the table `tbl_widget` */

insert into `tbl_widget` values (1,'BEYOND IMAGINABLE ','Enjoy Your Vacation With Us','It is a long established fact that a reader will be distracted by the readable content of a page when looking at its layout.'),(2,'Booking Conditions','Booking Conditions','<h6 class=\"font-weight-bold\">Cancellation Policy</h6>\r\n<p>You\'ll be charged the total price if you cancel your booking.</p>\r\n<h6 class=\"font-weight-bold\">Prepayment policy</h6>\r\n<p>No prepayment is needed.</p>\r\n<h6 class=\"font-weight-bold\">Meal plan</h6>\r\n<p class=\"mb-0\">Continental breakfast costs BDT 502 per person per night.</p>\r\n<p class=\"mb-0\">Lunch costs BDT 1,180 per person per night.</p>\r\n<p>Dinner costs BDT 1,180 per person per night.</p>'),(3,'','Comfort are Perfectly Combined Here','This charming private 19th-century mansion, which originally belonged to the family, has been completely renovated with care &amp; passion while respecting the spirit of place.\n\nDivo Hotel surrounded herself by a team of French artisans to create a sophisticated place in a refined.'),(4,'Top Offer','This Week\'s Top Offers','A resort is a self-contained destination that can provide for all of your travel needs in one location.'),(5,'Destination','Explore Destinations & Experiences','Our guests always travel the world in style. Mention @Kempinski on Instagram for a chance to be featured!'),(6,'','Sign or Join','This charming private 19th century mansion, which originally '),(7,'','Save up to 10%','Members get access to an exclusive discounts on Radissonblu.com. Not a member yet? Hurry Up!'),(8,'','Best Rate Guarantee','If you find a lower online rate, we will match it and give you an additional 25% off on your stay.'),(9,'','Free Wi-Fi','If you find a lower online rate, we will match it and give you an additional 25% off on your stay.'),(10,'','Enjoy Free Nights','If you find a lower online rate, we will match it and give you an additional 25% off on your stay.'),(11,'ourteam','Our Team','Meet the people who make awesome stuffs\n'),(12,'small team','Small team. Big hearts.','Our focus is always on finding the best people to work with. Our bar is high, And you look ready to take on the challenge.'),(13,'about Middle','Trusted by thousands of companies','Our guests always travel the world in style. Mention @abuhotel on Instagram for a chance to be featured!'),(14,'call number','CALL ANYTIME','0741236589'),(15,'contact Email','EMAIL US','<div class=\"wrapper\"><footer class=\"dark\">\r\n<div class=\"subfooter\">\r\n<div class=\"container\">\r\n<div class=\"row\">\r\n<div class=\"col-md-6\">\r\n<div class=\"social-media\">reservation@xainhotel.com? ?</div>\r\n</div>\r\n</div>\r\n</div>\r\n</div>\r\n</footer></div>'),(16,'address','Address','<p>Plot-7, Road-02, Hotel Motel Zone, Francisco Road,?United States</p>\r\n<p>info@hotelthecoxtoday.com</p>'),(17,'phone','Phone & WhatsApp Number','0892 555 98 449'),(18,'Email','Email','<p>info@hotelthecoxtoday.com</p>'),(19,'let us','Let us hear from you directly!','Our guests always travel the world in style. Mention @Kempinski  on Instagram for a chance to be featured!'),(20,'Privacy','Privacy At a glance ','What is Lorem Ipsum Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum.\n\nContacting us: If you have any questions about this Privacy Policy, the practices of this site, or your dealings with this site, please contact us'),(21,'Terms','Terms & Conditions','Terms of Use\nOur Site may use \"cookies\" to enhance User experience. User\'s web browser places cookies on their hard drive for record-keeping purposes and sometimes to track information about them. User may choose to set their web browser to refuse cookies, or to alert you when cookies are being sent. If they do so, note that some parts of the Site may not function properly\n'),(22,'footer','footer left','<p>Plot-7, Road-02, Hotel Motel Zone, Francisco Road,?United States</p>\r\n<p>info@hotelthecoxtoday.com</p>'),(23,'Footer first','Pages','<ul class=\"footer-link list-unstyled menu mb-0\">\r\n<li class=\"mb-2\"><a class=\"link d-block font-weight-500\" href=\"hotel\">Home</a></li>\r\n<li class=\"mb-2\"><a class=\"link d-block font-weight-500\" href=\"about\">About</a></li>\r\n<li class=\"mb-2\"><a class=\"link d-block font-weight-500\" href=\"contact\">Contact Us</a></li>\r\n<li class=\"mb-2\"><a class=\"link d-block font-weight-500\" href=\"gallery\">Gallery</a></li>\r\n</ul>'),(24,'footer second','Social Links','<ul class=\"list-unstyled social-icon\">\r\n<li><a href=\"https://instragram.com/\" target=\"_blank\" rel=\"noopener noreferrer\"> <i class=\"fab fa-instagram icon-wrap\"></i> <span>Instagram </span> </a></li>\r\n<li><a href=\"https://twitter.com/\" target=\"_blank\" rel=\"noopener noreferrer\"> <i class=\"fab fa-twitter icon-wrap\"></i> <span>Twitter</span> </a></li>\r\n<li><a href=\"https://dribble.com/\" target=\"_blank\" rel=\"noopener noreferrer\"> <i class=\"fab fa-dribbble icon-wrap\"></i> <span>Dribbble</span> </a></li>\r\n<li><a href=\"https://facebook.com/\" target=\"_blank\" rel=\"noopener noreferrer\"> <i class=\"fab fa-facebook-f icon-wrap\"></i> <span>Facebook</span> </a></li>\r\n</ul>'),(25,'footer 3rd','About spacial','<ul class=\"footer-link list-unstyled menu mb-0\">\r\n<li class=\"mb-2\"><a class=\"link d-block font-weight-500\" href=\"#\">Home Pages</a></li>\r\n<li class=\"mb-2\"><a class=\"link d-block font-weight-500\" href=\"#\">Theme Features</a></li>\r\n<li class=\"mb-2\"><a class=\"link d-block font-weight-500\" href=\"#\">Services</a></li>\r\n<li class=\"mb-2\"><a class=\"link d-block font-weight-500\" href=\"#\">StoreFront</a></li>\r\n<li class=\"mb-2\"><a class=\"link d-block font-weight-500\" href=\"#\">Portfolio</a></li>\r\n</ul>'),(26,'widget four','Company Policy','<ul class=\"footer-link list-unstyled menu mb-0\">\r\n<li class=\"mb-2\"><a class=\"link d-block font-weight-500\" href=\"privacy\">Privacy</a></li>\r\n<li class=\"mb-2\"><a class=\"link d-block font-weight-500\" href=\"terms\">Terms & Conditions</a></li>\r\n</ul>'),(27,'Overview','','<div class=\"col-6 mb-3 col-lg-3 mb-lg-0\"><span class=\"numscroller display-4 text-primary d-block\" data-min=\"1\" data-max=\"52147\" data-delay=\"5\" data-increment=\"100\">52147</span> <span class=\"h6\">Monthly Active Users</span></div>\r\n<div class=\"col-6 mb-3 col-lg-3 mb-lg-0\"><span class=\"numscroller display-4 text-primary d-block\" data-min=\"1\" data-max=\"130\" data-delay=\"5\" data-increment=\"10\">130</span> <span class=\"h6\">Team Members</span></div>\r\n<div class=\"col-6 mb-3 col-lg-3 mb-lg-0\"><span class=\"numscroller display-4 text-primary d-block\" data-min=\"1\" data-max=\"1235\" data-delay=\"5\" data-increment=\"10\">1235</span> <span class=\"h6\">User Projects Published</span></div>\r\n<div class=\"col-6 mb-3 col-lg-3 mb-lg-0\"><span class=\"numscroller display-4 text-primary d-block\" data-min=\"1\" data-max=\"4591\" data-delay=\"5\" data-increment=\"10\">4591</span> <span class=\"h6\">Server Uptime</span></div>'),(28,'Social Icons','Lorem ipsum dolor sit amet, consectetur adipisicing elit. Recusandae asperiores.',''),(29,'Get updates & exclusive offers','Sign up to our newsletter to be the first to hear about','new openings, offers and more.'),(30,'','Free cancellation',''),(31,'','','www.facebook.com'),(32,'','','www.facebook.com'),(33,'','','www.facebook.com'),(34,'','','www.facebook.com'),(35,'','Cancellation Policy','You\'ll be charged the total price if you cancel your booking.'),(36,'','Prepayment policy','No prepayment is needed.'),(37,'','Meal plan','Continental breakfast costs N500 per person per night. Lunch costs N 1,180 per person per night. Dinner costs N1,180 per person per night.');

/*Table structure for table `timezone` */

drop table if exists `timezone`;

CREATE TABLE `timezone` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `convention` varchar(100) DEFAULT NULL,
  `zone` varchar(100) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=425 DEFAULT CHARSET=utf8mb4;

/*Data for the table `timezone` */

insert into `timezone` values (1,'AD','Europe/Andorra'),(2,'AE','Asia/Dubai'),(3,'AF','Asia/Kabul'),(4,'AG','America/Antigua'),(5,'AI','America/Anguilla'),(6,'AL','Europe/Tirane'),(7,'AM','Asia/Yerevan'),(8,'AO','Africa/Luanda'),(9,'AQ','Antarctica/McMurdo'),(10,'AQ','Antarctica/Casey'),(11,'AQ','Antarctica/Davis'),(12,'AQ','Antarctica/DumontDUrville'),(13,'AQ','Antarctica/Mawson'),(14,'AQ','Antarctica/Palmer'),(15,'AQ','Antarctica/Rothera'),(16,'AQ','Antarctica/Syowa'),(17,'AQ','Antarctica/Troll'),(18,'AQ','Antarctica/Vostok'),(19,'AR','America/Argentina/Buenos_Aires'),(20,'AR','America/Argentina/Cordoba'),(21,'AR','America/Argentina/Salta'),(22,'AR','America/Argentina/Jujuy'),(23,'AR','America/Argentina/Tucuman'),(24,'AR','America/Argentina/Catamarca'),(25,'AR','America/Argentina/La_Rioja'),(26,'AR','America/Argentina/San_Juan'),(27,'AR','America/Argentina/Mendoza'),(28,'AR','America/Argentina/San_Luis'),(29,'AR','America/Argentina/Rio_Gallegos'),(30,'AR','America/Argentina/Ushuaia'),(31,'AS','Pacific/Pago_Pago'),(32,'AT','Europe/Vienna'),(33,'AU','Australia/Lord_Howe'),(34,'AU','Antarctica/Macquarie'),(35,'AU','Australia/Hobart'),(36,'AU','Australia/Melbourne'),(37,'AU','Australia/Sydney'),(38,'AU','Australia/Broken_Hill'),(39,'AU','Australia/Brisbane'),(40,'AU','Australia/Lindeman'),(41,'AU','Australia/Adelaide'),(42,'AU','Australia/Darwin'),(43,'AU','Australia/Perth'),(44,'AU','Australia/Eucla'),(45,'AW','America/Aruba'),(46,'AX','Europe/Mariehamn'),(47,'AZ','Asia/Baku'),(48,'BA','Europe/Sarajevo'),(49,'BB','America/Barbados'),(50,'BD','Asia/Dhaka'),(51,'BE','Europe/Brussels'),(52,'BF','Africa/Ouagadougou'),(53,'BG','Europe/Sofia'),(54,'BH','Asia/Bahrain'),(55,'BI','Africa/Bujumbura'),(56,'BJ','Africa/Porto-Novo'),(57,'BL','America/St_Barthelemy'),(58,'BM','Atlantic/Bermuda'),(59,'BN','Asia/Brunei'),(60,'BO','America/La_Paz'),(61,'BQ','America/Kralendijk'),(62,'BR','America/Noronha'),(63,'BR','America/Belem'),(64,'BR','America/Fortaleza'),(65,'BR','America/Recife'),(66,'BR','America/Araguaina'),(67,'BR','America/Maceio'),(68,'BR','America/Bahia'),(69,'BR','America/Sao_Paulo'),(70,'BR','America/Campo_Grande'),(71,'BR','America/Cuiaba'),(72,'BR','America/Santarem'),(73,'BR','America/Porto_Velho'),(74,'BR','America/Boa_Vista'),(75,'BR','America/Manaus'),(76,'BR','America/Eirunepe'),(77,'BR','America/Rio_Branco'),(78,'BS','America/Nassau'),(79,'BT','Asia/Thimphu'),(80,'BW','Africa/Gaborone'),(81,'BY','Europe/Minsk'),(82,'BZ','America/Belize'),(83,'CA','America/St_Johns'),(84,'CA','America/Halifax'),(85,'CA','America/Glace_Bay'),(86,'CA','America/Moncton'),(87,'CA','America/Goose_Bay'),(88,'CA','America/Blanc-Sablon'),(89,'CA','America/Toronto'),(90,'CA','America/Nipigon'),(91,'CA','America/Thunder_Bay'),(92,'CA','America/Iqaluit'),(93,'CA','America/Pangnirtung'),(94,'CA','America/Atikokan'),(95,'CA','America/Winnipeg'),(96,'CA','America/Rainy_River'),(97,'CA','America/Resolute'),(98,'CA','America/Rankin_Inlet'),(99,'CA','America/Regina'),(100,'CA','America/Swift_Current'),(101,'CA','America/Edmonton'),(102,'CA','America/Cambridge_Bay'),(103,'CA','America/Yellowknife'),(104,'CA','America/Inuvik'),(105,'CA','America/Creston'),(106,'CA','America/Dawson_Creek'),(107,'CA','America/Fort_Nelson'),(108,'CA','America/Whitehorse'),(109,'CA','America/Dawson'),(110,'CA','America/Vancouver'),(111,'CC','Indian/Cocos'),(112,'CD','Africa/Kinshasa'),(113,'CD','Africa/Lubumbashi'),(114,'CF','Africa/Bangui'),(115,'CG','Africa/Brazzaville'),(116,'CH','Europe/Zurich'),(117,'CI','Africa/Abidjan'),(118,'CK','Pacific/Rarotonga'),(119,'CL','America/Santiago'),(120,'CL','America/Punta_Arenas'),(121,'CL','Pacific/Easter'),(122,'CM','Africa/Douala'),(123,'CN','Asia/Shanghai'),(124,'CN','Asia/Urumqi'),(125,'CO','America/Bogota'),(126,'CR','America/Costa_Rica'),(127,'CU','America/Havana'),(128,'CV','Atlantic/Cape_Verde'),(129,'CW','America/Curacao'),(130,'CX','Indian/Christmas'),(131,'CY','Asia/Nicosia'),(132,'CY','Asia/Famagusta'),(133,'CZ','Europe/Prague'),(134,'DE','Europe/Berlin'),(135,'DE','Europe/Busingen'),(136,'DJ','Africa/Djibouti'),(137,'DK','Europe/Copenhagen'),(138,'DM','America/Dominica'),(139,'DO','America/Santo_Domingo'),(140,'DZ','Africa/Algiers'),(141,'EC','America/Guayaquil'),(142,'EC','Pacific/Galapagos'),(143,'EE','Europe/Tallinn'),(144,'EG','Africa/Cairo'),(145,'EH','Africa/El_Aaiun'),(146,'ER','Africa/Asmara'),(147,'ES','Europe/Madrid'),(148,'ES','Africa/Ceuta'),(149,'ES','Atlantic/Canary'),(150,'ET','Africa/Addis_Ababa'),(151,'FI','Europe/Helsinki'),(152,'FJ','Pacific/Fiji'),(153,'FK','Atlantic/Stanley'),(154,'FM','Pacific/Chuuk'),(155,'FM','Pacific/Pohnpei'),(156,'FM','Pacific/Kosrae'),(157,'FO','Atlantic/Faroe'),(158,'FR','Europe/Paris'),(159,'GA','Africa/Libreville'),(160,'GB','Europe/London'),(161,'GD','America/Grenada'),(162,'GE','Asia/Tbilisi'),(163,'GF','America/Cayenne'),(164,'GG','Europe/Guernsey'),(165,'GH','Africa/Accra'),(166,'GI','Europe/Gibraltar'),(167,'GL','America/Nuuk'),(168,'GL','America/Danmarkshavn'),(169,'GL','America/Scoresbysund'),(170,'GL','America/Thule'),(171,'GM','Africa/Banjul'),(172,'GN','Africa/Conakry'),(173,'GP','America/Guadeloupe'),(174,'GQ','Africa/Malabo'),(175,'GR','Europe/Athens'),(176,'GS','Atlantic/South_Georgia'),(177,'GT','America/Guatemala'),(178,'GU','Pacific/Guam'),(179,'GW','Africa/Bissau'),(180,'GY','America/Guyana'),(181,'HK','Asia/Hong_Kong'),(182,'HN','America/Tegucigalpa'),(183,'HR','Europe/Zagreb'),(184,'HT','America/Port-au-Prince'),(185,'HU','Europe/Budapest'),(186,'ID','Asia/Jakarta'),(187,'ID','Asia/Pontianak'),(188,'ID','Asia/Makassar'),(189,'ID','Asia/Jayapura'),(190,'IE','Europe/Dublin'),(191,'IL','Asia/Jerusalem'),(192,'IM','Europe/Isle_of_Man'),(193,'IN','Asia/Kolkata'),(194,'IO','Indian/Chagos'),(195,'IQ','Asia/Baghdad'),(196,'IR','Asia/Tehran'),(197,'IS','Atlantic/Reykjavik'),(198,'IT','Europe/Rome'),(199,'JE','Europe/Jersey'),(200,'JM','America/Jamaica'),(201,'JO','Asia/Amman'),(202,'JP','Asia/Tokyo'),(203,'KE','Africa/Nairobi'),(204,'KG','Asia/Bishkek'),(205,'KH','Asia/Phnom_Penh'),(206,'KI','Pacific/Tarawa'),(207,'KI','Pacific/Kanton'),(208,'KI','Pacific/Kiritimati'),(209,'KM','Indian/Comoro'),(210,'KN','America/St_Kitts'),(211,'KP','Asia/Pyongyang'),(212,'KR','Asia/Seoul'),(213,'KW','Asia/Kuwait'),(214,'KY','America/Cayman'),(215,'KZ','Asia/Almaty'),(216,'KZ','Asia/Qyzylorda'),(217,'KZ','Asia/Qostanay'),(218,'KZ','Asia/Aqtobe'),(219,'KZ','Asia/Aqtau'),(220,'KZ','Asia/Atyrau'),(221,'KZ','Asia/Oral'),(222,'LA','Asia/Vientiane'),(223,'LB','Asia/Beirut'),(224,'LC','America/St_Lucia'),(225,'LI','Europe/Vaduz'),(226,'LK','Asia/Colombo'),(227,'LR','Africa/Monrovia'),(228,'LS','Africa/Maseru'),(229,'LT','Europe/Vilnius'),(230,'LU','Europe/Luxembourg'),(231,'LV','Europe/Riga'),(232,'LY','Africa/Tripoli'),(233,'MA','Africa/Casablanca'),(234,'MC','Europe/Monaco'),(235,'MD','Europe/Chisinau'),(236,'ME','Europe/Podgorica'),(237,'MF','America/Marigot'),(238,'MG','Indian/Antananarivo'),(239,'MH','Pacific/Majuro'),(240,'MH','Pacific/Kwajalein'),(241,'MK','Europe/Skopje'),(242,'ML','Africa/Bamako'),(243,'MM','Asia/Yangon'),(244,'MN','Asia/Ulaanbaatar'),(245,'MN','Asia/Hovd'),(246,'MN','Asia/Choibalsan'),(247,'MO','Asia/Macau'),(248,'MP','Pacific/Saipan'),(249,'MQ','America/Martinique'),(250,'MR','Africa/Nouakchott'),(251,'MS','America/Montserrat'),(252,'MT','Europe/Malta'),(253,'MU','Indian/Mauritius'),(254,'MV','Indian/Maldives'),(255,'MW','Africa/Blantyre'),(256,'MX','America/Mexico_City'),(257,'MX','America/Cancun'),(258,'MX','America/Merida'),(259,'MX','America/Monterrey'),(260,'MX','America/Matamoros'),(261,'MX','America/Mazatlan'),(262,'MX','America/Chihuahua'),(263,'MX','America/Ojinaga'),(264,'MX','America/Hermosillo'),(265,'MX','America/Tijuana'),(266,'MX','America/Bahia_Banderas'),(267,'MY','Asia/Kuala_Lumpur'),(268,'MY','Asia/Kuching'),(269,'MZ','Africa/Maputo'),(270,'NA','Africa/Windhoek'),(271,'NC','Pacific/Noumea'),(272,'NE','Africa/Niamey'),(273,'NF','Pacific/Norfolk'),(274,'NG','Africa/Lagos'),(275,'NI','America/Managua'),(276,'NL','Europe/Amsterdam'),(277,'NO','Europe/Oslo'),(278,'NP','Asia/Kathmandu'),(279,'NR','Pacific/Nauru'),(280,'NU','Pacific/Niue'),(281,'NZ','Pacific/Auckland'),(282,'NZ','Pacific/Chatham'),(283,'OM','Asia/Muscat'),(284,'PA','America/Panama'),(285,'PE','America/Lima'),(286,'PF','Pacific/Tahiti'),(287,'PF','Pacific/Marquesas'),(288,'PF','Pacific/Gambier'),(289,'PG','Pacific/Port_Moresby'),(290,'PG','Pacific/Bougainville'),(291,'PH','Asia/Manila'),(292,'PK','Asia/Karachi'),(293,'PL','Europe/Warsaw'),(294,'PM','America/Miquelon'),(295,'PN','Pacific/Pitcairn'),(296,'PR','America/Puerto_Rico'),(297,'PS','Asia/Gaza'),(298,'PS','Asia/Hebron'),(299,'PT','Europe/Lisbon'),(300,'PT','Atlantic/Madeira'),(301,'PT','Atlantic/Azores'),(302,'PW','Pacific/Palau'),(303,'PY','America/Asuncion'),(304,'QA','Asia/Qatar'),(305,'RE','Indian/Reunion'),(306,'RO','Europe/Bucharest'),(307,'RS','Europe/Belgrade'),(308,'RU','Europe/Kaliningrad'),(309,'RU','Europe/Moscow'),(310,'UA','Europe/Simferopol'),(311,'RU','Europe/Kirov'),(312,'RU','Europe/Volgograd'),(313,'RU','Europe/Astrakhan'),(314,'RU','Europe/Saratov'),(315,'RU','Europe/Ulyanovsk'),(316,'RU','Europe/Samara'),(317,'RU','Asia/Yekaterinburg'),(318,'RU','Asia/Omsk'),(319,'RU','Asia/Novosibirsk'),(320,'RU','Asia/Barnaul'),(321,'RU','Asia/Tomsk'),(322,'RU','Asia/Novokuznetsk'),(323,'RU','Asia/Krasnoyarsk'),(324,'RU','Asia/Irkutsk'),(325,'RU','Asia/Chita'),(326,'RU','Asia/Yakutsk'),(327,'RU','Asia/Khandyga'),(328,'RU','Asia/Vladivostok'),(329,'RU','Asia/Ust-Nera'),(330,'RU','Asia/Magadan'),(331,'RU','Asia/Sakhalin'),(332,'RU','Asia/Srednekolymsk'),(333,'RU','Asia/Kamchatka'),(334,'RU','Asia/Anadyr'),(335,'RW','Africa/Kigali'),(336,'SA','Asia/Riyadh'),(337,'SB','Pacific/Guadalcanal'),(338,'SC','Indian/Mahe'),(339,'SD','Africa/Khartoum'),(340,'SE','Europe/Stockholm'),(341,'SG','Asia/Singapore'),(342,'SH','Atlantic/St_Helena'),(343,'SI','Europe/Ljubljana'),(344,'SJ','Arctic/Longyearbyen'),(345,'SK','Europe/Bratislava'),(346,'SL','Africa/Freetown'),(347,'SM','Europe/San_Marino'),(348,'SN','Africa/Dakar'),(349,'SO','Africa/Mogadishu'),(350,'SR','America/Paramaribo'),(351,'SS','Africa/Juba'),(352,'ST','Africa/Sao_Tome'),(353,'SV','America/El_Salvador'),(354,'SX','America/Lower_Princes'),(355,'SY','Asia/Damascus'),(356,'SZ','Africa/Mbabane'),(357,'TC','America/Grand_Turk'),(358,'TD','Africa/Ndjamena'),(359,'TF','Indian/Kerguelen'),(360,'TG','Africa/Lome'),(361,'TH','Asia/Bangkok'),(362,'TJ','Asia/Dushanbe'),(363,'TK','Pacific/Fakaofo'),(364,'TL','Asia/Dili'),(365,'TM','Asia/Ashgabat'),(366,'TN','Africa/Tunis'),(367,'TO','Pacific/Tongatapu'),(368,'TR','Europe/Istanbul'),(369,'TT','America/Port_of_Spain'),(370,'TV','Pacific/Funafuti'),(371,'TW','Asia/Taipei'),(372,'TZ','Africa/Dar_es_Salaam'),(373,'UA','Europe/Kiev'),(374,'UA','Europe/Uzhgorod'),(375,'UA','Europe/Zaporozhye'),(376,'UG','Africa/Kampala'),(377,'UM','Pacific/Midway'),(378,'UM','Pacific/Wake'),(379,'US','America/New_York'),(380,'US','America/Detroit'),(381,'US','America/Kentucky/Louisville'),(382,'US','America/Kentucky/Monticello'),(383,'US','America/Indiana/Indianapolis'),(384,'US','America/Indiana/Vincennes'),(385,'US','America/Indiana/Winamac'),(386,'US','America/Indiana/Marengo'),(387,'US','America/Indiana/Petersburg'),(388,'US','America/Indiana/Vevay'),(389,'US','America/Chicago'),(390,'US','America/Indiana/Tell_City'),(391,'US','America/Indiana/Knox'),(392,'US','America/Menominee'),(393,'US','America/North_Dakota/Center'),(394,'US','America/North_Dakota/New_Salem'),(395,'US','America/North_Dakota/Beulah'),(396,'US','America/Denver'),(397,'US','America/Boise'),(398,'US','America/Phoenix'),(399,'US','America/Los_Angeles'),(400,'US','America/Anchorage'),(401,'US','America/Juneau'),(402,'US','America/Sitka'),(403,'US','America/Metlakatla'),(404,'US','America/Yakutat'),(405,'US','America/Nome'),(406,'US','America/Adak'),(407,'US','Pacific/Honolulu'),(408,'UY','America/Montevideo'),(409,'UZ','Asia/Samarkand'),(410,'UZ','Asia/Tashkent'),(411,'VA','Europe/Vatican'),(412,'VC','America/St_Vincent'),(413,'VE','America/Caracas'),(414,'VG','America/Tortola'),(415,'VI','America/St_Thomas'),(416,'VN','Asia/Ho_Chi_Minh'),(417,'VU','Pacific/Efate'),(418,'WF','Pacific/Wallis'),(419,'WS','Pacific/Apia'),(420,'YE','Asia/Aden'),(421,'YT','Indian/Mayotte'),(422,'ZA','Africa/Johannesburg'),(423,'ZM','Africa/Lusaka'),(424,'ZW','Africa/Harare');

/*Table structure for table `top_menu` */

drop table if exists `top_menu`;

CREATE TABLE `top_menu` (
  `menuid` int(11) NOT NULL AUTO_INCREMENT,
  `menu_name` text NOT NULL,
  `menu_slug` varchar(70) NOT NULL,
  `parentid` int(11) NOT NULL,
  `entrydate` date NOT NULL,
  `isactive` int(11) NOT NULL DEFAULT 0,
  PRIMARY KEY (`menuid`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8;

/*Data for the table `top_menu` */

insert into `top_menu` values (1,'Home','hotel',0,'2021-09-13',1),(2,'About Us','about',0,'2021-03-06',1),(3,'Contact Us','contact',0,'2021-01-07',1),(4,'Gallery','gallery',0,'2021-01-07',1),(5,'My Profile','my-profile',0,'2021-11-04',1);

/*Table structure for table `unit_of_measurement` */

drop table if exists `unit_of_measurement`;

CREATE TABLE `unit_of_measurement` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `uom_name` varchar(200) COLLATE utf8_unicode_ci NOT NULL,
  `uom_short_code` varchar(10) COLLATE utf8_unicode_ci NOT NULL,
  `is_active` tinyint(1) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=10 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

/*Data for the table `unit_of_measurement` */

insert into `unit_of_measurement` values (1,'Kilogram','kg.',1),(2,'Liter','ltr.',1),(3,'Gram','grm.',1),(4,'tonne','tn.',1),(5,'milligram','mg.',1),(6,'carat','carat',1),(7,'Per Pieces','pcs',1),(8,'Per Cup','cup',1),(9,'Pound','pnd.',1);

/*Table structure for table `user` */

drop table if exists `user`;

CREATE TABLE `user` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `firstname` varchar(50) DEFAULT NULL,
  `lastname` varchar(50) DEFAULT NULL,
  `about` text DEFAULT NULL,
  `email` varchar(100) NOT NULL,
  `device_token` text DEFAULT NULL,
  `waiter_kitchenToken` text DEFAULT NULL,
  `password` varchar(32) NOT NULL,
  `password_reset_token` varchar(20) DEFAULT NULL,
  `image` varchar(100) DEFAULT NULL,
  `last_login` datetime DEFAULT NULL,
  `last_logout` datetime DEFAULT NULL,
  `ip_address` varchar(14) DEFAULT NULL,
  `status` tinyint(1) NOT NULL DEFAULT 1,
  `usertype` int(11) NOT NULL DEFAULT 1 COMMENT '1=user,2=employee',
  `is_admin` tinyint(4) NOT NULL DEFAULT 0,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8;

/*Data for the table `user` */

insert into `user` values (1,'Garba','Aliyu','I am simple!','engr@gmail.com','','','e10adc3949ba59abbe56e057f20f883e','','./assets/img/user/man.jpg','2024-05-06 15:41:24','2022-04-26 10:38:05','::1',1,1,1),(2,'Saleem','Yusuf','','saleem@yahoo.com','','','e10adc3949ba59abbe56e057f20f883e','','','','','',1,2,0);

/*Table structure for table `variant` */

drop table if exists `variant`;

CREATE TABLE `variant` (
  `variantid` int(11) NOT NULL AUTO_INCREMENT,
  `menuid` int(11) NOT NULL,
  `variantName` varchar(120) NOT NULL,
  `price` decimal(10,2) NOT NULL DEFAULT 0.00,
  PRIMARY KEY (`variantid`)
) ENGINE=InnoDB AUTO_INCREMENT=13 DEFAULT CHARSET=utf8;

/*Data for the table `variant` */

insert into `variant` values (10,6,'Large','1200.00'),(11,6,'Medium','800.00'),(12,6,'Small','600.00');

/*Table structure for table `weekly_holiday` */

drop table if exists `weekly_holiday`;

CREATE TABLE `weekly_holiday` (
  `wk_id` int(11) NOT NULL AUTO_INCREMENT,
  `dayname` varchar(30) CHARACTER SET latin1 NOT NULL,
  PRIMARY KEY (`wk_id`)
) ENGINE=InnoDB AUTO_INCREMENT=23 DEFAULT CHARSET=utf8;

/*Data for the table `weekly_holiday` */

insert into `weekly_holiday` values (22,'Friday');
