hspoon_list = {
  "AClock",
  "CountDown",
  "HCalendar",
  "HSearch",
  "SpeedMenu",
  "WinWin",
  "FnMate"
}

hsapp_list = {
  {key = "a", name = "Google Chrome"},
  {key = "s", name = "Spotify"},
  {key = "d", name = "Discord"},
  {key = "n", name = "Notes"},
  {key = "i", name = "/Users/avmohan/Applications/JetBrains Toolbox/IntelliJ IDEA Community Release.app"},
  {key = "w", name = "Slack"},
  {key = "p", name = "Pomotroid"},
  {key = "c", name = "Visual Studio Code"},
  {key = "t", name = "Todoist"},
  {key = "v", name = "WhatsApp"},
  {key = "r", name = "Robo 3T"},
  {key = "z", name = "Zoom.us"},
  {key = "o", name = "Microsoft OneNote"},
  {key = "m", id = "com.apple.ActivityMonitor"},
  {key = ",", id = "com.apple.systempreferences"}
}

-- Disable alt-L lock
hslock_keys = {"", ""}

-- Disconnect vpn prior to system sleep
function sleepWatch(eventType)
    if (eventType == hs.caffeinate.watcher.systemWillSleep) then
        hs.execute("scutil --nc stop `scutil --nc list | grep Connected | awk '{print $3}'`")
    end
end
sleepWatcher = hs.caffeinate.watcher.new(sleepWatch)
sleepWatcher:start()
