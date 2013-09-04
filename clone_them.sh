#!/bin/bash
# .googlecode.com/svn/

_the_root=`pwd`

ALL_REPO="hackystat \
        hackystat-analysis-dailyprojectdata \
        hackystat-analysis-telemetry \
        hackystat-developer-example \
        hackystat-sensor-ant \
        hackystat-sensor-eclipse \
        hackystat-sensor-emacs \
        hackystat-sensor-example \
        hackystat-sensor-shell \
        hackystat-sensor-vim \
        hackystat-sensor-xmldata \
        hackystat-sensorbase-postgres \
        hackystat-sensorbase-simdata \
        hackystat-sensorbase-uh \
        hackystat-ui-systemstatus \
        hackystat-ui-tickertape \
        hackystat-ui-wicket \
        hackystat-utilities"

ONE_REPO="hackystat"


for repo in  $ALL_REPO;
do
    cd $_the_root
    echo "## Running for $repo #####################################################"
    if [ -e $repo ]; then
        cd $repo
        git svn fetch --fetch-all
    else
        mkdir $repo
        cd $repo
        git svn init --no-metadata --stdlayout http://$repo.googlecode.com/svn/ .
        git config svn.authorsfile $_the_root/users.txt
        git svn fetch --fetch-all
    fi
done
