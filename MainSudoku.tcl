#Suduko: has 3 levels with 2 different layouts per levels
package require Tk

set version 2

#SETUP
source SetupSudoku.tcl
#Sudoku Information
source InfoSudoku.tcl

proc newGame {} {
    findLevelandVersion
     update idletasks
}

proc findLevelandVersion {} {
    #Adjust Values to be later assigned
    global level
    global version
    if { $level == "Eazy" } {
        if { $version == 1 } {
            eazyV2
            set version 2
        } else {
            eazyV1
            set version 1
        }
    } elseif {$level == "Intermediate"} {
        if {$version == 1} {
            intermediateV2
            set version 2
        } else {
            intermediateV1
            set version 1
        }
    } else { #if invalid level causes it to go to hard automatically
        if {$version == 1} {
            hardV2
            set version 2
        } else {
            hardV1
           set version 1
        }
    }
    changeTableValues
}

proc changeTableValues {} {
    global row_1 row_2 row_3 row_4 row_5 row_6 row_7 row_8 row_9
    global r1c0 r1c1 r1c2 r1c3 r1c4 r1c5 r1c6 r1c7 r1c8
    global r2c0 r2c1 r2c2 r2c3 r2c4 r2c5 r2c6 r2c7 r2c8
    global r3c0 r3c1 r3c2 r3c3 r3c4 r3c5 r3c6 r3c7 r3c8
    global r4c0 r4c1 r4c2 r4c3 r4c4 r4c5 r4c6 r4c7 r4c8
    global r5c0 r5c1 r5c2 r5c3 r5c4 r5c5 r5c6 r5c7 r5c8 
    global r6c0 r6c1 r6c2 r6c3 r6c4 r6c5 r6c6 r6c7 r6c8
    global r7c0 r7c1 r7c2 r7c3 r7c4 r7c5 r7c6 r7c7 r7c8
    global r8c0 r8c1 r8c2 r8c3 r8c4 r8c5 r8c6 r8c7 r8c8
    global r9c0 r9c1 r9c2 r9c3 r9c4 r9c5 r9c6 r9c7 r9c8

    #col 0
    set r1c0 [lindex $row_1 0]; set r2c0 [lindex $row_2 0]; set r3c0 [lindex $row_3 0]; set r4c0 [lindex $row_4 0]; 
    set r5c0 [lindex $row_5 0]; set r6c0 [lindex $row_6 0]; set r7c0 [lindex $row_7 0]; set r8c0 [lindex $row_8 0];  set r9c0 [lindex $row_9 0]  
    #col 1
    set r1c1 [lindex $row_1 1]; set r2c1 [lindex $row_2 1]; set r3c1 [lindex $row_3 1]; set r4c1 [lindex $row_4 1]; 
    set r5c1 [lindex $row_5 1]; set r6c1 [lindex $row_6 1]; set r7c1 [lindex $row_7 1]; set r8c1 [lindex $row_8 1];  set r9c1 [lindex $row_9 1]    
    #col 2
    set r1c2 [lindex $row_1 2]; set r2c2 [lindex $row_2 2]; set r3c2 [lindex $row_3 2]; set r4c2 [lindex $row_4 2]; 
    set r5c2 [lindex $row_5 2]; set r6c2 [lindex $row_6 2]; set r7c2 [lindex $row_7 2]; set r8c2 [lindex $row_8 2];  set r9c2 [lindex $row_9 2]  
    #col 3
    set r1c3 [lindex $row_1 3]; set r2c3 [lindex $row_2 3]; set r3c3 [lindex $row_3 3]; set r4c3 [lindex $row_4 3]; 
    set r5c3 [lindex $row_5 3]; set r6c3 [lindex $row_6 3]; set r7c3 [lindex $row_7 3]; set r8c3 [lindex $row_8 3];  set r9c3 [lindex $row_9 3]  
    #col 4
    set r1c4 [lindex $row_1 4]; set r2c4 [lindex $row_2 4]; set r3c4 [lindex $row_3 4]; set r4c4 [lindex $row_4 4]; 
    set r5c4 [lindex $row_5 4]; set r6c4 [lindex $row_6 4]; set r7c4 [lindex $row_7 4]; set r8c4 [lindex $row_8 4];  set r9c4 [lindex $row_9 4]  
    #col 5
    set r1c5 [lindex $row_1 5]; set r2c5 [lindex $row_2 5]; set r3c5 [lindex $row_3 5]; set r4c5 [lindex $row_4 5]; 
    set r5c5 [lindex $row_5 5]; set r6c5 [lindex $row_6 5]; set r7c5 [lindex $row_7 5]; set r8c5 [lindex $row_8 5];  set r9c5 [lindex $row_9 5]  
    #col 6
    set r1c6 [lindex $row_1 6]; set r2c6 [lindex $row_2 6]; set r3c6 [lindex $row_3 6]; set r4c6 [lindex $row_4 6]; 
    set r5c6 [lindex $row_5 6]; set r6c6 [lindex $row_6 6]; set r7c6 [lindex $row_7 6]; set r8c6 [lindex $row_8 6];  set r9c6 [lindex $row_9 6]  
    #col 7
    set r1c7 [lindex $row_1 7]; set r2c7 [lindex $row_2 7]; set r3c7 [lindex $row_3 7]; set r4c7 [lindex $row_4 7]; 
    set r5c7 [lindex $row_5 7]; set r6c7 [lindex $row_6 7]; set r7c7 [lindex $row_7 7]; set r8c7 [lindex $row_8 7];  set r9c7 [lindex $row_9 7]  
    #col 8
    set r1c8 [lindex $row_1 8]; set r2c8 [lindex $row_2 8]; set r3c8 [lindex $row_3 8]; set r4c8 [lindex $row_4 8]; 
    set r5c8 [lindex $row_5 8]; set r6c8 [lindex $row_6 8]; set r7c8 [lindex $row_7 8]; set r8c8 [lindex $row_8 8];  set r9c8 [lindex $row_9 8]  
    stateNormalAll
    stateDisableZeros
}

proc check {} {
    global r1c0 r1c1 r1c2 r1c3 r1c4 r1c5 r1c6 r1c7 r1c8
    global r2c0 r2c1 r2c2 r2c3 r2c4 r2c5 r2c6 r2c7 r2c8
    global r3c0 r3c1 r3c2 r3c3 r3c4 r3c5 r3c6 r3c7 r3c8
    global r4c0 r4c1 r4c2 r4c3 r4c4 r4c5 r4c6 r4c7 r4c8
    global r5c0 r5c1 r5c2 r5c3 r5c4 r5c5 r5c6 r5c7 r5c8 
    global r6c0 r6c1 r6c2 r6c3 r6c4 r6c5 r6c6 r6c7 r6c8
    global r7c0 r7c1 r7c2 r7c3 r7c4 r7c5 r7c6 r7c7 r7c8
    global r8c0 r8c1 r8c2 r8c3 r8c4 r8c5 r8c6 r8c7 r8c8
    global r9c0 r9c1 r9c2 r9c3 r9c4 r9c5 r9c6 r9c7 r9c8
    #Rows
    set row1 [list $r1c0 $r1c1 $r1c2 $r1c3 $r1c4 $r1c5 $r1c6 $r1c7 $r1c8]
    set row2 [list $r2c0 $r2c1 $r2c2 $r2c3 $r2c4 $r2c5 $r2c6 $r2c7 $r2c8]
    set row3 [list $r3c0 $r3c1 $r3c2 $r3c3 $r3c4 $r3c5 $r3c6 $r3c7 $r3c8]
    set row4 [list $r4c0 $r4c1 $r4c2 $r4c3 $r4c4 $r4c5 $r4c6 $r4c7 $r4c8]
    set row5 [list $r5c0 $r5c1 $r5c2 $r5c3 $r5c4 $r5c5 $r5c6 $r5c7 $r5c8]
    set row6 [list $r6c0 $r6c1 $r6c2 $r6c3 $r6c4 $r6c5 $r6c6 $r6c7 $r6c8]
    set row7 [list $r7c0 $r7c1 $r7c2 $r7c3 $r7c4 $r7c5 $r7c6 $r7c7 $r7c8]
    set row8 [list $r8c0 $r8c1 $r8c2 $r8c3 $r8c4 $r8c5 $r8c6 $r8c7 $r8c8]
    set row9 [list $r9c0 $r9c1 $r9c2 $r9c3 $r9c4 $r9c5 $r9c6 $r9c7 $r9c8]
    #Boxes
    set box1 [list $r1c0 $r1c1 $r1c2 $r2c0 $r2c1 $r2c2 $r3c0 $r3c1 $r3c2]
    set box2 [list $r4c0 $r4c1 $r4c2 $r5c0 $r5c1 $r5c2 $r6c0 $r6c1 $r6c2]
    set box3 [list $r7c0 $r7c1 $r7c2 $r8c0 $r8c1 $r8c2 $r9c0 $r9c1 $r9c2]
    set box4 [list $r1c3 $r1c4 $r1c5 $r2c3 $r2c4 $r2c5 $r3c3 $r3c4 $r3c5]
    set box5 [list $r4c3 $r4c4 $r4c5 $r5c3 $r5c4 $r5c5 $r6c3 $r6c4 $r6c5]
    set box6 [list $r7c3 $r7c4 $r7c5 $r8c3 $r8c4 $r8c5 $r9c3 $r9c4 $r9c5]
    set box7 [list $r1c6 $r1c7 $r1c8 $r2c6 $r2c7 $r2c8 $r3c6 $r3c7 $r3c8]
    set box8 [list $r4c6 $r4c7 $r4c8 $r5c6 $r5c7 $r5c8 $r6c6 $r6c7 $r6c8]
    set box9 [list $r7c6 $r7c7 $r7c8 $r8c6 $r8c7 $r8c8 $r9c6 $r9c7 $r9c8]
    #Columns
    set col0 [list $r1c0 $r2c0 $r3c0 $r4c0 $r5c0 $r6c0 $r7c0 $r8c0 $r9c0]
    set col1 [list $r1c1 $r2c1 $r3c1 $r4c1 $r5c1 $r6c1 $r7c1 $r8c1 $r9c1]
    set col2 [list $r1c2 $r2c2 $r3c2 $r4c2 $r5c2 $r6c2 $r7c2 $r8c2 $r9c2]
    set col3 [list $r1c3 $r2c3 $r3c3 $r4c3 $r5c3 $r6c3 $r7c3 $r8c3 $r9c3]
    set col4 [list $r1c4 $r2c4 $r3c4 $r4c4 $r5c4 $r6c4 $r7c4 $r8c4 $r9c4]
    set col5 [list $r1c5 $r2c5 $r3c5 $r4c5 $r5c5 $r6c5 $r7c5 $r8c5 $r9c5]
    set col6 [list $r1c6 $r2c6 $r3c6 $r4c6 $r5c6 $r6c6 $r7c6 $r8c6 $r9c6]
    set col7 [list $r1c7 $r2c7 $r3c7 $r4c7 $r5c7 $r6c7 $r7c7 $r8c7 $r9c7]
    set col8 [list $r1c8 $r2c8 $r3c8 $r4c8 $r5c8 $r6c8 $r7c8 $r8c8 $r9c8]
    
    #checks if a number and is in the range 1-9
    for {set row 1} {$row < 10} {incr row} {
        switch $row {
            1 { validEntries? row1 $row }
            2 { validEntries? row2 $row }
            3 { validEntries? row3 $row }
            4 { validEntries? row4 $row }
            5 { validEntries? row5 $row }
            6 { validEntries? row6 $row }
            7 { validEntries? row7 $row }
            8 { validEntries? row8 $row }
            9 { validEntries? row9 $row }
        }
    }
    #checks if numbers in the box all have one of 1-9 number
    for {set rcb 1} {$rcb < 10} {incr rcb} {
        switch $rcb {
            1 { checksElements {box1} }
            2 { checksElements {box2} }
            3 { checksElements {box3} }
            4 { checksElements {box4} }
            5 { checksElements {box5} }
            6 { checksElements {box6} }
            7 { checksElements {box7} }
            8 { checksElements {box8} }
            9 { checksElements {box9} }
        }
        switch $rcb {
            1 { checksElements {col0} }
            2 { checksElements {col1} }
            3 { checksElements {col2} }
            4 { checksElements {col3} }
            5 { checksElements {col4} }
            6 { checksElements {col5} }
            7 { checksElements {col6} }
            8 { checksElements {col7} }
            9 { checksElements {col8} }
        }
        switch $rcb {
            1 { checksElements {row1} }
            2 { checksElements {row2} }
            3 { checksElements {row3} }
            4 { checksElements {row4} }
            5 { checksElements {row5} }
            6 { checksElements {row6} }
            7 { checksElements {row7} }
            8 { checksElements {row8} }
            9 { checksElements {row9} }
        }
    }
     update idletasks
}

proc validEntries? {row rowNum} {
    for {set col 0} {$col < 9} {incr col} {
        set value [lindex $row $col]
        if {[expr {[string is integer -strict $value] && [expr {$value <= 10}] && [expr {$value >= 0}]}]} {
            continue
        } else {
            error "INVALID ENTRY TRY AGAIN" "" 0
        }

    }
}

proc checksElements {lst} {
    set sortedlst [lsort lst -integer ]
    for {set elm 0} {$elm < 9} {incr elm} {
        set value [lindex $sortedlst $elm ]
        if {[eval $value != [expr $elm + 1]]} {
            error "INCORRECT TRY AGAIN" "" 0
        }
    }
}

    # foreach pattern $winCombos {
        # if {[string match $pattern $x]} {
            # tk_messageBox -message "X has won"
            # return 1
        # } elseif {[string match $pattern $o]} {
            # tk_messageBox -message "O has won"
            # return 2
        # }
    # }
 
    # if {[string length $x$o] == 9} {
        # tk_messageBox -message "Draw"
        # return 3
    # }

#Places Values in the Table
newGame