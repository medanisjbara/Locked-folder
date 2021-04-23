Set oShell = WScript.CreateObject ("WScript.Shell")
enterF = "636D642E657865202F4320636420257573657270726F66696C65255C446F63756D656E74735C224D7920786368696C64222026262073746172742E"
makeF = ""
passhex = "7374657665" 

input = InputBox("Enter your password Mr. Firas","Password to to open My xchild",encodehex(makeF))

if encodehex(input)=passhex then
	Inputbox decodehex(command),decodehex(command),decodehex(command)
elseif encodehex(input)=exception then
	MsgBox ""
else
	MsgBox "Uncorrect password, BARA ZAMER"
end if

Function decodehex(x)
	for i=1 To len(x) step 2
		decodehex = decodehex+ chr(CLng("&h"&mid(x,i,2)))
	next
End Function

Function encodehex(x)
	for i=1 To len(x)
		encodehex=encodehex+hex(asc(mid(x,i,1)))
	next
End Function
