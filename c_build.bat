@echo off
setlocal EnableDelayedExpansion
pushd %~dp1

del %~n1.err %~n1.exe > nul 2>&1

gcc -finput-charset=UTF-8 -fexec-charset=CP932 -o %~n1.exe %1 2> %~n1.err

if !errorlevel! == 0 (
	type %~n1.err
	%~n1.exe
) else (
	type %~n1.err
)

pause

del %~n1.err %~n1.exe > nul 2>&1

popd
endlocal
exit
