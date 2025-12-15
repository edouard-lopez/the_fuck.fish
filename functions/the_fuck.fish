# create a thefuck function that trigger on posterror event
function the_fuck --on-event fish_postexec \
    --description "Automatically correct the last command using thefuck" \
    --argument-names _commandline
    set -l last_status $status

    if test "$THE_FUCK_ENABLED" != 1
        return
    end

    if test $last_status -ne 0
        eval (thefuck $_commandline)
    end
end
