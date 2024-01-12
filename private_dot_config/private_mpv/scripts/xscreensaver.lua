-- Disable screensaver while mpv is running.
-- Based on https://wiki.archlinux.org/title/XScreenSaver#mpv
local utils = require 'mp.utils'
mp.add_periodic_timer(30, function()
    utils.subprocess({args={"xscreensaver-command", "-deactivate"}})
end)
