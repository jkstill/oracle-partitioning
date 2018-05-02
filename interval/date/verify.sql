
set serveroutput on size unlimited

declare

	cursor part_info is SELECT partition_name,
		-- format of returned data is TIMESTAMP' 2017-09-01 00:00:00'
		-- generating XML to get high_value from a LONG to CHAR
		-- crazy workaround to get character data from a LONG datatype
		-- I cannot claim credit for this - found the technique here:
		-- https://stackoverflow.com/questions/27835104/convert-long-into-varchar2-or-some-text-datatype#27836179
		substr(
			regexp_substr(
				SYS.DBMS_XMLGEN.GETXML('select high_value from user_tab_partitions where table_name = '''||table_name||''' and partition_name =  '''||partition_name||''''),
				'<HIGH_VALUE>(.*)</HIGH_VALUE>', -- pattern
				1, -- start searching at this position
				1, -- occurrence
				'inm', -- match parameters  - i = case insensitive n = allows period . to match newline m = multiline search
				1
			),
			12,19
		) high_value
	FROM user_tab_partitions
	where table_name = 'PARTSTEST'
	order by to_date(high_value,'yyyy-mm-dd hh24:mi:ss');

	v_sql varchar2(1000);

	v_min_date date;
	v_max_date date;

	procedure p(varchar2_in varchar2)
	is
	begin
		dbms_output.put(varchar2_in);
	end;

	procedure pl(varchar2_in varchar2)
	is
	begin
		p(varchar2_in);
		dbms_output.new_line;
	end;

begin

	null;

	for partrec in part_info
	loop
		p(partrec.high_value || '-> ');

		v_sql := 'select min(d1), max(d1) from partstest partition(' || partrec.partition_name || ')';
		execute immediate v_sql into v_min_date, v_max_date;
		--pl(v_sql);

		pl(' low: ' || to_char(v_min_date,'yyyy-mm-dd') || ' high: ' || to_char(v_max_date,'yyyy-mm-dd'));

	end loop;

end;
/
