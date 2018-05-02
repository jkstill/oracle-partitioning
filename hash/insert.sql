

declare
	start_key pls_integer := 1000000;
	records pls_integer := 100000;
begin
	 for key in start_key..( start_key + records )
	 loop
		insert into hash_test values(key);
	 end loop;
	 commit;
end;
/

