# 04-08-19 progress on 8-ball
# Elizabeth Larson
#VERY rough draft...still need to create the ball, figure out randomizing the messages, and user input

destroy  .buttons
toplevel .buttons
wm title .buttons "8-ball game"
set count 0
set color #000000
set messages { "Yes" "No" "Maybe" }
proc add_frame title {
  global frame count
  set frame .buttons.frame$count
  frame $frame -border 2 -relief groove
  label $frame.label -text $title
  pack  $frame       -side left -padx 2 -pady 2 -anchor n -fill both
  pack  $frame.label -side top  -padx 2 -pady 2
  incr count
}
proc add_button {title command} {
  global frame count
  button $frame.$count -text $title -command $command
  pack   $frame.$count -side top -pady 1 -padx 1 -fill x
  incr count
}
proc makeEightBall {color} {
  #pathName create oval x1 y1 x2 y2 ?option value ...?
}

add_frame  "What's your question?"
makeEightBall {$color}
add_button "Shake the 8-ball"     {shake $messages}

proc shake {messages} {
  puts $messages
}
