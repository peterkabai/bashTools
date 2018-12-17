#!/bin/bash

start=`date +%s`

end=`date +%s`
diff=`expr $end - $start`
hour=`expr $diff / 60 / 60`
min=$(echo "($diff - ($hour * 60 * 60)) / 60" | bc) 
sec=$(echo "($diff - ($hour * 60 * 60) - ($min * 60))" | bc) 
echo "Completed in $hour hrs $min mins $sec secs"