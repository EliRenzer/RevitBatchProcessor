@echo off
set IronPythonFolderPathA="C:\Program Files\IronPython 2.7"
set IronPythonFolderPathB="C:\Program Files\Autodesk"

if EXIST %IronPythonFolderPathA% (
  set IronPythonFolderPath=%IronPythonFolderPathA%
) else (
  if EXIST %IronPythonFolderPathB% (
    set IronPythonFolderPath=%IronPythonFolderPathB%
  ) else (
    echo.
    echo ERROR: could not locate an IronPython installation folder!
    exit /b 1
  )
)

set IronPythonOptions=-X:AutoIndent -X:TabCompletion -X:ColorfulConsole

%IronPythonFolderPath%\ipy.exe %IronPythonOptions% %*
