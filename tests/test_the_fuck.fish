test "the_fuck function is defined"
    (functions -q the_fuck; echo $status) = 0

test "the_fuck triggers on fish_postexec"
    (functions --details --verbose the_fuck | string match -r "Event: fish_postexec" | string trim) = "Event: fish_postexec"
