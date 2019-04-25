# checkers.tcl
# Katie Wraith, Caterina Valdovinos, and Elizabeth Larson
# Two-player game of checkers

canvas .checkerBoard -background yellow -width 400 -height 450 
pack .checkerBoard

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

# Allows player one to click and drag their pieces around the board
proc p1Turn {} {
  global p1piece1 p1piece2 p1piece3 p1piece4
  global p1piece5 p1piece6 p1piece7 p1piece8
  global p1piece9 p1piece10 p1piece11 p1piece12
  
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
}

# Allows player two to click and drag their pieces around the board
proc p2Turn {} {
  global p2piece1 p2piece2 p2piece3 p2piece4
  global p2piece5 p2piece6 p2piece7 p2piece8
  global p2piece9 p2piece10 p2piece11 p2piece12
  
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
      }
	  # Arrange the pieces for both players
	  placePiecesOnBoard
    }
  }
}

# Changes the coordinates of the pieces based on the user's click and drag
proc movePiece {object x y} {
  .checkerBoard coords $object [expr $x-25] [expr $y-25] [expr $x+25] [expr $y+25]
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

proc playGame {} {
  global p1score p2score
  
  # while {$p1score < 12 || $p2score < 12} {
  p1Turn
  p2Turn
  # }
  
  # winnerScreen
}

# Gets rid of the "jumped" piece + gives a point to the "jumpee"
proc hasBeenJumped {winner piece} {
  if {winner == 1} {
    updateScoreBoard {1}
	# .checkerBoard delete $piece 
  }
  if {winner == 2} {
    updateScoreBoard {2}
	# .checkerBoard delete $piece
  }
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
