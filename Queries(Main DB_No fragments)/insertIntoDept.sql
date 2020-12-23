create or replace procedure insertIntoUser(nuser_id  USERS1.usid%TYPE,
											nuser_name  USERS1.usname%TYPE,
											nuser_mail  USERS1.usmail%TYPE,
											nuser_level USERS1.uslevel%TYPE,
											nuser_country USERS1.uscountry%TYPE)
		IS
	
 begin	
	
		insert into USERS1(usid, usname, usmail, uslevel, uscountry) values (nuser_id, nuser_name, nuser_mail, nuser_level, nuser_country);
	commit;

			 
end insertIntoUser;
/
