#Suduko: has 3 levels with 2 different layouts per levels
package require Tk

set version 2
#SETUP
source SetupSudoku.tcl
#Sudoku Information
source InfoSudoku.tcl

proc newGame {} {
    findLevelandVersion
    changeTableValues
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
    updateRows
    stateNormalAll
    stateDisableZeros
}

proc check {} {
    global row_1 row_2 row_3 row_4 row_5 row_6 row_7 row_8 row_9
    updateRows
    
    #checks if a number and is in the range 1-9
    for {set row 1} {$row < 10} {incr row} {
        switch $row {
            1 { validEntries? $row_1 $row }
            2 { validEntries? $row_2 $row }
            3 { validEntries? $row_3 $row }
            4 { validEntries? $row_4 $row }
            5 { validEntries? $row_5 $row }
            6 { validEntries? $row_6 $row }
            7 { validEntries? $row_7 $row }
            8 { validEntries? $row_8 $row }
            9 { validEntries? $row_9 $row }
        }
    }
    checksElements
}

proc validEntries? {row rowNum} {
    for {set col 0} {$col < 9} {incr col} {
        set value [lindex $row $col]
        if {[string is integer -strict $value]} {
            continue
        } else {
            set errorMsg "INVALID ENTRY AT :\n\t Row "
            append errorMsg $rowNum  " Column " [expr $col +1]
            error $errorMsg "" 0
        }
    }
}

proc checksElements { } {
    global level
    global version
    if { $level == "Eazy" } {
        if { $version == 2 } {
            eazyV2Sol
        } else {
            eazyV1Sol
        }
    } elseif {$level == "Intermediate"} {
        if {$version == 2} {
            intermediateV2Sol
        } else {
            intermediateV1Sol
        }
    } else { 
        if {$version == 2} {
            hardV2Sol
        } else {
            hardV1Sol
        }
    }
}

#Places Values in the Table
newGame