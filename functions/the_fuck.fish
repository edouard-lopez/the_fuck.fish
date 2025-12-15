# create a thefuck function that trigger on posterror event
function the_fuck --on-event fish_postexec \
    --description "Automatically correct the last command using thefuck" \
    --argument-names _commandline

    if test $status -ne 0
        eval (thefuck $_commandline)
    end
end
