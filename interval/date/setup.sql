
set serveroutput on size unlimited

set timing on
define months_per_partition=1 -- 1 for monthly, 3 for quarterly
define v_tablespace='TBSLARGE'

set echo on

