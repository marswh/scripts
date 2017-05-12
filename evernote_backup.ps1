$date = Get-Date -format yyyyMMddHHmmss

cd 'C:\Program Files (x86)\Evernote\Evernote'

.\ENScript.exe exportNotes /q any /f "evernote_$date.bak.enex"