; None of these work
;   winget install Microsoft.PowerToys --override "/install C:\Programs\Install"
;   winget install Microsoft.PowerToys --override "TARGETDIR=C:\Programs\TARGETDIR"
;   winget install Microsoft.PowerToys --override "INSTALLLOCATION=C:\Programs\INSTALLLOCATION"
;   winget install Microsoft.PowerToys --override "INSTALLDIR=C:\Programs\INSTALLDIR"

; Start installer
Run, winget install Microsoft.PowerToys -i
WinWait, PowerToys (Preview) x64 Setup

; Click the options button and wait for it to load
ControlClick, Button3, PowerToys (Preview) x64 Setup
loop {
    controlget state, enabled,, Button7, PowerToys (Preview) x64 Setup
} until (state)

; Type in correct installation path
ControlSend, Edit1, {ctrl down}a{ctrl up}, PowerToys (Preview) x64 Setup
ControlSend, Edit1, C:\Programs\PowerToys, PowerToys (Preview) x64 Setup

; Click OK button
ControlClick, Button7, PowerToys (Preview) x64 Setup
loop {
    controlget state, enabled,, Button2, PowerToys (Preview) x64 Setup
} until (state)

; Click agree to license agreement button
ControlClick, Button2, PowerToys (Preview) x64 Setup

; Click install button
ControlClick, Button4, PowerToys (Preview) x64 Setup

; Wait for installation to complete
loop {
    controlget state, enabled,, Button19, PowerToys (Preview) x64 Setup
} until (state)

; Click close
ControlClick, Button19, PowerToys (Preview) x64 Setup
