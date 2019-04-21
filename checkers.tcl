# Checkers

set xcor 50
set ycor 50
canvas .checkerBoard -background black -width 400 -height 400 
pack .checkerBoard

#copied from internet... fix!
.checkerBoard bind all <1> {set c(X) [.checkerBoard canvasx %x]; set c(Y) [.checkerBoard canvasy %y]}
.checkerBoard bind mv <B1-Motion> {mv %x %y}
.checkerBoard bind mv <ButtonRelease-1> {drop [.checkerBoard find withtag current]}

proc makeSquare {x y args} {
  global xcor ycor
  .checkerBoard create rectangle $x $y [expr {$x+$xcor}] [expr {$y+$ycor}] -fill red -tags $args
}

proc makeP1Piece {x y args} {
  global xcor ycor
  .checkerBoard create oval [expr {$x+2}] [expr {$y+2}] [expr {$x+$xcor-3}] [expr {$y+$ycor-3}] -fill white -tags [concat $args mv]
}

proc makeP2Piece {x y color args} {
  global xcor ycor
  .checkerBoard create oval [expr {$x+2}] [expr {$y+2}] [expr {$x+$xcor-3}] [expr {$y+$ycor-3}] -fill green -tags [concat $args mv]
}

proc p1Jumped {} {
  if {$ycor}
}

#copied from internet... fix!
proc mv {x y} {
  global c
  set x  [.checkerBoard canvasx $x]
  set y  [.checkerBoard canvasy $y]
  set id [.checkerBoard find withtag current]
  .checkerBoard move $id [expr {$x-$c(X)}] [expr {$y-$c(Y)}]
  .checkerBoard raise $id
  set c(X) $x; set c(Y) $y
}
 
#copied from internet... fix!
proc drop {id} {
  global c xcor ycor
  set cx0 [expr {int($c(X) / $xcor) * $xcor + 2}]
  set cy0 [expr {int($c(Y) / $ycor) * $ycor + 2}]
  set cx1 [expr {$cx0 + $xcor - 3}]
  set cy1 [expr {$cy0 + $ycor - 3}]
  .checkerBoard coords $id $cx0 $cy0 $cx1 $cy1        
}

proc setUpBoard {} {
  global xcor ycor
  for {set i 0; set y 0} {$i < 8} {incr i; incr y $ycor} {
   for {set j 0; set x 0} {$j < 8} {incr j; incr x $xcor} {
     if {$i % 2 == 0 && $j % 2 == 0} {
       makeSquare $x $y red
     }
     if {$i % 2 == 1 && $j % 2 == 1} {
       makeSquare $x $y
     }
     if {$i % 2 == 0 && $j % 2 == 1} {
       if {$i < 3} {
	     makeP1Piece $x $y white player1
       }
       if {$i >= 5} {
         makeP2Piece $x $y green player2
       }
     }
     if {$i % 2 == 1 && $j % 2 == 0} {
	   if {$i < 3} {
	     makeP1Piece $x $y white player1
       }
       if {$i >= 5} {
         makeP2Piece $x $y green player2
       }
     }
    }
  }
}

proc playGame {} {
}

setUpBoard
playGame
