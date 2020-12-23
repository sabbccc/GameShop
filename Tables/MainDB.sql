clear screen;

DROP TABLE USERS CASCADE CONSTRAINTS;
DROP TABLE PUBLISHER CASCADE CONSTRAINTS;
DROP TABLE PRODUCT CASCADE CONSTRAINTS;
DROP TABLE SUBSCRIPTION CASCADE CONSTRAINTS;

CREATE TABLE USERS (
	usid int, 
	usname varchar2(8), 
	usmail varchar2(20),
	uslevel int, 
	uscountry varchar2(3),
    PRIMARY KEY(usid)); 



CREATE TABLE PUBLISHER(
	pubid int, 
	pubName varchar2(10),
	pubmail varchar2(20),
	PRIMARY KEY(pubid));



CREATE TABLE PRODUCT (
	pid int, 
	ptitle varchar2(10), 
	ptype varchar2(15), 
	pprice float, 
	prelease varchar2(15),
	pubid int,
	PRIMARY KEY(pid),
	FOREIGN KEY(pubid) REFERENCES PUBLISHER(pubid));


 
CREATE TABLE BUY(
	bid int,
	pid int,
	usid int,
	bdate varchar2(15),
	PRIMARY KEY(bid),
	FOREIGN KEY(usid) REFERENCES USERS(usid),
	FOREIGN KEY(pid) REFERENCES PRODUCT(pid));



insert into USERS(usid, usname, usmail, uslevel, uscountry) values (1, 'sabbccc', 'abc@fakemail.com', '1', 'BAN'); 
insert into USERS(usid, usname, usmail, uslevel, uscountry) values (2, 'bevan', 'bac@fakemail.com', '2', 'UGA'); 
insert into USERS(usid, usname, usmail, uslevel, uscountry) values (3, 'sab', 'cab@fakemail.com', '3', 'BAN'); 
insert into USERS(usid, usname, usmail, uslevel, uscountry) values (4, 'be', 'cba@fakemail.com', '2', 'UGA'); 
insert into USERS(usid, usname, usmail, uslevel, uscountry) values (5, 'sat', 'dd@fakemail.com', '1', 'BAN'); 
insert into USERS(usid, usname, usmail, uslevel, uscountry) values (6, 'bev', 'jhd@fakemail.com', '3', 'UGA'); 
insert into USERS(usid, usname, usmail, uslevel, uscountry) values (7, 'sup', 'kak@fakemail.com', '1', 'BAN'); 
insert into USERS(usid, usname, usmail, uslevel, uscountry) values (8, 'bexi', 'lka@fakemail.com', '2', 'UGA'); 
insert into USERS(usid, usname, usmail, uslevel, uscountry) values (9, 'habib', 'kal@fakemail.com', '2', 'BAN'); 
insert into USERS(usid, usname, usmail, uslevel, uscountry) values (10, 'jes', 'pal@fakemail.com', '2', 'UGA'); 
insert into USERS(usid, usname, usmail, uslevel, uscountry) values (11, 'Tasin', 'luin@fakemail.com', '3', 'BAN'); 
insert into USERS(usid, usname, usmail, uslevel, uscountry) values (12, 'kazi', 'jaja@fakemail.com', '2', 'UGA'); 
  
 
insert into PUBLISHER values(301, 'Ubisoft', 'ub@mail.com'); 
insert into PUBLISHER values(302, 'Valve', 'valve@mail.com');


insert into PRODUCT values(1, 'FarCry', 'Open world', 50.45, '2012-10-20', 301 ); 
insert into PRODUCT values(2, 'CS:GO1', 'Shooter', 10, '2011-09-20', 302 ); 
insert into PRODUCT values(3, 'FarCry1', 'Open world', 50.45, '2012-10-20', 301 ); 
insert into PRODUCT values(4, 'CS:GO2', 'Shooter', 10, '2011-09-20', 302 ); 
insert into PRODUCT values(5, 'FarCry2', 'Open world', 50.45, '2012-10-20', 302 ); 
insert into PRODUCT values(6, 'CS:GO3', 'Shooter', 10, '2011-09-20', 302 ); 
insert into PRODUCT values(7, 'FarCry3', 'Open world', 50.45, '2012-10-20', 301 ); 
insert into PRODUCT values(8, 'CS:GO4', 'Shooter', 10, '2011-09-20', 302 ); 
insert into PRODUCT values(9, 'FarCry4', 'Open world', 50.45, '2012-10-20', 302 ); 
insert into PRODUCT values(10, 'CS:GO5', 'Shooter', 10, '2011-09-20', 302 ); 
insert into PRODUCT values(11, 'FarCry5', 'Open world', 50.45, '2012-10-20', 301 ); 
insert into PRODUCT values(12, 'CS:GO6', 'Shooter', 10, '2011-09-20', 302 ); 
insert into PRODUCT values(13, 'FarCry6', 'Open world', 50.45, '2012-10-20', 302 ); 
insert into PRODUCT values(14, 'CS:GO7', 'Shooter', 10, '2011-09-20', 302 ); 
insert into PRODUCT values(15, 'FarCry8', 'Open world', 50.45, '2012-10-20', 302 ); 
insert into PRODUCT values(16, 'CS:GO9', 'Shooter', 10, '2011-09-20', 302 ); 
insert into PRODUCT values(17, 'FarCryx', 'Open world', 50.45, '2012-10-20', 301 ); 
insert into PRODUCT values(18, 'CS:GOx', 'Shooter', 10, '2011-09-20', 302 ); 

 
 
insert into BUY values(1,1,2, '2011-09-20'); 
insert into BUY values(2,3,2, '2011-09-21'); 
insert into BUY values(3,2,1, '2011-09-22'); 
insert into BUY values(4,5,1, '2011-09-25'); 
insert into BUY values(5,7,3, '2011-09-20'); 
insert into BUY values(6,3,3, '2011-09-20'); 
insert into BUY values(7,1,4, '2011-09-25'); 
insert into BUY values(8,3,4, '2011-09-28'); 
insert into BUY values(9,2,5, '2011-09-22'); 
insert into BUY values(10,5,5, '2011-09-21'); 
insert into BUY values(11,7,6, '2011-09-28'); 
insert into BUY values(12,3,6, '2011-09-20'); 
insert into BUY values(13,1,7, '2011-09-25'); 
insert into BUY values(14,3,7, '2011-09-26'); 
insert into BUY values(15,2,8, '2011-09-26'); 
insert into BUY values(16,5,8, '2011-09-23'); 
insert into BUY values(17,7,9, '2011-09-29'); 
insert into BUY values(18,3,9, '2011-09-27'); 
insert into BUY values(19,1,10, '2011-09-22'); 
insert into BUY values(20,3,10, '2011-09-23'); 
insert into BUY values(21,12,11, '2011-09-23'); 
insert into BUY values(22,5,11, '2011-09-24'); 
insert into BUY values(23,17,12, '2011-09-24'); 
insert into BUY values(24,18,12, '2011-09-24'); 

commit;
 
