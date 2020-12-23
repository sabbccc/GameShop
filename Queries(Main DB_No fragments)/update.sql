set verify off;
SET SERVEROUTPUT ON;

accept w char prompt 'Please enter value to update with: ';
	
create or replace function update_record(tnum in number, xnum in number)
	return number
	IS
	m number;
	-- enrlsnum enrolled.snum%TYPE;
	-- enrlcnum enrolled.cnum%TYPE;
begin
	m := &w;
	-- if(tnum=1) then
	-- 	-- delete * from st_view 
	-- 	-- where st_num = xnum;

	-- -- 	-- select nvl(snum, m), cnum into enrlsnum, enrollcnum
	-- -- 	-- from enrolled where snum = xnum;

	-- -- 	-- insert into student (snum, sname, major, slevel, age) 
	-- -- 	-- values (m, 'fffff', 'fffff', '5', 18);
	-- -- else
	-- -- 	return m;		
	-- end if;

	return m;
end update_record;
/