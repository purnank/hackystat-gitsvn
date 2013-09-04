hackystat-gitsvn
================

Meta script for importing hackystat code from SVN to GIT.

Steps
-----

1. Clone this repository
2. Run ``./clone_them.sh``
3. See failures for missing user names in ``users.txt``
4. Update `users.txt``
5. Repeat *Step 2*
    
**Finally:** Share ``users.txt`` back to this repository

**Note:** Make sure ``git svn`` is already working on your system.

At the end of this process you would have:

    README.md                            hackystat-sensor-eclipse/            hackystat-sensorbase-simdata/
    clone_them.sh*                       hackystat-sensor-emacs/              hackystat-sensorbase-uh/
    hackystat/                           hackystat-sensor-example/            hackystat-ui-systemstatus/
    hackystat-analysis-dailyprojectdata/ hackystat-sensor-shell/              hackystat-ui-tickertape/
    hackystat-analysis-telemetry/        hackystat-sensor-vim/                hackystat-ui-wicket/
    hackystat-developer-example/         hackystat-sensor-xmldata/            hackystat-utilities/
    hackystat-sensor-ant/                hackystat-sensorbase-postgres/       users.txt

The hackystat-* are replica of SVN to GIT.
