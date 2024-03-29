on is_running(appName)
    tell application "System Events" to (name of processes) contains appName
end is_running

set iTermRunning to is_running("iTerm2")

tell application "iTerm"
    activate
    if not (iTermRunning) then
        delay 0.5
        close the current window
    end if
    create window with profile "Clip"
end tell
