clear screen;

DROP TABLE USERS1 CASCADE CONSTRAINTS;
DROP TABLE PUBLISHER1 CASCADE CONSTRAINTS;
DROP TABLE PRODUCT1 CASCADE CONSTRAINTS;
DROP TABLE BUY1 CASCADE CONSTRAINTS;

CREATE TABLE USERS1(
	usid int, 
	usname varchar2(8), 
	usmail varchar2(20),
	uslevel int, 
	uscountry varchar2(3),
    PRIMARY KEY(usid)); 



CREATE TABLE PUBLISHER1(
	pubid int, 
	pubName varchar2(10),
	pubmail varchar2(20),
	PRIMARY KEY(pubid));



CREATE TABLE PRODUCT1 (
	pid int, 
	ptitle varchar2(10), 
	ptype varchar2(15), 
	pprice float, 
	prelease varchar2(15),
	pubid int,
	PRIMARY KEY(pid),
	FOREIGN KEY(pubid) REFERENCES PUBLISHER1(pubid));


 
CREATE TABLE BUY1(
	bid int,
	pid int,
	usid int,
	bdate varchar2(15),
	rating int,
	PRIMARY KEY(bid),
	FOREIGN KEY(usid) REFERENCES USERS1(usid),
	FOREIGN KEY(pid) REFERENCES PRODUCT1(pid));



insert into USERS1(usid, usname, usmail, uslevel, uscountry) values (1, 'sabbccc', 'abc@fakemail.com', '1', 'BAN'); 
insert into USERS1(usid, usname, usmail, uslevel, uscountry) values (3, 'sab', 'cab@fakemail.com', '3', 'BAN'); 
insert into USERS1(usid, usname, usmail, uslevel, uscountry) values (5, 'sat', 'dd@fakemail.com', '1', 'BAN'); 
insert into USERS1(usid, usname, usmail, uslevel, uscountry) values (7, 'sup', 'kak@fakemail.com', '1', 'BAN'); 
insert into USERS1(usid, usname, usmail, uslevel, uscountry) values (9, 'habib', 'kal@fakemail.com', '2', 'BAN'); 
insert into USERS1(usid, usname, usmail, uslevel, uscountry) values (11, 'Tasin', 'luin@fakemail.com', '3', 'BAN'); 
                 
 
insert into PUBLISHER1 values(301, 'Ubisoft', 'ub@mail.com'); 


insert into PRODUCT1 values(1, 'FarCry', 'Open world', 50.45, '2012-10-20', 301 ); 
insert into PRODUCT1 values(3, 'FarCry1', 'Open world', 50.45, '2012-10-20', 301 ); 
insert into PRODUCT1 values(5, 'FarCry2', 'Open world', 50.45, '2012-10-20', 301 ); 
insert into PRODUCT1 values(7, 'FarCry3', 'Open world', 50.45, '2012-10-20', 301 ); 
insert into PRODUCT1 values(9, 'FarCry4', 'Open world', 50.45, '2012-10-20', 301 ); 
insert into PRODUCT1 values(11, 'FarCry5', 'Open world', 50.45, '2012-10-20', 301 ); 
insert into PRODUCT1 values(13, 'FarCry6', 'Open world', 50.45, '2012-10-20', 301 ); 
insert into PRODUCT1 values(15, 'FarCry8', 'Open world', 50.45, '2012-10-20', 301 ); 
insert into PRODUCT1 values(17, 'FarCryx', 'Open world', 50.45, '2012-10-20', 301 ); 

 
 
insert into BUY1 values(1,1,3, '2011-09-20', 3); 
insert into BUY1 values(2,3,5, '2011-09-21', 3); 
insert into BUY1 values(3,5,1, '2011-09-22', 3); 
insert into BUY1 values(4,5,1, '2011-09-25', 3); 
insert into BUY1 values(5,7,3, '2011-09-20', 3); 
insert into BUY1 values(6,3,3, '2011-09-20', 3); 
insert into BUY1 values(7,1,7, '2011-09-25', 3); 
insert into BUY1 values(8,3,7, '2011-09-28', 3); 
insert into BUY1 values(9,11,5, '2011-09-22', 3); 
insert into BUY1 values(10,5,5, '2011-09-21', 1); 
insert into BUY1 values(11,7,9, '2011-09-28', 1); 
insert into BUY1 values(12,3,9, '2011-09-20', 1); 
insert into BUY1 values(13,1,7, '2011-09-25', 1); 
insert into BUY1 values(14,3,7, '2011-09-26', 1); 
insert into BUY1 values(15,7,11, '2011-09-26', 1); 
insert into BUY1 values(16,5,11, '2011-09-23', 1); 
insert into BUY1 values(17,17,9, '2011-09-29', 1); 
insert into BUY1 values(18,3,9, '2011-09-27', 1); 
insert into BUY1 values(19,1,3, '2011-09-22', 2); 
insert into BUY1 values(20,3,7, '2011-09-23', 2); 
insert into BUY1 values(21,5,11, '2011-09-24', 2); 
insert into BUY1 values(22,5,11, '2011-09-23', 2); 
insert into BUY1 values(23,13,11, '2011-09-24', 2); 
insert into BUY1 values(24,15,11, '2011-09-24', 2); 

commit;
 
