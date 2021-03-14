@ECHO OFF
REM 結合バッチファイル：div2.exe により生成

ECHO 分割されたファイルを復元します

IF NOT EXIST "デジ推~3.001"  GOTO ERR1
IF NOT EXIST "デジ推~3.002"  GOTO ERR1
IF NOT EXIST "デジ推~3.003"  GOTO ERR1
IF NOT EXIST "デジ推~3.004"  GOTO ERR1
IF NOT EXIST "デジ推~3.005"  GOTO ERR1
IF     EXIST "デジ推KickOff2021上_低解像度.mp4"  GOTO ERR2

COPY "デジ推~3.001" "デジ推~3.MP4"
IF ERRORLEVEL 1 GOTO ERR3
COPY /B "デジ推~3.MP4"+"デジ推~3.002"+"デジ推~3.003"+"デジ推~3.004"+"デジ推~3.005"
IF ERRORLEVEL 1 GOTO ERR3

DEL "デジ推~3.001"
DEL "デジ推~3.002"
DEL "デジ推~3.003"
DEL "デジ推~3.004"
DEL "デジ推~3.005"


REN "デジ推~3.MP4" "デジ推KickOff2021上_低解像度.mp4"

ECHO このバッチファイルも消してください
GOTO END

:ERR1
ECHO ファイルが一部存在しません
ECHO 処理を中止します
GOTO END

:ERR2
ECHO 復元先のファイルが既に存在しています
ECHO 処理を中止します
GOTO END

:ERR3
ECHO 復元に失敗しました
ECHO 処理を中止します
GOTO END

:END
ECHO 終了するには、何かキーを押してください
PAUSE >NUL

