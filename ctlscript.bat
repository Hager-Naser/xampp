@echo off
rem START or STOP Services
rem ----------------------------------
rem Check if argument is STOP or START

if not ""%1"" == ""START"" goto stop

if exist E:\programs\xampp\hypersonic\scripts\ctl.bat (start /MIN /B E:\programs\xampp\server\hsql-sample-database\scripts\ctl.bat START)
if exist E:\programs\xampp\ingres\scripts\ctl.bat (start /MIN /B E:\programs\xampp\ingres\scripts\ctl.bat START)
if exist E:\programs\xampp\mysql\scripts\ctl.bat (start /MIN /B E:\programs\xampp\mysql\scripts\ctl.bat START)
if exist E:\programs\xampp\postgresql\scripts\ctl.bat (start /MIN /B E:\programs\xampp\postgresql\scripts\ctl.bat START)
if exist E:\programs\xampp\apache\scripts\ctl.bat (start /MIN /B E:\programs\xampp\apache\scripts\ctl.bat START)
if exist E:\programs\xampp\openoffice\scripts\ctl.bat (start /MIN /B E:\programs\xampp\openoffice\scripts\ctl.bat START)
if exist E:\programs\xampp\apache-tomcat\scripts\ctl.bat (start /MIN /B E:\programs\xampp\apache-tomcat\scripts\ctl.bat START)
if exist E:\programs\xampp\resin\scripts\ctl.bat (start /MIN /B E:\programs\xampp\resin\scripts\ctl.bat START)
if exist E:\programs\xampp\jetty\scripts\ctl.bat (start /MIN /B E:\programs\xampp\jetty\scripts\ctl.bat START)
if exist E:\programs\xampp\subversion\scripts\ctl.bat (start /MIN /B E:\programs\xampp\subversion\scripts\ctl.bat START)
rem RUBY_APPLICATION_START
if exist E:\programs\xampp\lucene\scripts\ctl.bat (start /MIN /B E:\programs\xampp\lucene\scripts\ctl.bat START)
if exist E:\programs\xampp\third_application\scripts\ctl.bat (start /MIN /B E:\programs\xampp\third_application\scripts\ctl.bat START)
goto end

:stop
echo "Stopping services ..."
if exist E:\programs\xampp\third_application\scripts\ctl.bat (start /MIN /B E:\programs\xampp\third_application\scripts\ctl.bat STOP)
if exist E:\programs\xampp\lucene\scripts\ctl.bat (start /MIN /B E:\programs\xampp\lucene\scripts\ctl.bat STOP)
rem RUBY_APPLICATION_STOP
if exist E:\programs\xampp\subversion\scripts\ctl.bat (start /MIN /B E:\programs\xampp\subversion\scripts\ctl.bat STOP)
if exist E:\programs\xampp\jetty\scripts\ctl.bat (start /MIN /B E:\programs\xampp\jetty\scripts\ctl.bat STOP)
if exist E:\programs\xampp\hypersonic\scripts\ctl.bat (start /MIN /B E:\programs\xampp\server\hsql-sample-database\scripts\ctl.bat STOP)
if exist E:\programs\xampp\resin\scripts\ctl.bat (start /MIN /B E:\programs\xampp\resin\scripts\ctl.bat STOP)
if exist E:\programs\xampp\apache-tomcat\scripts\ctl.bat (start /MIN /B /WAIT E:\programs\xampp\apache-tomcat\scripts\ctl.bat STOP)
if exist E:\programs\xampp\openoffice\scripts\ctl.bat (start /MIN /B E:\programs\xampp\openoffice\scripts\ctl.bat STOP)
if exist E:\programs\xampp\apache\scripts\ctl.bat (start /MIN /B E:\programs\xampp\apache\scripts\ctl.bat STOP)
if exist E:\programs\xampp\ingres\scripts\ctl.bat (start /MIN /B E:\programs\xampp\ingres\scripts\ctl.bat STOP)
if exist E:\programs\xampp\mysql\scripts\ctl.bat (start /MIN /B E:\programs\xampp\mysql\scripts\ctl.bat STOP)
if exist E:\programs\xampp\postgresql\scripts\ctl.bat (start /MIN /B E:\programs\xampp\postgresql\scripts\ctl.bat STOP)

:end

