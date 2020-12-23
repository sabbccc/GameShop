create or replace function countUserByCountry(matchCountry USERS1.uscountry%TYPE)
  return number
  is
  coNum number;
begin
	 select count(usid) into coNum from USERS1 where uscountry = matchCountry; 
	 return coNum;
end countUserByCountry;
/

