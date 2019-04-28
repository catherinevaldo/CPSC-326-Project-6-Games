# eightball.tcl
# Katie Wraith, Caterina Valdovinos, and Elizabeth Larson
# Simple magic eight ball simulation
# Prompts user input and displays an answer to their question upon pressing a button

wm title . "8-Ball"
frame .eightBall -padx 5 -pady 5
pack .eightBall -fill both -expand 1

# Sets up the user input field + button that triggers the ball to "shake"
proc playGame {} {
  grid [ label .eightBall.welcome -text "Got a question? Ask the magic eight ball!" ]
  grid [ button .eightBall.shakeBall -text "Shake!" -command shakeBall ] -column 4 -row 1 -sticky w -columnspan 2
  set question [ entry .eightBall.userInput -textvariable userInput -width 30 -state normal ]
  grid $question -column 0 -row 1
}

# Randomly selects one of the 20 answers
proc shakeBall {} {
  set randomNumber [expr {int(rand()*20)}]
  
  # Affirmative answers
  if {$randomNumber == 1} { grid [ label .eightBall.answer -text "It is certain." ] }
  if {$randomNumber == 2} { grid [ label .eightBall.answer -text "It is decidedly so." ] }
  if {$randomNumber == 3} { grid [ label .eightBall.answer -text "Without a doubt." ] }
  if {$randomNumber == 4} { grid [ label .eightBall.answer -text "Yes - definitely." ] }
  if {$randomNumber == 5} { grid [ label .eightBall.answer -text "You may rely on it." ] }
  if {$randomNumber == 6} { grid [ label .eightBall.answer -text "As I see it, yes." ] }
  if {$randomNumber == 7} { grid [ label .eightBall.answer -text "Most likely." ] }
  if {$randomNumber == 8} { grid [ label .eightBall.answer -text "Outlook good." ]}
  if {$randomNumber == 9} { grid [ label .eightBall.answer -text "Yes." ] }
  if {$randomNumber == 10} { grid [ label .eightBall.answer -text "Signs point to yes." ] }
  
  # Non-committal answers
  if {$randomNumber == 11} { grid [ label .eightBall.answer -text "Reply hazy, try again." ] }
  if {$randomNumber == 12} { grid [ label .eightBall.answer -text "Ask again later." ] }
  if {$randomNumber == 13} { grid [ label .eightBall.answer -text "Better not tell you now." ] }
  if {$randomNumber == 14} { grid [ label .eightBall.answer -text "Cannot predict now." ] }
  if {$randomNumber == 15} { grid [ label .eightBall.answer -text "Concentrate and ask again." ] }

  # Negative answers
  if {$randomNumber == 16} { grid [ label .eightBall.answer -text "Don't count on it." ] }
  if {$randomNumber == 17} { grid [ label .eightBall.answer -text "My reply is no." ] }
  if {$randomNumber == 18} { grid [ label .eightBall.answer -text "My sources say no." ] }
  if {$randomNumber == 19} { grid [ label .eightBall.answer -text "Outlook not so good." ] }
  if {$randomNumber == 20} { grid [ label .eightBall.answer -text "Very doubtful." ] }
}

playGame
