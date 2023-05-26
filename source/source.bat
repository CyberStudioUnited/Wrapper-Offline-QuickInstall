::
::YAwzoRdxOk+EWAjk
::fBw5plQjdCeDJH2L40w8JxpQXziVLmqqFrAOpuH44Io=
::YAwzuBVtJxjWCl3EqQJgSA==
::ZR4luwNxJguZRRnk
::Yhs/ulQjdF+5
::cxAkpRVqdFKZSDk=
::cBs/ulQjdF+5
::ZR41oxFsdFKZSDk=
::eBoioBt6dFKZSDk=
::cRo6pxp7LAbNWATEpCI=
::egkzugNsPRvcWATEpCI=
::dAsiuh18IRvcCxnZtBJQ
::cRYluBh/LU+EWAnk
::YxY4rhs+aU+IeA==
::cxY6rQJ7JhzQF1fEqQJhZksaHErSXA==
::ZQ05rAF9IBncCkqN+0xwdVsFAlTMbCXqZg==
::ZQ05rAF9IAHYFVzEqQIZJghATQiOfFyoB6UM7fq7wOyBrkQTUYI=
::eg0/rx1wNQPfEVWB+kM9LVsJDC2ML3+7Crlc3/r6//qCsA0yUuQzcYHeug==
::fBEirQZwNQPfEVWB+kM9LVsJDDSQM2G/BaFczeno6oo=
::cRolqwZ3JBvQF1fEqQIRJltRTRebfHy7H/UI56jy4fmTo0ERFOMxYc/N36adKe8dqkriNaF3+TpOl4sJFBJLalzL
::dhA7uBVwLU+EWHqI4UcjJx1AAyiDJnK3B7sG5+H/jw==
::YQ03rBFzNR3SWATEw1AxOAtRXl7CE228CrwS7Yg=
::dhAmsQZ3MwfNWATEw1AxOAtRXl7CE228CrwS7Yg=
::ZQ0/vhVqMQ3MEVWAtB9wBhQ0
::Zg8zqx1/OA3MEVWAtB9wBhQ0
::dhA7pRFwIByZRRmttEY/JlxADAuVMiutFLQM+O3pr+WBpEEUWudxGA==
::Zh4grVQjdCyDJGyX8VAjFBdVVh2PAES0A5EO4f7+086CsUYJW/IDUYHIzrWCLKAk+ET0ZZM/llVcnscFAh4WewquDg==
::YB416Ek+ZW8=
::
::
::978f952a14a936cc963da21a135fa983
@echo off
title Wrapper Offline 2.0.0 Installer
echo This will install wrapper offline onto your computer...
set /p DUMMY=Hit ENTER to continue...
echo Where do you want to install Wrapper Offline?
set /p input=""
cd %input%
echo What version would you like to install?
echo 1. v2.0.0
echo 2. v1.3.0
echo 3. v1.2.3
echo 4. v2.0.0 pre-release
set choice=
set /p choice=Type the version you want to download: 
:start
if '%choice%'=='1' goto wo2
if '%choice%'=='2' goto wo1.3
if '%choice%'=='3' goto wo1.2
if '%choice%'=='4' goto wopre
echo "%choice%" is not a version number, To download a version, type in the number on the left side of ther version you would like to install.
echo.
goto start
:wo2
echo Downloading Wrapper Offline 2.0.0 to %input%...
curl -L https://github.com/Wrapper-Offline/Wrapper-Offline/releases/download/v2.0.0/wrapper-offline-win32-x64.zip > wrapper-offline(latest).zip
goto end
:wo1.3
echo Downloading Wrapper Offline 1.3.0 to %input%...
curl -L https://github.com/Wrapper-Offline/Wrapper-Offline/archive/refs/tags/v1.3.0.zip > wrapper-offline1.3.0.zip
goto end
:wo1.2
echo Downloading Wrapper Offline 1.2.3 to %input%...
curl -L https://github.com/Wrapper-Offline/Wrapper-Offline/archive/refs/tags/v1.2.3.zip > wrapper-offline1.2.3.zip
goto end
:wopre
echo Downloading Wrapper Offline 2.0.0 pre-release to %input%...
curl -L https://github.com/Wrapper-Offline/Wrapper-Offline/archive/refs/tags/pre2.0.0.zip > wrapper-offline2beta.zip
goto end

:end
echo Wrapper Offline has been successfully installed on %input%.
set /p DUMMY=Hit ENTER to exit...
