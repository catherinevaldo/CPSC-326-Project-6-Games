# checkers.tcl
# Katie Wraith, Caterina Valdovinos, and Elizabeth Larson
# Two-player game of checkers
# Accounts for major rules of checkers:
#    - when a player's piece diagonally crosses over the other player's,
#      they capture the second player's piece
#    - if a player reaches the other end of the board, that piece is
#      declared king
#    - first player to get 12 points (capture all 12 of their opponent's
#      pieces) wins the game


# Button each player pushes when they're done moving
# This triggers a procedure that checks the validity of their move
grid [ button .turnStatus -text "Done Moving Piece" -command checkRules ] -column 4 -row 1 -sticky w -columnspan 2
pack .turnStatus -fill both -expand 1

canvas .checkerBoard -background yellow -width 400 -height 450 
pack .checkerBoard

# Global variables used throughout the program
set xcor 50
set ycor 50
set p1score 0
set p2score 0

# Creates 12 white pieces for player one
set p1piece1 [.checkerBoard create oval 50 50 100 100 -fill white]
set p1piece2 [.checkerBoard create oval 150 50 200 100 -fill white]
set p1piece3 [.checkerBoard create oval 250 50 300 100 -fill white]
set p1piece4 [.checkerBoard create oval 350 50 400 100 -fill white]
set p1piece5 [.checkerBoard create oval 0 100 50 150 -fill white]
set p1piece6 [.checkerBoard create oval 100 100 150 150 -fill white]
set p1piece7 [.checkerBoard create oval 200 100 250 150 -fill white]
set p1piece8 [.checkerBoard create oval 300 100 350 150 -fill white]
set p1piece9 [.checkerBoard create oval 50 150 100 200 -fill white]
set p1piece10 [.checkerBoard create oval 150 150 200 200 -fill white]
set p1piece11 [.checkerBoard create oval 250 150 300 200 -fill white]
set p1piece12 [.checkerBoard create oval 350 150 400 200 -fill white]

# Creates 12 red pieces for player two
set p2piece1 [.checkerBoard create oval 0 300 50 350 -fill #D22F32]
set p2piece2 [.checkerBoard create oval 100 300 150 350 -fill #D22F32]
set p2piece3 [.checkerBoard create oval 200 300 250 350 -fill #D22F32]
set p2piece4 [.checkerBoard create oval 300 300 350 350 -fill #D22F32]
set p2piece5 [.checkerBoard create oval 50 350 100 400 -fill #D22F32]
set p2piece6 [.checkerBoard create oval 150 350 200 400 -fill #D22F32]
set p2piece7 [.checkerBoard create oval 250 350 300 400 -fill #D22F32]
set p2piece8 [.checkerBoard create oval 350 350 400 400 -fill #D22F32]
set p2piece9 [.checkerBoard create oval 0 400 50 450 -fill #D22F32]
set p2piece10 [.checkerBoard create oval 100 400 150 450 -fill #D22F32]
set p2piece11 [.checkerBoard create oval 200 400 250 450 -fill #D22F32]
set p2piece12 [.checkerBoard create oval 300 400 350 450 -fill #D22F32]

# Stores the name of the moved piece after each turn
#   (player 1's first piece is the initialized case)
# Will be updated as the players move their pieces
set movedPiece 1

# Helper functions:
# Looks for the coordiantes of a certain piece + returns the repective spot
proc findCenter {piece} {
  set center [lindex [.checkerBoard coords $piece] 3]
  set center [expr {$center - 25}]
  return $center
}

proc findLeft {piece} {
  set left [lindex [.checkerBoard coords $piece] 0]
  return $left
}

proc findRight {piece} {
  set right [lindex [.checkerBoard coords $piece] 2]
  return $right
}

proc findBottom {piece} {
  set bottom [lindex [.checkerBoard coords $piece] 3]
  return $bottom
}

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
  
# Initalizes the score board
proc setupScoreBoard {} {
  global p1score p2score
  .checkerBoard create text 50 30 -fill black -justify left -text "Player 1: "
  .checkerBoard create text 100 30 -fill black -justify left -text $p1score
  .checkerBoard create text 325 30 -fill black -justify right -text "Player 2: "
  .checkerBoard create text 375 30 -fill black -justify right -text $p2score
}

# Updates the score board as pieces are jumped
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

# Creates the checkerboard pattern of the board
# Sets up the pieces for both players
proc setUpBoard {} {
  global xcor ycor
  setupScoreBoard
  for {set i 0; set y 0} {$i < 9} {incr i; incr y $ycor} {
    for {set j 0; set x 0} {$j < 8} {incr j; incr x $xcor} {
      # Staggers the two colored squares (every other square)
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
      }
	  # Arrange the pieces for both players
	  placePiecesOnBoard
    }
  }
}

# Changes the coordinates of the pieces based on the user's click and drag
proc movePiece {object x y} {
  global movedPiece
  global p1piece1 p1piece2 p1piece3 p1piece4
  global p1piece5 p1piece6 p1piece7 p1piece8
  global p1piece9 p1piece10 p1piece11 p1piece12
  global p2piece1 p2piece2 p2piece3 p2piece4
  global p2piece5 p2piece6 p2piece7 p2piece8
  global p2piece9 p2piece10 p2piece11 p2piece12
  
  .checkerBoard coords $object [expr $x-25] [expr $y-25] [expr $x+25] [expr $y+25]
  set movedPiece $object
}

# Brings the pieces into the foreground for the players to see
proc placePiecesOnBoard {} {
  global p1piece1 p1piece2 p1piece3 p1piece4
  global p1piece5 p1piece6 p1piece7 p1piece8
  global p1piece9 p1piece10 p1piece11 p1piece12
  global p2piece1 p2piece2 p2piece3 p2piece4
  global p2piece5 p2piece6 p2piece7 p2piece8
  global p2piece9 p2piece10 p2piece11 p2piece12
  
  .checkerBoard raise $p1piece1
  .checkerBoard raise $p1piece2
  .checkerBoard raise $p1piece3
  .checkerBoard raise $p1piece4
  .checkerBoard raise $p1piece5
  .checkerBoard raise $p1piece6
  .checkerBoard raise $p1piece7
  .checkerBoard raise $p1piece8
  .checkerBoard raise $p1piece9
  .checkerBoard raise $p1piece10
  .checkerBoard raise $p1piece11
  .checkerBoard raise $p1piece12
  
  .checkerBoard raise $p2piece1
  .checkerBoard raise $p2piece2
  .checkerBoard raise $p2piece3
  .checkerBoard raise $p2piece4
  .checkerBoard raise $p2piece5
  .checkerBoard raise $p2piece6
  .checkerBoard raise $p2piece7
  .checkerBoard raise $p2piece8
  .checkerBoard raise $p2piece9
  .checkerBoard raise $p2piece10
  .checkerBoard raise $p2piece11
  .checkerBoard raise $p2piece12
}

# Checks the score after each player moves a piece
proc playGame {} {
  global p1score p2score
  
  if {$p1score < 12 && $p2score < 12} {
    move
  } else {
    winnerScreen
  }
}

# Gets rid of the "jumped" piece + gives a point to the "jumpee"
# Throws error messages to prevent Tcl/Tk from throwing
#   real messages about the piece disappearing
proc hasBeenJumped {winner piece} {  
  if {$winner == 1} {
    updateScoreBoard {1}
	.checkerBoard delete $piece
	error "Nice move, Player 1!"
  }
  if {$winner == 2} {
    updateScoreBoard {2}
	.checkerBoard delete $piece
	error "Nice move, Player 2!"
  }
}

# Allows player one and player two to click and drag their pieces around the board
proc move {} {
  global movedPiece
  global p1piece1 p1piece2 p1piece3 p1piece4
  global p1piece5 p1piece6 p1piece7 p1piece8
  global p1piece9 p1piece10 p1piece11 p1piece12
  global p2piece1 p2piece2 p2piece3 p2piece4
  global p2piece5 p2piece6 p2piece7 p2piece8
  global p2piece9 p2piece10 p2piece11 p2piece12
  
  .checkerBoard bind $p1piece1 <B1-Motion>  {movePiece $p1piece1 %x %y}
  .checkerBoard bind $p1piece2 <B1-Motion>  {movePiece $p1piece2 %x %y}
  .checkerBoard bind $p1piece3 <B1-Motion>  {movePiece $p1piece3 %x %y}
  .checkerBoard bind $p1piece4 <B1-Motion>  {movePiece $p1piece4 %x %y}
  .checkerBoard bind $p1piece5 <B1-Motion>  {movePiece $p1piece5 %x %y}
  .checkerBoard bind $p1piece6 <B1-Motion>  {movePiece $p1piece6 %x %y}
  .checkerBoard bind $p1piece7 <B1-Motion>  {movePiece $p1piece7 %x %y}
  .checkerBoard bind $p1piece8 <B1-Motion>  {movePiece $p1piece8 %x %y}
  .checkerBoard bind $p1piece9 <B1-Motion>  {movePiece $p1piece9 %x %y}
  .checkerBoard bind $p1piece10 <B1-Motion>  {movePiece $p1piece10 %x %y}
  .checkerBoard bind $p1piece11 <B1-Motion>  {movePiece $p1piece11 %x %y}
  .checkerBoard bind $p1piece12 <B1-Motion>  {movePiece $p1piece12 %x %y}
  
  .checkerBoard bind $p2piece1 <B1-Motion>  {movePiece $p2piece1 %x %y}
  .checkerBoard bind $p2piece2 <B1-Motion>  {movePiece $p2piece2 %x %y}
  .checkerBoard bind $p2piece3 <B1-Motion>  {movePiece $p2piece3 %x %y}
  .checkerBoard bind $p2piece4 <B1-Motion>  {movePiece $p2piece4 %x %y}
  .checkerBoard bind $p2piece5 <B1-Motion>  {movePiece $p2piece5 %x %y}
  .checkerBoard bind $p2piece6 <B1-Motion>  {movePiece $p2piece6 %x %y}
  .checkerBoard bind $p2piece7 <B1-Motion>  {movePiece $p2piece7 %x %y}
  .checkerBoard bind $p2piece8 <B1-Motion>  {movePiece $p2piece8 %x %y}
  .checkerBoard bind $p2piece9 <B1-Motion>  {movePiece $p2piece9 %x %y}
  .checkerBoard bind $p2piece10 <B1-Motion>  {movePiece $p2piece10 %x %y}
  .checkerBoard bind $p2piece11 <B1-Motion>  {movePiece $p2piece11 %x %y}
  .checkerBoard bind $p2piece12 <B1-Motion>  {movePiece $p2piece12 %x %y}
}

# Checks if the player has jumped the other player or
#   reached the other end of the board (king)
proc checkRules {} {
  global movedPiece
  global p1piece1 p1piece2 p1piece3 p1piece4
  global p1piece5 p1piece6 p1piece7 p1piece8
  global p1piece9 p1piece10 p1piece11 p1piece12
  global p2piece1 p2piece2 p2piece3 p2piece4
  global p2piece5 p2piece6 p2piece7 p2piece8
  global p2piece9 p2piece10 p2piece11 p2piece12
  
  # Player one pieces are labeled 1-12
  if {$movedPiece >= 1 && $movedPiece <= 12} {
    p1KingMe $movedPiece
    validJumpP1 $movedPiece $p2piece1
    validJumpP1 $movedPiece $p2piece2
    validJumpP1 $movedPiece $p2piece3
    validJumpP1 $movedPiece $p2piece4
    validJumpP1 $movedPiece $p2piece5
    validJumpP1 $movedPiece $p2piece6
    validJumpP1 $movedPiece $p2piece7
    validJumpP1 $movedPiece $p2piece8
    validJumpP1 $movedPiece $p2piece9
    validJumpP1 $movedPiece $p2piece10
    validJumpP1 $movedPiece $p2piece11
    validJumpP1 $movedPiece $p2piece12
	error "Your turn, Player 2"
  }
  
  # Player two pieces are labeled 13-24
  if {$movedPiece >= 13 && $movedPiece <= 24} {
    p2KingMe $movedPiece
    validJumpP2 $movedPiece $p1piece1
    validJumpP2 $movedPiece $p1piece2
    validJumpP2 $movedPiece $p1piece3
    validJumpP2 $movedPiece $p1piece4
    validJumpP2 $movedPiece $p1piece5
    validJumpP2 $movedPiece $p1piece6
    validJumpP2 $movedPiece $p1piece7
    validJumpP2 $movedPiece $p1piece8
    validJumpP2 $movedPiece $p1piece9
    validJumpP2 $movedPiece $p1piece10
    validJumpP2 $movedPiece $p1piece11
    validJumpP2 $movedPiece $p1piece12
	error "Your turn, Player 1"
  }
  playGame
}

# If player 1's move resulted in a "jump"
proc validJumpP1 {jumper jumpee} {
  set jumperBottom [findBottom $jumper]
  set jumpeeBottom [findBottom $jumpee]
  set jumperLeft [findLeft $jumper]
  set jumpeeLeft [findLeft $jumpee]
  set jumperRight [findRight $jumper]
  set jumpeeRight [findRight $jumpee]

  # Player 1's piece is below player 2's piece (left or right side)
  if {$jumpeeBottom >= 0 && $jumpeeLeft >=0 && $jumpeeRight >= 0} {
    if {[expr {$jumperBottom - $jumpeeBottom}] >= 0 && [expr {$jumperBottom - $jumpeeBottom}] >= 50} {
      if {[expr {$jumpeeBottom - $jumperBottom}] >= 0 && [expr {$jumpeeBottom - $jumperBottom}] >= 50} {
        hasBeenJumped 1 $jumpee
      }
      if {[expr {$jumperBottom - $jumpeeBottom}] >= 0 && [expr {$jumperBottom - $jumpeeBottom}] >= 50} {
        hasBeenJumped 1 $jumpee
      }
    }
  }
}

# If player 2's move resulted in a "jump"
proc validJumpP2 {jumper jumpee} {
  set jumperBottom [findBottom $jumper]
  set jumpeeBottom [findBottom $jumpee]
  set jumperLeft [findLeft $jumper]
  set jumpeeLeft [findLeft $jumpee]
  set jumperRight [findRight $jumper]
  set jumpeeRight [findRight $jumpee]
  
  # Player 2's piece is above player 1's piece (left or right side)
  if {$jumpeeBottom >= 0 && $jumpeeLeft >=0 && $jumpeeRight >= 0} { 
    if {[expr {$jumpeeBottom - $jumperBottom}] >= 0 && [expr {$jumpeeBottom - $jumperBottom}] >= 50} {
      if {[expr {$jumpeeBottom - $jumperBottom}] >= 0 && [expr {$jumpeeBottom - $jumperBottom}] >= 50} {
        hasBeenJumped 2 $jumpee
      }
      if {[expr {$jumperBottom - $jumpeeBottom}] >= 0 && [expr {$jumperBottom - $jumpeeBottom}] >= 50} {
        hasBeenJumped 2 $jumpee
      }
    }
  }
}

# Checks if player 1 made it to the other side of the board
proc p1KingMe {piece} {
  global p1score p2score
  set center [findCenter $piece]
  if {$center >= 400} {
    .checkerBoard create rectangle 0 0 450 50 -fill yellow
    .checkerBoard create text 50 30 -fill black -justify left -text "Player 1: "
    .checkerBoard create text 100 30 -fill black -justify left -text $p1score
    .checkerBoard create text 325 30 -fill black -justify right -text "Player 2: "
    .checkerBoard create text 375 30 -fill black -justify right -text $p2score
    .checkerBoard create text 200 30 -fill black -justify center -text "<- King me!" -font {Helvetica -20 bold}
    # King pieces for player 1 turn silver
    .checkerBoard itemconfigure $piece -fill #9da8b3
  }
}

# Checks if player 2 made it to the other side of the board
proc p2KingMe {piece} {
  global p1score p2score
  set center [findCenter $piece]
  if {$center <= 100} {
    .checkerBoard create rectangle 0 0 450 50 -fill yellow
    .checkerBoard create text 50 30 -fill black -justify left -text "Player 1: "
    .checkerBoard create text 100 30 -fill black -justify left -text $p1score
    .checkerBoard create text 325 30 -fill black -justify right -text "Player 2: "
    .checkerBoard create text 375 30 -fill black -justify right -text $p2score
    .checkerBoard create text 200 30 -fill black -justify center -text "King me! ->" -font {Helvetica -20 bold}
    # King pieces for player 2 turn gold
    .checkerBoard itemconfigure $piece -fill #E5E27E
  }
}

# After all of the pieces for one player have been jumped, a winner is declared
proc winnerScreen {} {
  global p1score p2score
  # Player one won
  if {$p1score >= 12} {
    .checkerBoard create rectangle 0 0 450 50 -fill yellow
    .checkerBoard create text 50 30 -fill black -justify left -text "Player 1: "
    .checkerBoard create text 100 30 -fill black -justify left -text $p1score
    .checkerBoard create text 325 30 -fill black -justify right -text "Player 2: "
    .checkerBoard create text 375 30 -fill black -justify right -text $p2score
    .checkerBoard create text 200 30 -fill black -justify center -text "Player 1 wins!" -font {Helvetica -20 bold}
  }
  # Player two won
  if {$p2score >= 12} {
    .checkerBoard create rectangle 0 0 450 50 -fill yellow
    .checkerBoard create text 50 30 -fill black -justify left -text "Player 1: "
    .checkerBoard create text 100 30 -fill black -justify left -text $p1score
    .checkerBoard create text 325 30 -fill black -justify right -text "Player 2: "
    .checkerBoard create text 375 30 -fill black -justify right -text $p2score
    .checkerBoard create text 200 30 -fill black -justify center -text "Player 2 wins!" -font {Helvetica -20 bold}  }
}

setUpBoard
playGame
