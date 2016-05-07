#!/bin/bash

case ${1} in
    "start")
    echo -en "$(date +"%Y-%d-%m %T");" >> ~/work/work.log ;;
    "stop")
    echo -en "$(date +"%Y-%d-%m %T")\n" >> ~/work/work.log ;;
    "log" )
    HOURS=0
    while IFS='' read -r line || [[ -n "$line" ]]; do
        IFS=';' read -r -a times <<< "$line"
        HOURS=$(( $HOURS + $(( ( $(date -ud "${times[1]}" +'%s') - $(date -ud "${times[0]}" +'%s') ) ))))
    done < ~/work/work.log
    echo $((${HOURS}/60/60)) hours;;
    * )
    cat ~/work/work.log ;;
esac
