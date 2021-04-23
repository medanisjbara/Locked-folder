Sfolder = "%appdata%\""Password Protected Folder"""


input = InputBox ("Write the password that will be hardcoded to Key.vbs","Creating a password.","")
key = getkeyvbs(encodehex(input))
SaveToFile Key
makdir 


Sub makdir
	Set oShell = WScript.CreateObject ("WScript.Shell")
	oShell.run "cmd.exe /C mkdir "&Sfolder&" && attrib +h "&Sfolder
End Sub
Sub SaveToFile(key)
	Set objFileToWrite = CreateObject("Scripting.FileSystemObject").OpenTextFile("Key.vbs",2,true)
	objFileToWrite.WriteLine(key)
	objFileToWrite.Close
End Sub

Function encodehex(x)
	for i=1 To len(x)
		encodehex=encodehex+hex(asc(mid(x,i,1)))
	next
End Function

Function getkeyvbs (pass) 	
	getkeyvbs = "command = ""636D642E657865202F4320636420"&encodehex(Sfolder)&"2026262073746172742E"""	&chr(13)&chr(10)&_
	"strInputString = InputBox(""Enter your password"",""Password to to open folder"")"			&chr(13)&chr(10)&_
	""													&chr(13)&chr(10)&_
	"if encodehex(strInputString)="""& pass &""" then"							&chr(13)&chr(10)&_
	"	Set oShell = WScript.CreateObject (""WScript.Shell"")"						&chr(13)&chr(10)&_
	"	oShell.run decodehex(command)"									&chr(13)&chr(10)&_
	"else"													&chr(13)&chr(10)&_
	"	MsgBox ""Uncorrect password"""									&chr(13)&chr(10)&_
	"end if"												&chr(13)&chr(10)&_
	""													&chr(13)&chr(10)&_
	"Function encodehex(x)"											&chr(13)&chr(10)&_
	"	for i=1 To len(x)"										&chr(13)&chr(10)&_
	"		encodehex=encodehex +hex(asc(mid(x,i,1)))"						&chr(13)&chr(10)&_
	"	next"												&chr(13)&chr(10)&_
	"End Function"												&chr(13)&chr(10)&_
	""													&chr(13)&chr(10)&_
	"Function decodehex(x)"											&chr(13)&chr(10)&_
	"	for i=1 To len(x) step 2"									&chr(13)&chr(10)&_
	"		decodehex = decodehex+ chr(CLng(""&h""&mid(x,i,2)))"					&chr(13)&chr(10)&_
	"	next"												&chr(13)&chr(10)&_
	"End Function"
End Function
