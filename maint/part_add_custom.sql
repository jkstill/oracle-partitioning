


alter table lrpart add partition COMP02  values('comp02')
(
	subpartition archive values less than (to_date('201401','yyyymm')),
	subpartition s2014 values less than (to_date('201501','yyyymm')),
	subpartition maxval values less than (maxvalue)
)
/


