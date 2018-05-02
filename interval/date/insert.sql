

-- create a row for each day in 2015-17, and see if each day appears in the correct partition

declare 
	t_baset timestamp := to_timestamp('2014-12-31','yyyy-mm-dd');
	t_newt timestamp;
	t_upper_limit timestamp := to_timestamp('2018-01-01','yyyy-mm-dd');

	i_id integer := 1;
	i_pk integer := 100000;

begin
	t_newt := t_baset;

	dbms_output.put_line('start: ' || to_char(t_baset,'yyyy-mm-dd'));

	<<DATELOOP>>
	while true
	loop
		dbms_output.put_line('current: ' || to_char(t_newt,'yyyy-mm-dd'));
		--dbms_output.put_line('failsafe: ' || to_char(i_failsafe));
		if (t_newt > to_timestamp('2017-12-31','yyyy-mm-dd')) then
			exit DATELOOP;
		end if;

		insert into partstest(id, pk, d1) values(i_id, i_pk, t_newt);

		t_newt := t_newt + interval '1' day;
		i_id := i_id + 1;
		i_pk := i_pk + 1;

	end loop;

	commit;

	dbms_output.put_line('end: ' || to_char(t_newt,'yyyy-mm-dd'));

end;
/

