set serveroutput on; 
set verify off;

declare 
	bg varchar(20); 
	res number; 
	
begin 
bg:='&Country';
res := countUserByCountry(bg);
dbms_output.put_line('Number of user from' ||bg|| ' = '||res);	
	
end; 
/
