
set echo on

create tablespace hash_test_1 datafile '/u02/oradata/dv03/hash_test_01.dbf' size 1m
extent management local uniform size 128k
/

create tablespace hash_test_2 datafile '/u02/oradata/dv03/hash_test_02.dbf' size 1m
extent management local uniform size 128k
/

create tablespace hash_test_3 datafile '/u02/oradata/dv03/hash_test_03.dbf' size 1m
extent management local uniform size 128k
/

create tablespace hash_test_4 datafile '/u02/oradata/dv03/hash_test_04.dbf' size 1m
extent management local uniform size 128k
/

--create tablespace hash_test_5 datafile '/u02/oradata/dv03/hash_test_05.dbf' size 1m
--extent management local uniform size 128k
--/
--
--create tablespace hash_test_6 datafile '/u02/oradata/dv03/hash_test_06.dbf' size 1m
--extent management local uniform size 128k
--/
--
--create tablespace hash_test_7 datafile '/u02/oradata/dv03/hash_test_07.dbf' size 1m
--extent management local uniform size 128k
--/
--
--create tablespace hash_test_8 datafile '/u02/oradata/dv03/hash_test_08.dbf' size 1m
--extent management local uniform size 128k
--/
--

create tablespace hash_test_idx_1 datafile '/u02/oradata/dv03/hash_test_idx_01.dbf' size 1m
extent management local uniform size 128k
/

create tablespace hash_test_idx_2 datafile '/u02/oradata/dv03/hash_test_idx_02.dbf' size 1m
extent management local uniform size 128k
/
--
--create tablespace hash_test_idx_3 datafile '/u02/oradata/dv03/hash_test_idx_03.dbf' size 1m
--extent management local uniform size 128k
--/
--
--create tablespace hash_test_idx_4 datafile '/u02/oradata/dv03/hash_test_idx_04.dbf' size 1m
--extent management local uniform size 128k
--/

--create tablespace hash_test_idx_5 datafile '/u02/oradata/dv03/hash_test_idx_05.dbf' size 1m
--extent management local uniform size 128k
--/
--
--create tablespace hash_test_idx_6 datafile '/u02/oradata/dv03/hash_test_idx_06.dbf' size 1m
--extent management local uniform size 128k
--/
--
--create tablespace hash_test_idx_7 datafile '/u02/oradata/dv03/hash_test_idx_07.dbf' size 1m
--extent management local uniform size 128k
--/
--
--create tablespace hash_test_idx_8 datafile '/u02/oradata/dv03/hash_test_idx_08.dbf' size 1m
--extent management local uniform size 128k
--/


set echo off


set echo off

