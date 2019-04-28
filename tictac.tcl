#Tic Tac Toe game
package require Tk

wm title . "Tic-Tac-Toe"
frame .board -padx 5 -pady 5
pack .board -fill both -expand 1
set playDisplay "Player 1"
set turn x

#setup the buttons 
foreach square { 1 2 3 4 5 6 7 8 9 } {
    button .board.pos$square -width 6 -height 2 -command [list XObutton $square] 
}
grid .board.pos1 .board.pos2 .board.pos3 -padx 1 -pady 1  
grid .board.pos4 .board.pos5 .board.pos6 -padx 1 -pady 1 
grid .board.pos7 .board.pos8 .board.pos9 -padx 1 -pady 1 

#setup the columns and rows
foreach n {0 1 2} {
    grid column .board $n -weight 0 -pad 3
    grid row .board $n -weight 0 -pad 3
}
 
# setupGame : configues the board and resets the buttons contents
proc setupGame { } {
    global board turn
    global playDisplay
    set playDisplay "X turn"
    set turn x
    .board configure
    if {[info exists board] } { unset board }
    
    foreach pos { 1 2 3 4 5 6 7 8 9 } {
        set box .board.pos$pos
        $box configure -text ""
        # binds the tags of the buttons to the reset board buttons
        bindtags $box [list $box Button . all]
    }
}
 
# XObutton : when a button is clicked this changes the turn and places the correct character
#            in the correlating box
proc XObutton { pos } {
    global board turn
    global playDisplay
    set box .board.pos$pos
    
    set board($pos) $turn
    array set cols {x blue o red}
    $box configure -text $turn -fg $cols($turn) -state normal  
    bindtags $box [list $box . all]
    if { $turn == "x" } {
        set turn o
        set playDisplay "O turn"
    } else {
        set turn x
        set playDisplay "X turn" 
    }
    update idletasks
    
    #if theres a win or draw then notify players and start new game
    if {[checkwin]} {setupGame} 
}

# checkwin : 
proc checkwin {} {
    #get the informatin from the board
    set x {} ;    set o {} ;
    foreach pos {1 2 3 4 5 6 7 8 9} {
        if {[info exists ::board($pos)]} { append $::board($pos) $pos }
    }
    
    #check for a win by either player
    set winCombos { *2*5*8* 123* *3*6*9 *456* *789 1*5*9 *3*5*7* 1*4*7*}
    foreach possibleWin $winCombos {
        if {[string match $possibleWin $x]} {
            tk_messageBox -message "WINNER : X\nSorry O"
            return 1
        } elseif {[string match $possibleWin $o]} {
            tk_messageBox -message "WINNER : O\nSorry X"
            return 1
        }
    }
    
    #if all spots are filled then notify players there's a draw
    if {[string length $x$o] == 9} {
        tk_messageBox -message "Draw"
        return 1
    }
    
    #No win or draw
    return 0
}

#need to confiure additional rows for additional labels and buttons
grid rowconfigure . 3 -weight 0 -pad 3
grid rowconfigure . 4 -weight 0 -pad 3

#Players turn
grid [label .board.turn -textvariable playDisplay -background gray80 -font {-size 10}] -row 3
#Reset button
grid [button .board.reset -text "Reset" -background gray85 -command setupGame ] -row 4 -pady 2

#Setup the game
setupGame