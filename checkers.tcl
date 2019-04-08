# 04-08-19 progress on checkers
# Elizabeth Larson
# Code from the internet
  
  set dx 50
  set dy 50
 #set colors {black white red blue}
  set colors {white black red blue}

  pack [canvas .c -width [expr $dx*8] -height [expr $dy*8]] -fill both -expand 1

 .c bind all <1> {set c(X) [.c canvasx %x]; set c(Y) [.c canvasy %y]}
 .c bind mv <B1-Motion> {mv %x %y}

 proc mv {x y} {
    global c
    set x  [.c canvasx $x]
    set y  [.c canvasy $y]
    set id [.c find withtag current]
    .c move $id [expr {$x-$c(X)}] [expr {$y-$c(Y)}]
    .c raise $id
    set c(X) $x; set c(Y) $y
 }

 set color 0
 proc makepiece {x y color args} {
    global dx dy
    .c create oval [expr {$x+2}] [expr {$y+2}] [expr {$x+$dx-3}] [expr {$y+$dy-3}] \
             -fill $color -tags [concat $args mv]
 }
 proc makecheck {x y color args} {
    global dx dy
    .c create rectangle $x $y [expr {$x+$dx}] [expr {$y+$dy}] \
            -fill $color -tags $args
 }
 
  proc drop {id} {
    global c dx dy
    set cx0 [expr {int($c(X) / $dx) * $dx + 2}]
    set cy0 [expr {int($c(Y) / $dy) * $dy + 2}]
    set cx1 [expr {$cx0 + $dx - 3}]
    set cy1 [expr {$cy0 + $dy - 3}]
    .c coords $id $cx0 $cy0 $cx1 $cy1        
 }
 
 for {set i 0; set y 0} {$i<8} {incr i; incr y $dy} {
    for {set j 0; set x 0} {$j<8} {incr j; incr x $dx} {
       makecheck $x $y [lindex $colors $color]
       if {$i<3 && $color} {
          makepiece $x $y [lindex $colors 2] player2
       }
       if {$i>4 && $color} {
          makepiece $x $y [lindex $colors 3] player1
       }
       set color [expr {1-$color}]
    }
    set color [expr {1-$color}]
 }
