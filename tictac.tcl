#Tic Tac Toe game
package require Tk

wm title . "Tic-Tac-Toe"
frame .board -padx 5 -pady 5
pack .board -fill both -expand 1
set playDisplay "Player 1"
set turn x

foreach square { 1 2 3 4 5 6 7 8 9 } {
    button .board.sq$square -width 6 -height 2 -command [list tttButton $square] 
}
grid .board.sq1 .board.sq2 .board.sq3 -padx 1 -pady 1  
grid .board.sq4 .board.sq5 .board.sq6 -padx 1 -pady 1 
grid .board.sq7 .board.sq8 .board.sq9 -padx 1 -pady 1 

foreach n {0 1 2} {
    grid column .board $n -weight 0 -pad 3
    grid row    .board $n -weight 0 -pad 3
}
 
proc newGame { } {
    global board turn
    global playDisplay
    set playDisplay "Player 1"
    set turn x
 
    if {[info exists board] } {
        unset board
    }
    
    foreach sq { 1 2 3 4 5 6 7 8 9 } {
        set w .board.sq$sq
        # Normally filled with spaces
        $w configure -fg black -state normal
        bindtags $w [list $w Button . all]
    }
}
 
proc tttButton { sq } {
    global board turn
    global playDisplay
    set w .board.sq$sq
    if { [info exists board($sq) ] } {
        # Error
        return
    }
    set board($sq) $turn
    array set cols {x blue o black}
    $w configure -text $turn \
            -fg $cols($turn) -state normal  
    bindtags $w [list $w . all]
    if { $turn == "x" } {
        set turn o
        set playDisplay "Player 2"
    } else {
        set turn x
        set playDisplay "Player 1" 
    }
 
    update idletasks
    if {[checkwin]} {newGame}
}
 
proc checkwin {} {
    set x {}
    set o {}
    foreach sq {1 2 3 4 5 6 7 8 9} {
        if {[info exists ::board($sq)]} {
            append $::board($sq) $sq
        }
    }
 
    #combinations of squares that would equivalate a win
    set winCombos { 123* *456* *789 1*4*7* 1*5*9 *2*5*8* *3*6*9 *3*5*7*}
 
    foreach pattern $winCombos {
        if {[string match $pattern $x]} {
            tk_messageBox -message "X has won"
            return 1
        } elseif {[string match $pattern $o]} {
            tk_messageBox -message "O has won"
            return 2
        }
    }
 
    if {[string length $x$o] == 9} {
        tk_messageBox -message "Draw"
        return 3
    }
 
    return 0
}

button .new  -text "New Game" -command newGame
button .turn -text $playDisplay
pack .new .turn -fill x

newGame