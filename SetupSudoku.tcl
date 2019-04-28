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

#Row 1
set gr1c0 [ entry .board.r1c0 -textvariable r1c0  -width 3 -state normal ]
set gr1c1 [ entry .board.r1c1 -textvariable r1c1  -width 3 -state normal ]
set gr1c2 [ entry .board.r1c2 -textvariable r1c2  -width 3 -state normal ]
set gr1c3 [ entry .board.r1c3 -textvariable r1c3  -width 3 -state normal ]
set gr1c4 [ entry .board.r1c4 -textvariable r1c4  -width 3 -state normal ]
set gr1c5 [ entry .board.r1c5 -textvariable r1c5  -width 3 -state normal ]
set gr1c6 [ entry .board.r1c6 -textvariable r1c6  -width 3 -state normal ]
set gr1c7 [ entry .board.r1c7 -textvariable r1c7  -width 3 -state normal ]
set gr1c8 [ entry .board.r1c8 -textvariable r1c8  -width 3 -state normal ]  

#Row 2
set gr2c0 [ entry .board.r2c0 -textvariable r2c0  -width 3 -state normal ]
set gr2c1 [ entry .board.r2c1 -textvariable r2c1  -width 3 -state normal ]
set gr2c2 [ entry .board.r2c2 -textvariable r2c2  -width 3 -state normal ]
set gr2c3 [ entry .board.r2c3 -textvariable r2c3  -width 3 -state normal ]
set gr2c4 [ entry .board.r2c4 -textvariable r2c4  -width 3 -state normal ]
set gr2c5 [ entry .board.r2c5 -textvariable r2c5  -width 3 -state normal ]
set gr2c6 [ entry .board.r2c6 -textvariable r2c6  -width 3 -state normal ]
set gr2c7 [ entry .board.r2c7 -textvariable r2c7  -width 3 -state normal ]
set gr2c8 [ entry .board.r2c8 -textvariable r2c8  -width 3 -state normal ]

#Row 3
set gr3c0 [ entry .board.r3c0 -textvariable r3c0  -width 3 -state normal ]
set gr3c1 [ entry .board.r3c1 -textvariable r3c1  -width 3 -state normal ]
set gr3c2 [ entry .board.r3c2 -textvariable r3c2  -width 3 -state normal ]
set gr3c3 [ entry .board.r3c3 -textvariable r3c3  -width 3 -state normal ]
set gr3c4 [ entry .board.r3c4 -textvariable r3c4  -width 3 -state normal ]
set gr3c5 [ entry .board.r3c5 -textvariable r3c5  -width 3 -state normal ]
set gr3c6 [ entry .board.r3c6 -textvariable r3c6  -width 3 -state normal ]
set gr3c7 [ entry .board.r3c7 -textvariable r3c7  -width 3 -state normal ]
set gr3c8 [ entry .board.r3c8 -textvariable r3c8  -width 3 -state normal ]

#Row 4
set gr4c0 [ entry .board.r4c0 -textvariable r4c0  -width 3 -state normal ]
set gr4c1 [ entry .board.r4c1 -textvariable r4c1  -width 3 -state normal ]
set gr4c2 [ entry .board.r4c2 -textvariable r4c2  -width 3 -state normal ]
set gr4c3 [ entry .board.r4c3 -textvariable r4c3  -width 3 -state normal ]
set gr4c4 [ entry .board.r4c4 -textvariable r4c4  -width 3 -state normal ]
set gr4c5 [ entry .board.r4c5 -textvariable r4c5  -width 3 -state normal ]
set gr4c6 [ entry .board.r4c6 -textvariable r4c6  -width 3 -state normal ]
set gr4c7 [ entry .board.r4c7 -textvariable r4c7  -width 3 -state normal ]
set gr4c8 [ entry .board.r4c8 -textvariable r4c8  -width 3 -state normal ]

#Row 5
set gr5c0 [ entry .board.r5c0 -textvariable r5c0  -width 3 -state normal ]
set gr5c1 [ entry .board.r5c1 -textvariable r5c1  -width 3 -state normal ]
set gr5c2 [ entry .board.r5c2 -textvariable r5c2  -width 3 -state normal ]
set gr5c3 [ entry .board.r5c3 -textvariable r5c3  -width 3 -state normal ]
set gr5c4 [ entry .board.r5c4 -textvariable r5c4  -width 3 -state normal ]
set gr5c5 [ entry .board.r5c5 -textvariable r5c5  -width 3 -state normal ]
set gr5c6 [ entry .board.r5c6 -textvariable r5c6  -width 3 -state normal ]
set gr5c7 [ entry .board.r5c7 -textvariable r5c7  -width 3 -state normal ]
set gr5c8 [ entry .board.r5c8 -textvariable r5c8  -width 3 -state normal ]

#Row 6
set gr6c0 [ entry .board.r6c0 -textvariable r6c0  -width 3 -state normal ]
set gr6c1 [ entry .board.r6c1 -textvariable r6c1  -width 3 -state normal ]
set gr6c2 [ entry .board.r6c2 -textvariable r6c2  -width 3 -state normal ]
set gr6c3 [ entry .board.r6c3 -textvariable r6c3  -width 3 -state normal ]
set gr6c4 [ entry .board.r6c4 -textvariable r6c4  -width 3 -state normal ]
set gr6c5 [ entry .board.r6c5 -textvariable r6c5  -width 3 -state normal ]
set gr6c6 [ entry .board.r6c6 -textvariable r6c6  -width 3 -state normal ]
set gr6c7 [ entry .board.r6c7 -textvariable r6c7  -width 3 -state normal ]
set gr6c8 [ entry .board.r6c8 -textvariable r6c8  -width 3 -state normal ]

#Row 7
set gr7c0 [ entry .board.r7c0 -textvariable r7c0  -width 3 -state normal ]
set gr7c1 [ entry .board.r7c1 -textvariable r7c1  -width 3 -state normal ]
set gr7c2 [ entry .board.r7c2 -textvariable r7c2  -width 3 -state normal ]
set gr7c3 [ entry .board.r7c3 -textvariable r7c3  -width 3 -state normal ]
set gr7c4 [ entry .board.r7c4 -textvariable r7c4  -width 3 -state normal ]
set gr7c5 [ entry .board.r7c5 -textvariable r7c5  -width 3 -state normal ]
set gr7c6 [ entry .board.r7c6 -textvariable r7c6  -width 3 -state normal ]
set gr7c7 [ entry .board.r7c7 -textvariable r7c7  -width 3 -state normal ]
set gr7c8 [ entry .board.r7c8 -textvariable r7c8  -width 3 -state normal ]

#Row 8
set gr8c0 [ entry .board.r8c0 -textvariable r8c0  -width 3 -state normal ]
set gr8c1 [ entry .board.r8c1 -textvariable r8c1  -width 3 -state normal ]
set gr8c2 [ entry .board.r8c2 -textvariable r8c2  -width 3 -state normal ]
set gr8c3 [ entry .board.r8c3 -textvariable r8c3  -width 3 -state normal ]
set gr8c4 [ entry .board.r8c4 -textvariable r8c4  -width 3 -state normal ]
set gr8c5 [ entry .board.r8c5 -textvariable r8c5  -width 3 -state normal ]
set gr8c6 [ entry .board.r8c6 -textvariable r8c6  -width 3 -state normal ]
set gr8c7 [ entry .board.r8c7 -textvariable r8c7  -width 3 -state normal ]
set gr8c8 [ entry .board.r8c8 -textvariable r8c8  -width 3 -state normal ]

#Row 9
set gr9c0 [ entry .board.r9c0 -textvariable r9c0  -width 3 -state normal ]
set gr9c1 [ entry .board.r9c1 -textvariable r9c1  -width 3 -state normal ]
set gr9c2 [ entry .board.r9c2 -textvariable r9c2  -width 3 -state normal ]
set gr9c3 [ entry .board.r9c3 -textvariable r9c3  -width 3 -state normal ]
set gr9c4 [ entry .board.r9c4 -textvariable r9c4  -width 3 -state normal ]
set gr9c5 [ entry .board.r9c5 -textvariable r9c5  -width 3 -state normal ]
set gr9c6 [ entry .board.r9c6 -textvariable r9c6  -width 3 -state normal ]
set gr9c7 [ entry .board.r9c7 -textvariable r9c7  -width 3 -state normal ]
set gr9c8 [ entry .board.r9c8 -textvariable r9c8  -width 3 -state normal ]

#Setup the rows and columns with entry wigets
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