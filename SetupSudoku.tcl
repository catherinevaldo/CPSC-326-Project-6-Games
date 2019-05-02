#Creates the rows and colums for an entry by the user
#creates ythe check and new game buttons and the levels dropdown
package require Tk
package require BWidget

wm title . "Sudoku"
frame .board -padx 5 -pady 5
pack .board -fill both -expand 1

#configure columns 0-8
foreach col { 0 1 2 3 4 5 6 7 8 } {
    grid column . $col -weight 0 -pad 3
}
#configure rows 0-8
foreach row { 1 2 3 4 5 6 7 8 9 } {
    grid row . $row -weight 0 -pad 3
}

#Creation of row variables to place in the grid
for {set row 1} {$row < 10} {incr row} {
    for {set col 0} {$col < 9} {incr col} {
        switch $row {
            1 { set gr1c$col [ entry .board.r1c$col -textvariable r1c$col -width 3 -state normal ] } 
            2 { set gr2c$col [ entry .board.r2c$col -textvariable r2c$col -width 3 -state normal ] }   
            3 { set gr3c$col [ entry .board.r3c$col -textvariable r3c$col -width 3 -state normal ] } 
            4 { set gr4c$col [ entry .board.r4c$col -textvariable r4c$col -width 3 -state normal ] } 
            5 { set gr5c$col [ entry .board.r5c$col -textvariable r5c$col -width 3 -state normal ] } 
            6 { set gr6c$col [ entry .board.r6c$col -textvariable r6c$col -width 3 -state normal ] } 
            7 { set gr7c$col [ entry .board.r7c$col -textvariable r7c$col -width 3 -state normal ] } 
            8 { set gr8c$col [ entry .board.r8c$col -textvariable r8c$col -width 3 -state normal ] }
            9 { set gr9c$col [ entry .board.r9c$col -textvariable r9c$col -width 3 -state normal ] } 
        }
    }
}    

#Setup the rows and columns with entry wigets accounting for spacing between 3x3 box
foreach row {1 2 3 4 5 6 7 8 9} {
    set i 0
    if { [expr [expr $row == 3] || [expr $row == 6]]} {
        foreach col {0 1 3 4 6 7 8} {
            set gA3 [list $gr3c0 $gr3c1 $gr3c3 $gr3c4 $gr3c6 $gr3c7 $gr3c8 ]
            set gA6 [list $gr6c0 $gr6c1 $gr6c3 $gr6c4 $gr6c6 $gr6c7 $gr6c8 ]
        
            grid [lindex [set gA$row] $i] -column $col -row $row -pady [ list 0 7]
            set i [expr $i +1]
        }
        set i 0
        foreach col {2 5} {
            set gB3 [list $gr3c2 $gr3c5]
            set gB6 [list $gr6c2 $gr6c5]
            
            grid [lindex [set gB$row] $i] -column $col -row $row  -pady [ list 0 7] -padx [ list 0 7]
            set i [expr $i +1]
        }
        set i 0
    } else {
        foreach col {0 1 3 4 6 7 8} {
            set gA1 [list $gr1c0 $gr1c1 $gr1c3 $gr1c4 $gr1c6 $gr1c7 $gr1c8 ]
            set gA2 [list $gr2c0 $gr2c1 $gr2c3 $gr2c4 $gr2c6 $gr2c7 $gr2c8 ]
            set gA4 [list $gr4c0 $gr4c1 $gr4c3 $gr4c4 $gr4c6 $gr4c7 $gr4c8 ]
            set gA5 [list $gr5c0 $gr5c1 $gr5c3 $gr5c4 $gr5c6 $gr5c7 $gr5c8 ]
            set gA7 [list $gr7c0 $gr7c1 $gr7c3 $gr7c4 $gr7c6 $gr7c7 $gr7c8 ]
            set gA8 [list $gr8c0 $gr8c1 $gr8c3 $gr8c4 $gr8c6 $gr8c7 $gr8c8 ]
            set gA9 [list $gr9c0 $gr9c1 $gr9c3 $gr9c4 $gr9c6 $gr9c7 $gr9c8 ]
            
            grid [lindex [set gA$row] $i] -column $col -row $row
            set i [expr $i +1]
        }
        set i 0
        foreach col {2 5} {
            set gB1 [list $gr1c2 $gr1c5]
            set gB2 [list $gr2c2 $gr2c5]
            set gB3 [list $gr3c2 $gr3c5]
            set gB4 [list $gr4c2 $gr4c5]
            set gB5 [list $gr5c2 $gr5c5]
            set gB6 [list $gr6c2 $gr6c5]
            set gB7 [list $gr7c2 $gr7c5]
            set gB8 [list $gr8c2 $gr8c5]
            set gB9 [list $gr9c2 $gr9c5]
            
            grid [lindex [set gB$row] $i] -column $col -row $row -padx [ list 0 7]
            set i [expr $i +1]
        }
    }
}

set g1 [list $gr1c0 $gr1c1 $gr1c2 $gr1c3 $gr1c4 $gr1c5 $gr1c6 $gr1c7 $gr1c8]
set g2 [list $gr2c0 $gr2c1 $gr2c2 $gr2c3 $gr2c4 $gr2c5 $gr2c6 $gr2c7 $gr2c8]
set g3 [list $gr3c0 $gr3c1 $gr3c2 $gr3c3 $gr3c4 $gr3c5 $gr3c6 $gr3c7 $gr3c8]
set g4 [list $gr4c0 $gr4c1 $gr4c2 $gr4c3 $gr4c4 $gr4c5 $gr4c6 $gr4c7 $gr4c8]
set g5 [list $gr5c0 $gr5c1 $gr5c2 $gr5c3 $gr5c4 $gr5c5 $gr5c6 $gr5c7 $gr5c8] 
set g6 [list $gr6c0 $gr6c1 $gr6c2 $gr6c3 $gr6c4 $gr6c5 $gr6c6 $gr6c7 $gr6c8]
set g7 [list $gr7c0 $gr7c1 $gr7c2 $gr7c3 $gr7c4 $gr7c5 $gr7c6 $gr7c7 $gr7c8]
set g8 [list $gr8c0 $gr8c1 $gr8c2 $gr8c3 $gr8c4 $gr8c5 $gr8c6 $gr8c7 $gr8c8]
set g9 [list $gr9c0 $gr9c1 $gr9c2 $gr9c3 $gr9c4 $gr9c5 $gr9c6 $gr9c7 $gr9c8]

#Check button
grid [ button .board.check -text "Check" -command check ] -column 4 -row 0 -sticky w -columnspan 2
#New Game button
grid [ button .board.newgame -text "New Game" -command newGame ] -column 6 -row 0 -sticky w -columnspan 3
#Level DropDown
set level_options [ list Easy Intermediate Hard ]
grid [ ComboBox .board.level -textvariable level -values $level_options -justify right -width 11 ] -row 0 -sticky w -columnspan 4
#Level DropDown
set level "Eazy"