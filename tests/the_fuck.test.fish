source functions/the_fuck.fish

@test "the_fuck function is defined" (
    functions -q the_fuck
) $status = 0

@test "the_fuck triggers on fish_postexec" (
    functions the_fuck \
    | string match -r -- "--on-event fish_postexec" \
    | string trim
) = "--on-event fish_postexec"

@test "the_fuck does not run when THE_FUCK_ENABLED is 0" (
    function thefuck; echo "echo called"; end
    set THE_FUCK_ENABLED 0
    
    false
    the_fuck "ls"
) $status = 0

@test "the_fuck runs when THE_FUCK_ENABLED is 1" (
    function thefuck; echo "echo called"; end
    set THE_FUCK_ENABLED 1

    false
    the_fuck "ls"
) = "called"
