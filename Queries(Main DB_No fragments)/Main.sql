--main
SET VERIFY OFF;
SET SERVEROUTPUT ON;

accept x char prompt 'Please enter operation: ';
accept y char prompt 'Please enter search type(product/publisher): ';
accept z char prompt 'Please enter product/publisher name: ';

DECLARE
	a varchar2(10); 
	b varchar2(10);
	c product.ptitle%Type;

BEGIN
	a := '&x';
	b := '&y';
	c := '&z';
	
	if(a = 'Search' and b = 'product') then
		product_proc(c);
	end if;

END;
/

