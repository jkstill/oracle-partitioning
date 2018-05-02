

col bytes format 999,999,999,999

select ip.index_name, ip.partition_name, s.bytes
from user_indexes i 
join user_ind_subpartitions ip on ip.index_name = i.index_name
right outer join user_segments s on 
	s.segment_name = ip.index_name
	and s.partition_name = ip.subpartition_name
where i.table_name = 'UITEST'
--and s.segment_type = 'PARTITION'
order by 1,2
/

