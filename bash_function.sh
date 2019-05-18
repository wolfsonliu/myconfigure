#! /bin/bash

function clean_desktop {
    THEDIR=${HOME}/Desktop/desktop_file_$(date +%F_%H:%M)
    mkdir -p ${THEDIR}
    for x in `find ${HOME}/Desktop/* -not -wholename ${THEDIR}`; do
        mv ${x} ${THEDIR}/$(basename ${x})
    done
    echo ${THEDIR}
}

function pack_desktop {
    THEDIR=`clean_desktop`
    tar --remove-files -C `dirname ${THEDIR}` -czf ${THEDIR}.tar.gz `basename ${THEDIR}`
    echo ${THEDIR}.tar.gz
}
