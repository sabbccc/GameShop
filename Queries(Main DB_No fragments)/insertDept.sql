set serveroutput on; 
set linesize 150;
accept a prompt 'Enter user id :'
accept b prompt 'Enter user name :'
accept c prompt 'Enter user mail :'
accept d prompt 'Enter user level :'
accept e prompt 'Enter user country:'

declare 
	 user_id  USERS1.usid%TYPE;
	 user_name  USERS1.usname%TYPE;
	 user_mail  USERS1.usmail%TYPE;
	 user_level USERS1.uslevel%TYPE;
	 user_country USERS1.uscountry%TYPE;

begin 

user_id:= &a; 
user_name:= '&b';
user_mail:= '&c';
user_level:= &d;
user_country:='&e';


dbms_output.put_line('User id = ' || user_id);
dbms_output.put_line('user name = ' || user_name);
dbms_output.put_line('User mail = ' || user_mail);
dbms_output.put_line('user level = ' || user_level);
dbms_output.put_line('User country =' || user_country);

insertIntoUser(user_id, user_name, user_mail,user_level,user_country);

end; 
/