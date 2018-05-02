
-- frag the indexes

declare
	maxcount constant integer := 1000;
	insert_str varchar2(2000);
begin
	insert_str := rpad('X',1000,'X');
	for n in  1000000 .. 1100000
	loop
		-- delete every 9th row
		if mod(n,9) = 0 then

			-- delete the row
			delete from hash_test where key = n;

			-- put it back
			--insert into hash_test values(n);

		end if;
	end loop;
	commit;
end;
/

 select count(*) from hash_test;

