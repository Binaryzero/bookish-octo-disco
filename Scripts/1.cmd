@echo off
echo Searching for Office Documents, PDFs, and ZIP files...

for /r "C:\" %%f in (*.doc *.docx *.xls *.xlsx *.ppt *.pptx *.pdf *.zip *.xlsb *.xlsm *.xltx *.xltm *.pptm *.ppsm *.potx *.potm) do (
  echo Found: %%f
  set "file=%%f"
  set "pathfound=%file:~0,-5%"
  echo "File name: %pathfound%"
  echo "File extension: %file:~-4%"
  echo.
)
pause
