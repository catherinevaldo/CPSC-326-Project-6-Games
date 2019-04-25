# checkers.tcl
# Katie Wraith, Caterina Valdovinos, and Elizabeth Larson
# Two-player game of checkers

set xcor 50
set ycor 50
set p1score 0
set p2score 0
canvas .checkerBoard -background yellow -width 400 -height 450 
pack .checkerBoard

#copied from internet... fix!
.checkerBoard bind all <1> {set c(X) [.checkerBoard canvasx %x]; set c(Y) [.checkerBoard canvasy %y]}
.checkerBoard bind p1Move <B1-Motion> {p1Move %x %y}
# .checkerBoard bind all <1> {set c(X) [.checkerBoard canvasx %x]; set c(Y) [.checkerBoard canvasy %y]}
# .checkerBoard bind p2Move <B1-Motion> {p2Move %x %y}

# Creates the light brown squares found on a checker board
proc makeLightSquare {x y} {
  global xcor ycor
  .checkerBoard create rectangle $x $y [expr {$x + $xcor}] [expr {$y + $ycor}] -fill #CAB798
}

# Creates the dark brown squares found on a checker board
proc makeDarkSquare {x y} {
  global xcor ycor
  .checkerBoard create rectangle $x $y [expr {$x + $xcor}] [expr {$y + $ycor}] -fill #655B4C
}

# Creates a white piece for player one
proc makeP1Piece {x y player} {
  global xcor ycor
  .checkerBoard create oval [expr {$x + 2}] [expr {$y + 2}] [expr {$x + $xcor - 3}] [expr {$y + $ycor - 3}] -fill white -tags [concat $player p1Move]
}

# Creates a red piece for player two
proc makeP2Piece {x y} {
  global xcor ycor
  .checkerBoard create oval [expr {$x + 2}] [expr {$y + 2}] [expr {$x + $xcor - 3}] [expr {$y + $ycor - 3}] -fill #D22F32
}
  
# Initalizes the score board
proc setupScoreBoard {} {
  global p1score p2score
  .checkerBoard create text 50 30 -fill black -justify left -text "Player 1: "
  .checkerBoard create text 100 30 -fill black -justify left -text $p1score
  .checkerBoard create text 325 30 -fill black -justify right -text "Player 2: "
  .checkerBoard create text 375 30 -fill black -justify right -text $p2score
}

# Updates the score board as piecs are jumped
proc updateScoreBoard {player} {
  global p1score p2score
  if {$player == 1} {
    incr p1score
  }
  if {$player == 2} {
    incr p2score
  }
  # Replaces the current scoreboard with updates scores
  .checkerBoard create rectangle 0 0 450 50 -fill yellow
  .checkerBoard create text 50 30 -fill black -justify left -text "Player 1: "
  .checkerBoard create text 100 30 -fill black -justify left -text $p1score
  .checkerBoard create text 325 30 -fill black -justify right -text "Player 2: "
  .checkerBoard create text 375 30 -fill black -justify right -text $p2score
}

# Arrange the checkerboard pattern of the board + sets up the pieces for both players
proc setUpBoard {} {
  global xcor ycor
  setupScoreBoard
  for {set i 0; set y 0} {$i < 9} {incr i; incr y $ycor} {
    for {set j 0; set x 0} {$j < 8} {incr j; incr x $xcor} {
      # Puts a red square down every other square
      if {$i > 0} {
        if {$i % 2 == 1 && $j % 2 == 0} {
          makeLightSquare $x $y
        }
        if {$i % 2 == 0 && $j % 2 == 1} {
          makeLightSquare $x $y
        }
        if {$i % 2 == 0 && $j % 2 == 0} {
          makeDarkSquare $x $y
        }
        if {$i % 2 == 1 && $j % 2 == 1} {
          makeDarkSquare $x $y
        }
	   
        # Arrange the pieces for both players
        if {$i % 2 == 1 && $j % 2 == 1} {
          if {$i < 4} {
            makeP1Piece $x $y player1
          }
          if {$i >= 6} {
            makeP2Piece $x $y
          }
        }
        if {$i % 2 == 0 && $j % 2 == 0} {
          if {$i < 3} {
            makeP1Piece $x $y player1
          }
          if {$i >= 5} {
            makeP2Piece $x $y
          }
        }
      }
    }
  }
}

#copied from internet... fix!
proc p1Move {x y} {
  global c
  set x  [.checkerBoard canvasx $x]
  set y  [.checkerBoard canvasy $y]
  set id [.checkerBoard find withtag current]
  .checkerBoard move $id [expr {$x-$c(X)}] [expr {$y-$c(Y)}]
  .checkerBoard raise $id
  set c(X) $x; set c(Y) $y
}

# #copied from internet... fix!
# proc p2Move {x y} {
  # global c
  # set x  [.checkerBoard canvasx $x]
  # set y  [.checkerBoard canvasy $y]
  # set id [.checkerBoard find withtag current]
  # .checkerBoard move $id [expr {$x - $c(X)}] [expr {$y - $c(Y)}]
  # .checkerBoard raise $id
  # set c(X) $x; set c(Y) $y
# }

# proc p1CheckMate {} {
# }

# proc p2CheckMate {} {
# }

# proc hasBeenJumped {} {
  # if {} {
    # updateScoreBoard {1}
	# pieceDisappear 
  # }
  # if {} {
    # updateScoreBoard {2}
	# pieceDisappear
  # }
# }

# proc pieceDisappear {} {
  # global xcor ycor
  # .checkerBoard create oval [expr {$x + 2}] [expr {$y + 2}] [expr {$x + $xcor - 3}] [expr {$y + $ycor-3}] -fill #655B4C -tags [concat $args p1Move]
# }

proc playGame {} {
  global p1score p2score

  # updateScoreBoard {1}
  # updateScoreBoard {1}
  # updateScoreBoard {1}
  # updateScoreBoard {1}
  # updateScoreBoard {1}
  # updateScoreBoard {1}
  # updateScoreBoard {1}
  # updateScoreBoard {1}
  # updateScoreBoard {1}
  # updateScoreBoard {1}
  # updateScoreBoard {1}
  # updateScoreBoard {1}

  # updateScoreBoard {2}
  # updateScoreBoard {2}
  # updateScoreBoard {2}
  # updateScoreBoard {2}
  # updateScoreBoard {2}
  # updateScoreBoard {2}
  # updateScoreBoard {2}
  # updateScoreBoard {2}
  # updateScoreBoard {2}
  # updateScoreBoard {2}
  # updateScoreBoard {2}
  # updateScoreBoard {2}
  
  winnerScreen
  # while {$p1score < 12 || $p2score < 12} {
    # p1Move
	# hasBeenJumped
	# p2Move
	# hasBeenJumped
  # }

}

# After all of the pieces for one player have been jumped, a winner is declared
proc winnerScreen {} {
  global p1score p2score
  # Player one won
  if {$p1score == 12} {
    .checkerBoard create rectangle 0 0 400 450 -fill white
    .checkerBoard create text 200 200 -fill black -justify center -text "Player 1 wins!" -font {Helvetica -30 bold}
  }
  # Player two won
  if {$p2score == 12} {
    .checkerBoard create rectangle 0 0 400 450 -fill red
    .checkerBoard create text 200 200 -fill white -justify center -text "Player 2 wins!" -font {Helvetica -30 bold}
  }
}

setUpBoard
playGame
