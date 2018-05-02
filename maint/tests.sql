
set echo off
spool tests.log


@@filler 'create partitioned test table with local/global indexes'

@@all

@@filler 'compress aubpartition'

@@compress_tab_subpart

@@filler 'compress partition'

@@compress_tab_part

@@filler 'all indexes still usable'

@@parts

@@filler 'merge parititions with compressed/uncompressed subparts'

@@merge_parts

@@filler 'global indexes will usable with MERGE ... "UPDATE GLOBAL INDEXES"'
@@filler 'however the indexes on merged partitions must be rebuilt'


@@parts

spool off


