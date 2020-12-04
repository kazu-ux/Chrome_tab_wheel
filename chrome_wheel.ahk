;; Wheel Scroll Tabs for Google Chrome 

;変数を呼び出す際は、%変数名%にする

#IfWinActive ahk_exe chrome.exe
 ~$WheelDown:: 
 ~$WheelUp:: 
    MouseGetPos,, yaxis
    ToolTip, %yaxis%, , ,
    If (yaxis < 40 && yaxis > 0)
    IfEqual,A_ThisHotkey,~$WheelDown, Send ^{PgDn} 
                                 Else Send ^{PgUp} 
Return 
#IfWinActive