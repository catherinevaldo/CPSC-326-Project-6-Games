#Creates the rows and colums for an entry by the user
#creates ythe check and new game buttons and the levels dropdown
package require Tk
package require BWidget

wm title . "Sudoku"
frame .board -padx 5 -pady 5
pack .board -fill both -expand 1

#configure columns 0-8
grid columnconfigure . 0 -weight 0 -pad 1
grid columnconfigure . 1 -weight 0 -pad 1
grid columnconfigure . 2 -weight 0 -pad 1
grid columnconfigure . 3 -weight 0 -pad 1
grid columnconfigure . 4 -weight 0 -pad 1
grid columnconfigure . 5 -weight 0 -pad 1
grid columnconfigure . 6 -weight 0 -pad 1
grid columnconfigure . 7 -weight 0 -pad 1
grid columnconfigure . 8 -weight 0 -pad 1

#configure rows 0-8
grid rowconfigure . 1 -weight 0 -pad 1
grid rowconfigure . 2 -weight 0 -pad 1
grid rowconfigure . 3 -weight 0 -pad 1
grid rowconfigure . 4 -weight 0 -pad 1
grid rowconfigure . 5 -weight 0 -pad 1
grid rowconfigure . 6 -weight 0 -pad 1
grid rowconfigure . 7 -weight 0 -pad 1
grid rowconfigure . 8 -weight 0 -pad 1
grid rowconfigure . 9 -weight 0 -pad 1

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
grid $gr1c0 -column 0 -row 1
grid $gr1c1 -column 1 -row 1
grid $gr1c2 -column 2 -row 1
grid $gr1c3 -column 3 -row 1
grid $gr1c4 -column 4 -row 1
grid $gr1c5 -column 5 -row 1
grid $gr1c6 -column 6 -row 1
grid $gr1c7 -column 7 -row 1
grid $gr1c8 -column 8 -row 1

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
grid $gr2c0 -column 0 -row 2
grid $gr2c1 -column 1 -row 2
grid $gr2c2 -column 2 -row 2
grid $gr2c3 -column 3 -row 2
grid $gr2c4 -column 4 -row 2
grid $gr2c5 -column 5 -row 2
grid $gr2c6 -column 6 -row 2
grid $gr2c7 -column 7 -row 2
grid $gr2c8 -column 8 -row 2

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
grid $gr3c0 -column 0 -row 3
grid $gr3c1 -column 1 -row 3
grid $gr3c2 -column 2 -row 3
grid $gr3c3 -column 3 -row 3
grid $gr3c4 -column 4 -row 3
grid $gr3c5 -column 5 -row 3
grid $gr3c6 -column 6 -row 3
grid $gr3c7 -column 7 -row 3
grid $gr3c8 -column 8 -row 3

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
grid $gr4c0 -column 0 -row 4
grid $gr4c1 -column 1 -row 4
grid $gr4c2 -column 2 -row 4
grid $gr4c3 -column 3 -row 4
grid $gr4c4 -column 4 -row 4
grid $gr4c5 -column 5 -row 4
grid $gr4c6 -column 6 -row 4
grid $gr4c7 -column 7 -row 4
grid $gr4c8 -column 8 -row 4

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
grid $gr5c0 -column 0 -row 5
grid $gr5c1 -column 1 -row 5
grid $gr5c2 -column 2 -row 5
grid $gr5c3 -column 3 -row 5
grid $gr5c4 -column 4 -row 5
grid $gr5c5 -column 5 -row 5
grid $gr5c6 -column 6 -row 5
grid $gr5c7 -column 7 -row 5
grid $gr5c8 -column 8 -row 5

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
grid $gr6c0 -column 0 -row 6
grid $gr6c1 -column 1 -row 6
grid $gr6c2 -column 2 -row 6
grid $gr6c3 -column 3 -row 6
grid $gr6c4 -column 4 -row 6
grid $gr6c5 -column 5 -row 6
grid $gr6c6 -column 6 -row 6
grid $gr6c7 -column 7 -row 6
grid $gr6c8 -column 8 -row 6

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
grid $gr7c0 -column 0 -row 7
grid $gr7c1 -column 1 -row 7
grid $gr7c2 -column 2 -row 7
grid $gr7c3 -column 3 -row 7
grid $gr7c4 -column 4 -row 7
grid $gr7c5 -column 5 -row 7
grid $gr7c6 -column 6 -row 7
grid $gr7c7 -column 7 -row 7
grid $gr7c8 -column 8 -row 7 

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
grid $gr8c0 -column 0 -row 8
grid $gr8c1 -column 1 -row 8
grid $gr8c2 -column 2 -row 8
grid $gr8c3 -column 3 -row 8
grid $gr8c4 -column 4 -row 8
grid $gr8c5 -column 5 -row 8
grid $gr8c6 -column 6 -row 8
grid $gr8c7 -column 7 -row 8
grid $gr8c8 -column 8 -row 8

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
grid $gr9c0 -column 0 -row 9
grid $gr9c1 -column 1 -row 9
grid $gr9c2 -column 2 -row 9
grid $gr9c3 -column 3 -row 9
grid $gr9c4 -column 4 -row 9
grid $gr9c5 -column 5 -row 9
grid $gr9c6 -column 6 -row 9
grid $gr9c7 -column 7 -row 9
grid $gr9c8 -column 8 -row 9

#Check button
grid [ button .board.check -text "Check" -command check ] -column 4 -row 0 -sticky w -columnspan 2
#New Game button
grid [ button .board.newgame -text "New Game" -command newGame ] -column 6 -row 0 -sticky w -columnspan 3
#Level DropDown
set level_options [ list Easy Intermediate Hard ]
grid [ ComboBox .board.level -textvariable level -values $level_options -justify right -width 11 ] -row 0 -sticky w -columnspan 4
#Level DropDown
set level "Eazy"