


col bytes format 999,999,999,999

select t.table_name, s.segment_name, s.bytes
from user_tables t 
right outer join user_segments s on 
	s.segment_name = t.table_name
where t.table_name = 'UITEST'
order by 1,2
/

