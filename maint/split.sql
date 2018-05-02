
alter table lrpart 
split subpartition comp01_maxval at (to_date('201801','yyyymm'))
into (subpartition comp01_s2017, subpartition comp01_maxval)
/

alter table lrpart 
split subpartition maxval at (to_date('201901','yyyymm'))
into (subpartition comp02_s2018, subpartition maxval)
/



