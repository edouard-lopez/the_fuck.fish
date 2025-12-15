set --global the_fuck_version 0.1.1
set --universal THE_FUCK_ENABLED 1

functions --query the_fuck # attach event handler

# Clean up variables
function _the_fuck_uninstall --on-event the_fuck_uninstall
  set --erase the_fuck_version
  set --erase --universal THE_FUCK_ENABLED
end
