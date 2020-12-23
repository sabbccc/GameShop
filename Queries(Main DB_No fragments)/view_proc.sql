
--product
create or replace view p_view(v_pid, v_ptitle, v_ptype, v_price, v_prelease, v_pubid) as
select * from Product;

SET SERVEROUTPUT ON;
create or replace procedure product_proc
	( pnameX in product.ptitle%TYPE ) 
	IS
	p_pid product.pid%TYPE;
	p_ptitle product.ptitle%TYPE;
	p_ptype product.ptype%TYPE;
	p_price product.pprice%TYPE;
	p_prelease product.prelease%TYPE;
	p_pubid product.pubid%TYPE;
	
begin 
	select * into p_pid, p_ptitle, p_ptype, p_price, p_prelease, p_pubid from product 
	where product.ptitle=pnameX; 
	
	dbms_output.put_line('--------------------------------------------------------------------------------------------------');
	dbms_output.put_line(p_pid || ' ' || p_ptitle || ' ' || p_ptype || ' ' || p_price || ' ' || p_prelease || ' ' || p_pubid);
	dbms_output.put_line('--------------------------------------------------------------------------------------------------');
	
end product_proc; 
/

/*
--Course
create or replace view crs_view(crs_num, crs_name, crs_meets, crs_room, crs_fid) as
select * from Course;

SET SERVEROUTPUT ON;
create or replace procedure course_proc
	( cnumX in course.cnum%TYPE ) 
	IS
	cnum course.cnum%TYPE;
	cname course.cname%TYPE;
	meets course.meets_at%TYPE;
	croom course.room%TYPE;
	cfid course.fid%TYPE;

begin 
	select * into cnum, cname, meets, croom, cfid from crs_view 
	where crs_num=cnumX; 
	
	dbms_output.put_line(cnum || ' ' || cname || ' ' || meets || ' ' || croom || ' ' || cfid);
	
end course_proc; 
/

--Faculty
create or replace view fct_view(fct_id, fct_name, fct_deptid) as
select * from Faculty;

SET SERVEROUTPUT ON;
create or replace procedure faculty_proc
	( fidX in faculty.fid%TYPE ) 
	IS
	fctid faculty.fid%TYPE;
	fctname faculty.fName%TYPE;
	fctdid faculty.deptid%TYPE;

begin 
	select * into fctid,fctname, fctdid from fct_view 
	where fct_id=fidX; 
	
	dbms_output.put_line(fctid || ' ' || fctname || ' ' || fctdid );
	
end faculty_proc; 
/

--Enrolled
-- create or replace view enrl_view(enrl_snum, enrl_cnum) as
-- select * from Enrolled;

-- create or replace procedure enrolled_proc(snumX in enrolled.snum%TYPE)
-- 	IS
-- 	enrlsnum enrolled.snum%TYPE;
-- 	enrlcnum enrolled.cnum%TYPE;
-- begin
-- 	select * into enrlsnum, enrlcnum from enrl_view where enrl_snum=snumX;
-- end enrolled_proc;
-- /
*/