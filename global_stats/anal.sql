
exec dbms_stats.delete_table_stats(USER, 'PARTSTATS')

exec dbms_stats.gather_table_stats(USER, 'PARTSTATS', GRANULARITY => 'GLOBAL AND PARTITION');


