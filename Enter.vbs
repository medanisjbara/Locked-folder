command = "636D642E657865202F4320636420257573657270726F66696C65255C446F63756D656E74735C224D7920786368696C64222026262073746172742E"
strInputString = InputBox("Enter your password Mr. Firas","Password to to open My xchild")
strInputHex = ""
for i=1 To len(strInputString)
	strInputHex=strInputHex +hex(asc(mid(strInputString,i,1)))
next
if strInputHex="7374657665" then
	Set oShell = WScript.CreateObject ("WScript.Shell")
	oShell.run decodehex(command)
else
	MsgBox "Uncorrect password, BARA ZAMER"
end if

Function decodehex(x)
	for i=1 To len(x) step 2
		decodehex = decodehex+ chr(CLng("&h"&mid(x,i,2)))
	next
End Function
