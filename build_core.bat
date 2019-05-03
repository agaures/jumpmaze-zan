@ECHO OFF

CALL "%CD%\utilities\variables.bat" %*
CALL "%CD%\utilities\mkvers.bat" %*

CALL "%CD%\utilities\variables.bat" %*
CALL "%CD%\utilities\mkvers.bat" %*

DEL /F /Q "%OUTDIR%\jm_core-*.pk3"

PUSHD jm_core\pk3
DEL /F /Q "%CD%\err_*.txt"
IF NOT EXIST "%CD%\acs" MKDIR "%CD%\acs"
acc "scripts/utility.acs" "acs/utility.o"
IF EXIST "%CD%\scripts\acs.err" MOVE /Y "%CD%\scripts\acs.err" "err_utility.txt"
acc "scripts/ranker_hs.acs" "acs/jmrhighs.o"
IF EXIST "%CD%\scripts\acs.err" MOVE /Y "%CD%\scripts\acs.err" "err_ranker_hs.txt"
acc "scripts/ranker_solo.acs" "acs/jmrsolo.o"
IF EXIST "%CD%\scripts\acs.err" MOVE /Y "%CD%\scripts\acs.err" "err_ranker_solo.txt"
acc "scripts/map_skill.acs" "acs/jmmskill.o"
IF EXIST "%CD%\scripts\acs.err" MOVE /Y "%CD%\scripts\acs.err" "err_map_skill.txt"
acc "scripts/map_message.acs" "acs/jmmapmsg.o"
IF EXIST "%CD%\scripts\acs.err" MOVE /Y "%CD%\scripts\acs.err" "err_map_message.txt"
acc "scripts/jmgame.acs" "acs/jmgame.o"
IF EXIST "%CD%\scripts\acs.err" MOVE /Y "%CD%\scripts\acs.err" "err_jmgame.txt"
acc "scripts/ranker_team.acs" "acs/jmrteam.o"
IF EXIST "%CD%\scripts\acs.err" MOVE /Y "%CD%\scripts\acs.err" "err_ranker_team.txt"
acc "scripts/jmrun.acs" "acs/jmrun.o"
IF EXIST "%CD%\scripts\acs.err" MOVE /Y "%CD%\scripts\acs.err" "err_jmrun.txt"
acc "scripts/jm2_cdwn.acs" "acs/jm2_cdwn.o"
IF EXIST "%CD%\scripts\acs.err" MOVE /Y "%CD%\scripts\acs.err" "err_jm2_cdwn.txt"
acc "scripts/TRANSLUCENT.acs" "acs/TRANSLUCENT.o"
IF EXIST "%CD%\scripts\acs.err" MOVE /Y "%CD%\scripts\acs.err" "err_TRANSLUCENT.txt"
acc "scripts/sflags.acs" "acs/sflags.o"
IF EXIST "%CD%\scripts\acs.err" MOVE /Y "%CD%\scripts\acs.err" "err_sflags.txt"
acc "scripts/who_exited.acs" "acs/jmwhoxit.o"
IF EXIST "%CD%\scripts\acs.err" MOVE /Y "%CD%\scripts\acs.err" "err_who_exited.txt"
acc "scripts/timer.acs" "acs/jmtimer.o"
IF EXIST "%CD%\scripts\acs.err" MOVE /Y "%CD%\scripts\acs.err" "err_timer.txt"
acc "scripts/telefrag_patch.acs" "acs/teleptch.o"
IF EXIST "%CD%\scripts\acs.err" MOVE /Y "%CD%\scripts\acs.err" "err_telefrag_patch.txt"
acc "scripts/script_trigger.acs" "acs/strigger.o"
IF EXIST "%CD%\scripts\acs.err" MOVE /Y "%CD%\scripts\acs.err" "err_script_trigger.txt"
acc "scripts/luk.acs" "acs/luksys.o"
IF EXIST "%CD%\scripts\acs.err" MOVE /Y "%CD%\scripts\acs.err" "err_luk.txt"
acc "scripts/constants.acs" "acs/constant.o"
IF EXIST "%CD%\scripts\acs.err" MOVE /Y "%CD%\scripts\acs.err" "err_constants.txt"
acc "scripts/auto_fist.acs" "acs/autofist.o"
IF EXIST "%CD%\scripts\acs.err" MOVE /Y "%CD%\scripts\acs.err" "err_auto_fist.txt"
acc "scripts/rsd.acs" "acs/rsdsys.o"
IF EXIST "%CD%\scripts\acs.err" MOVE /Y "%CD%\scripts\acs.err" "err_rsd.txt"
acc "scripts/client.acs" "acs/client.o"
IF EXIST "%CD%\scripts\acs.err" MOVE /Y "%CD%\scripts\acs.err" "err_client.txt"
acc "scripts/personal_teleport.acs" "acs/ptport.o"
IF EXIST "%CD%\scripts\acs.err" MOVE /Y "%CD%\scripts\acs.err" "err_personal_teleport.txt"
acc "scripts/svmz/game.acs" "acs/srvlmaze.o"
IF EXIST "%CD%\scripts\svmz\acs.err" MOVE /Y "%CD%\scripts\svmz\acs.err" "err_svmz.txt"
acc "scripts/startreset.acs" "acs/startreset.o"
IF EXIST "%CD%\scripts\acs.err" MOVE /Y "%CD%\scripts\acs.err" "err_startreset.txt"
acc "scripts/admin.acs" "acs/admin.o"
IF EXIST "%CD%\scripts\acs.err" MOVE /Y "%CD%\scripts\acs.err" "err_admin.txt"
acc "scripts/hints.acs" "acs/hints.o"
IF EXIST "%CD%\scripts\acs.err" MOVE /Y "%CD%\scripts\acs.err" "err_hints.txt"
acc "scripts/vote.acs" "acs/vote.o"
IF EXIST "%CD%\scripts\acs.err" MOVE /Y "%CD%\scripts\acs.err" "err_vote.txt"
acc "scripts/cvarset.acs" "acs/cvarset.o"
IF EXIST "%CD%\scripts\acs.err" MOVE /Y "%CD%\scripts\acs.err" "err_cvarset.txt"
acc "scripts/pickup.acs" "acs/pickup.o"
IF EXIST "%CD%\scripts\acs.err" MOVE /Y "%CD%\scripts\acs.err" "err_pickup.txt"
acc "scripts/paths.acs" "acs/paths.o"
IF EXIST "%CD%\scripts\acs.err" MOVE /Y "%CD%\scripts\acs.err" "err_paths.txt"
%SEVENZAEXE% a -tzip "%OUTDIR%\jm_core%FILEVERSION%.pk3" * -r -xr!*.dbs -xr!*.backup1 -xr!*.backup2 -xr!*.backup3 -xr!*.bak -xr!err_*.txt
POPD
