
-- unusable index test - reclaim space

set echo on

spool create.log

@@ui_tables

@@ui_insert

@@ui_indexes

spool off
set echo off

