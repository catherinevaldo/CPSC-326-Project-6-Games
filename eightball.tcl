# 04-08-19 progress on 8-ball
# Elizabeth Larson
# Rough draft...some sort of visual component (actual ball?), needs user input, maybe fix efficiency of shakeBall,
#               fixing add_button and add_frame so it's not plagerized

# 8ball game

destroy  .buttons
toplevel .buttons
wm title .buttons "8-ball game"

proc add_frame title {
  global frame count
  set frame .buttons.frame$count
  frame $frame -border 2 -relief groove
  label $frame.label -text $title
  pack  $frame       -side left -padx 2 -pady 2 -anchor n -fill both
  pack  $frame.label -side top  -padx 2 -pady 2
  incr count
}

proc add_button { title command } {
  global frame count
  button $frame.$count -text $title -command $command
  pack   $frame.$count -side top -pady 1 -padx 1 -fill x
  incr count
}

proc shakeBall {} {
  set randomNumber [expr {int(rand()*20)}]
  
  # Affirmative answers
  if {$randomNumber == 1} { add_frame "It is certain." }
  if {$randomNumber == 2} { add_frame "It is decidedly so." }
  if {$randomNumber == 3} { add_frame "Without a doubt." }
  if {$randomNumber == 4} { add_frame "Yes - definitely." }
  if {$randomNumber == 5} { add_frame "You may rely on it." }
  if {$randomNumber == 6} { add_frame "As I see it, yes." }
  if {$randomNumber == 7} { add_frame "Most likely." }
  if {$randomNumber == 8} { add_frame "Outlook good." }
  if {$randomNumber == 9} { add_frame "Yes." }
  if {$randomNumber == 10} { add_frame "Signs point to yes." }
  
  # Non-committal answers
  if {$randomNumber == 11} { add_frame "Reply hazy, try again." }
  if {$randomNumber == 12} { add_frame "Ask again later." }
  if {$randomNumber == 13} { add_frame "Better not tell you now." }
  if {$randomNumber == 14} { add_frame "Cannot predict now." }
  if {$randomNumber == 15} { add_frame "Concentrate and ask again." }

  # Negative answers
  if {$randomNumber == 16} { add_frame "Don't count on it." }
  if {$randomNumber == 17} { add_frame "My reply is no." }
  if {$randomNumber == 18} { add_frame "My sources say no." }
  if {$randomNumber == 19} { add_frame "Outlook not so good." }
  if {$randomNumber == 20} { add_frame "Very doubtful." }
}

add_frame "What's your question?"
add_frame ""
add_button "Shake the 8-ball"     { shakeBall }
