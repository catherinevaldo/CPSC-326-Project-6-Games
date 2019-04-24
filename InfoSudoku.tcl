#Sudoku board Rows
#Eazy-----------------------------------------------
proc eazyV1 {} {
    global row_9 row_1 row_2 row_3 row_4 row_5 row_6 row_7 row_8
    set row_1 {10 3 10 10 1 10 10 6 10}
    set row_2 {7 5 10 10 3 10 10 4 8}
    set row_3 {10 10 6 9 8 4 3 10 10}
    set row_4 {10 10 3 10 10 10 8 10 10}
    set row_5 {9 1 2 10 10 10 6 7 4}
    set row_6 {10 10 4 10 10 10 5 10 10}
    set row_7 {10 10 1 6 7 5 2 10 10}
    set row_8 {6 8 10 10 9 10 10 1 5}
    set row_9 {10 9 10 10 4 10 10 3 10}
}
proc eazyV2 {} {
    global row_9 row_1 row_2 row_3 row_4 row_5 row_6 row_7 row_8
    set row_1 {0 8 0 0 0 0 2 0 0}
    set row_2 {0 0 0 0 8 4 0 9 0}
    set row_3 {0 0 6 3 2 0 0 1 0}
    set row_4 {0 9 7 0 0 0 0 8 0}
    set row_5 {8 0 0 9 0 3 0 0 2}
    set row_6 {0 1 0 0 0 0 9 5 0}
    set row_7 {0 7 0 0 4 5 8 0 0}
    set row_8 {0 3 0 7 1 0 0 0 0}
    set row_9 {0 0 8 0 0 0 0 4 0}
}

#Intermediate-----------------------------------------
proc intermediateV1 {} {
    global row_9 row_1 row_2 row_3 row_4 row_5 row_6 row_7 row_8
    set row_1 {0 4 0 0 0 2 0 1 9}
    set row_2 {0 0 0 3 5 1 0 8 6}
    set row_3 {3 1 0 0 9 4 7 0 0}
    set row_4 {0 9 4 0 0 0 0 0 7}
    set row_5 {0 0 0 0 0 0 0 0 0}
    set row_6 {2 0 0 0 0 0 8 9 0}
    set row_7 {0 0 9 5 2 0 0 4 1}
    set row_8 {4 2 0 1 6 9 0 0 0}
    set row_9 {1 6 0 8 0 0 0 7 0}
}
proc intermediateV2 {} {
    global row_9 row_1 row_2 row_3 row_4 row_5 row_6 row_7 row_8
    set row_1 {1 4 0 5 0 6 3 0 0}
    set row_2 {3 0 0 0 0 0 0 8 0}
    set row_3 {9 8 2 1 4 3 0 0 0}
    set row_4 {0 0 0 8 0 0 0 0 9}
    set row_5 {0 7 6 3 0 0 1 2 0}
    set row_6 {8 0 0 0 0 1 0 0 0}
    set row_7 {0 0 0 2 3 7 8 1 5}
    set row_8 {0 5 0 0 0 0 0 0 6}
    set row_9 {0 0 8 6 0 5 0 3 4}
}

#Hard------------------------------------------------
proc hardV1 {} {
    global row_9 row_1 row_2 row_3 row_4 row_5 row_6 row_7 row_8
    set row_1 {0 8 0 3 0 7 0 9 0}
    set row_2 {9 0 0 0 6 0 0 0 7}
    set row_3 {0 0 1 0 0 0 4 0 0}
    set row_4 {4 0 0 0 0 0 0 0 3}
    set row_5 {0 9 0 0 1 0 0 2 0}
    set row_6 {6 0 0 0 0 0 0 0 1}
    set row_7 {0 0 9 0 0 0 3 0 0}
    set row_8 {5 0 0 0 2 0 0 0 9}
    set row_9 {0 4 0 7 0 8 0 1 0}
}
proc hardV2 {} {
    global row_9 row_1 row_2 row_3 row_4 row_5 row_6 row_7 row_8
    set row_1 {3 1 0 0 2 9 0 0 0}
    set row_2 {8 0 6 0 0 7 3 0 4}
    set row_3 {4 0 0 0 0 0 0 0 0}
    set row_4 {7 0 0 0 0 5 0 0 0}
    set row_5 {0 0 0 0 6 0 0 7 9}
    set row_6 {0 4 8 0 0 0 5 0 0}
    set row_7 {0 9 7 0 3 0 0 0 8}
    set row_8 {0 0 3 0 0 2 0 0 7}
    set row_9 {0 0 0 0 0 0 2 3 0}
}
#sets every 
proc stateNormalAll {} {
    global gr1c0 gr1c1 gr1c2 gr1c3 gr1c4 gr1c5 gr1c6 gr1c7 gr1c8
    global gr2c0 gr2c1 gr2c2 gr2c3 gr2c4 gr2c5 gr2c6 gr2c7 gr2c8
    global gr3c0 gr3c1 gr3c2 gr3c3 gr3c4 gr3c5 gr3c6 gr3c7 gr3c8
    global gr4c0 gr4c1 gr4c2 gr4c3 gr4c4 gr4c5 gr4c6 gr4c7 gr4c8
    global gr5c0 gr5c1 gr5c2 gr5c3 gr5c4 gr5c5 gr5c6 gr5c7 gr5c8 
    global gr6c0 gr6c1 gr6c2 gr6c3 gr6c4 gr6c5 gr6c6 gr6c7 gr6c8
    global gr7c0 gr7c1 gr7c2 gr7c3 gr7c4 gr7c5 gr7c6 gr7c7 gr7c8
    global gr8c0 gr8c1 gr8c2 gr8c3 gr8c4 gr8c5 gr8c6 gr8c7 gr8c8
    global gr9c0 gr9c1 gr9c2 gr9c3 gr9c4 gr9c5 gr9c6 gr9c7 gr9c8
    global r1c0 r1c1 r1c2 r1c3 r1c4 r1c5 r1c6 r1c7 r1c8
    global r2c0 r2c1 r2c2 r2c3 r2c4 r2c5 r2c6 r2c7 r2c8
    global r3c0 r3c1 r3c2 r3c3 r3c4 r3c5 r3c6 r3c7 r3c8
    global r4c0 r4c1 r4c2 r4c3 r4c4 r4c5 r4c6 r4c7 r4c8
    global r5c0 r5c1 r5c2 r5c3 r5c4 r5c5 r5c6 r5c7 r5c8 
    global r6c0 r6c1 r6c2 r6c3 r6c4 r6c5 r6c6 r6c7 r6c8
    global r7c0 r7c1 r7c2 r7c3 r7c4 r7c5 r7c6 r7c7 r7c8
    global r8c0 r8c1 r8c2 r8c3 r8c4 r8c5 r8c6 r8c7 r8c8
    global r9c0 r9c1 r9c2 r9c3 r9c4 r9c5 r9c6 r9c7 r9c8
    
    #Row 1
    $gr1c0 configure -state normal
    $gr1c1 configure -state normal
    $gr1c2 configure -state normal
    $gr1c3 configure -state normal
    $gr1c4 configure -state normal
    $gr1c5 configure -state normal
    $gr1c6 configure -state normal
    $gr1c7 configure -state normal
    $gr1c8 configure -state normal

    #Row 2
    $gr2c0 configure -state normal
    $gr2c1 configure -state normal
    $gr2c2 configure -state normal
    $gr2c3 configure -state normal
    $gr2c4 configure -state normal
    $gr2c5 configure -state normal
    $gr2c6 configure -state normal
    $gr2c7 configure -state normal
    $gr2c8 configure -state normal

    #Row 3
    $gr3c0 configure -state normal
    $gr3c1 configure -state normal
    $gr3c2 configure -state normal
    $gr3c3 configure -state normal
    $gr3c4 configure -state normal
    $gr3c5 configure -state normal
    $gr3c6 configure -state normal
    $gr3c7 configure -state normal
    $gr3c8 configure -state normal

    #Row 4
    $gr4c0 configure -state normal
    $gr4c1 configure -state normal
    $gr4c2 configure -state normal
    $gr4c3 configure -state normal
    $gr4c4 configure -state normal
    $gr4c5 configure -state normal
    $gr4c6 configure -state normal
    $gr4c7 configure -state normal
    $gr4c8 configure -state normal

    #Row 5
    $gr5c0 configure -state normal 
    $gr5c1 configure -state normal 
    $gr5c2 configure -state normal 
    $gr5c3 configure -state normal 
    $gr5c4 configure -state normal 
    $gr5c5 configure -state normal 
    $gr5c6 configure -state normal 
    $gr5c7 configure -state normal 
    $gr5c8 configure -state normal 

    #Row 6
    $gr6c0 configure -state normal 
    $gr6c1 configure -state normal 
    $gr6c2 configure -state normal 
    $gr6c3 configure -state normal 
    $gr6c4 configure -state normal 
    $gr6c5 configure -state normal 
    $gr6c6 configure -state normal 
    $gr6c7 configure -state normal 
    $gr6c8 configure -state normal 

    #Row 7
    $gr7c0 configure -state normal 
    $gr7c1 configure -state normal 
    $gr7c2 configure -state normal 
    $gr7c3 configure -state normal 
    $gr7c4 configure -state normal 
    $gr7c5 configure -state normal 
    $gr7c6 configure -state normal 
    $gr7c7 configure -state normal 
    $gr7c8 configure -state normal 

    #Row 8
    $gr8c0 configure -state normal 
    $gr8c1 configure -state normal 
    $gr8c2 configure -state normal 
    $gr8c3 configure -state normal 
    $gr8c4 configure -state normal 
    $gr8c5 configure -state normal 
    $gr8c6 configure -state normal 
    $gr8c7 configure -state normal 
    $gr8c8 configure -state normal 

    #Row 9
    $gr9c0 configure -state normal
    $gr9c1 configure -state normal
    $gr9c2 configure -state normal
    $gr9c3 configure -state normal
    $gr9c4 configure -state normal
    $gr9c5 configure -state normal
    $gr9c6 configure -state normal
    $gr9c7 configure -state normal
    $gr9c8 configure -state normal
}

proc stateDisableZeros { } {
    global row_9 row_1 row_2 row_3 row_4 row_5 row_6 row_7 row_8
    global gr1c0 gr1c1 gr1c2 gr1c3 gr1c4 gr1c5 gr1c6 gr1c7 gr1c8
    global gr2c0 gr2c1 gr2c2 gr2c3 gr2c4 gr2c5 gr2c6 gr2c7 gr2c8
    global gr3c0 gr3c1 gr3c2 gr3c3 gr3c4 gr3c5 gr3c6 gr3c7 gr3c8
    global gr4c0 gr4c1 gr4c2 gr4c3 gr4c4 gr4c5 gr4c6 gr4c7 gr4c8
    global gr5c0 gr5c1 gr5c2 gr5c3 gr5c4 gr5c5 gr5c6 gr5c7 gr5c8 
    global gr6c0 gr6c1 gr6c2 gr6c3 gr6c4 gr6c5 gr6c6 gr6c7 gr6c8
    global gr7c0 gr7c1 gr7c2 gr7c3 gr7c4 gr7c5 gr7c6 gr7c7 gr7c8
    global gr8c0 gr8c1 gr8c2 gr8c3 gr8c4 gr8c5 gr8c6 gr8c7 gr8c8
    global gr9c0 gr9c1 gr9c2 gr9c3 gr9c4 gr9c5 gr9c6 gr9c7 gr9c8
    global r1c0 r1c1 r1c2 r1c3 r1c4 r1c5 r1c6 r1c7 r1c8
    global r2c0 r2c1 r2c2 r2c3 r2c4 r2c5 r2c6 r2c7 r2c8
    global r3c0 r3c1 r3c2 r3c3 r3c4 r3c5 r3c6 r3c7 r3c8
    global r4c0 r4c1 r4c2 r4c3 r4c4 r4c5 r4c6 r4c7 r4c8
    global r5c0 r5c1 r5c2 r5c3 r5c4 r5c5 r5c6 r5c7 r5c8 
    global r6c0 r6c1 r6c2 r6c3 r6c4 r6c5 r6c6 r6c7 r6c8
    global r7c0 r7c1 r7c2 r7c3 r7c4 r7c5 r7c6 r7c7 r7c8
    global r8c0 r8c1 r8c2 r8c3 r8c4 r8c5 r8c6 r8c7 r8c8
    global r9c0 r9c1 r9c2 r9c3 r9c4 r9c5 r9c6 r9c7 r9c8
    
    for {set row 1} {$row < 10} {incr row} {
        for {set col 0} {$col < 9} {incr col} {
            if { $row == 1 } {
                if {[lindex $row_1 $col] != 0} {
                    switch $col {
                        0 { $gr1c0 configure -state disabled }
                        1 { $gr1c1 configure -state disabled }
                        2 { $gr1c2 configure -state disabled }
                        3 { $gr1c3 configure -state disabled }
                        4 { $gr1c4 configure -state disabled }
                        5 { $gr1c5 configure -state disabled }
                        6 { $gr1c6 configure -state disabled }
                        7 { $gr1c7 configure -state disabled }
                        8 { $gr1c8 configure -state disabled }
                    }
                } else {
                    switch $col {
                        0 { set r1c0 "" }
                        1 { set r1c1 "" }
                        2 { set r1c2 "" }
                        3 { set r1c3 "" }
                        4 { set r1c4 "" }
                        5 { set r1c5 "" }
                        6 { set r1c6 "" }
                        7 { set r1c7 "" }
                        8 { set r1c8 "" }
                    }
                }                    
            } elseif { $row == 2 } {
                if {[lindex $row_2 $col] != 0} {
                    switch $col {
                        0 { $gr2c0 configure -state disabled }
                        1 { $gr2c1 configure -state disabled }
                        2 { $gr2c2 configure -state disabled }
                        3 { $gr2c3 configure -state disabled }
                        4 { $gr2c4 configure -state disabled }
                        5 { $gr2c5 configure -state disabled }
                        6 { $gr2c6 configure -state disabled }
                        7 { $gr2c7 configure -state disabled }
                        8 { $gr2c8 configure -state disabled }
                    }
                } else {
                    switch $col {
                        0 { set r2c0 "" }
                        1 { set r2c1 "" }
                        2 { set r2c2 "" }
                        3 { set r2c3 "" }
                        4 { set r2c4 "" }
                        5 { set r2c5 "" }
                        6 { set r2c6 "" }
                        7 { set r2c7 "" }
                        8 { set r2c8 "" }
                    }
                }  
            } elseif { $row == 3 } {
                if {[lindex $row_3 $col] != 0} {    
                    switch $col {
                        0 { $gr3c0 configure -state disabled }
                        1 { $gr3c1 configure -state disabled }
                        2 { $gr3c2 configure -state disabled }
                        3 { $gr3c3 configure -state disabled }
                        4 { $gr3c4 configure -state disabled }
                        5 { $gr3c5 configure -state disabled }
                        6 { $gr3c6 configure -state disabled }
                        7 { $gr3c7 configure -state disabled }
                        8 { $gr3c8 configure -state disabled }
                    }
                } else {
                    switch $col {
                        0 { set r3c0 "" }
                        1 { set r3c1 "" }
                        2 { set r3c2 "" }
                        3 { set r3c3 "" }
                        4 { set r3c4 "" }
                        5 { set r3c5 "" }
                        6 { set r3c6 "" }
                        7 { set r3c7 "" }
                        8 { set r3c8 "" }
                    }
                }    
            } elseif { $row == 4 } {
                if {[lindex $row_4 $col] != 0} {
                   switch $col {
                        0 { $gr4c0 configure -state disabled }
                        1 { $gr4c1 configure -state disabled }
                        2 { $gr4c2 configure -state disabled }
                        3 { $gr4c3 configure -state disabled }
                        4 { $gr4c4 configure -state disabled }
                        5 { $gr4c5 configure -state disabled }
                        6 { $gr4c6 configure -state disabled }
                        7 { $gr4c7 configure -state disabled }
                        8 { $gr4c8 configure -state disabled }
                    }
                } else {
                    switch $col {
                        0 { set r4c0 "" }
                        1 { set r4c1 "" }
                        2 { set r4c2 "" }
                        3 { set r4c3 "" }
                        4 { set r4c4 "" }
                        5 { set r4c5 "" }
                        6 { set r4c6 "" }
                        7 { set r4c7 "" }
                        8 { set r4c8 "" }
                    }
                } 
            } elseif { $row == 5 } {
                if {[lindex $row_5 $col] != 0} {
                    switch $col {
                        0 { $gr5c0 configure -state disabled } 
                        1 { $gr5c1 configure -state disabled } 
                        2 { $gr5c2 configure -state disabled } 
                        3 { $gr5c3 configure -state disabled } 
                        4 { $gr5c4 configure -state disabled } 
                        5 { $gr5c5 configure -state disabled } 
                        6 { $gr5c6 configure -state disabled } 
                        7 { $gr5c7 configure -state disabled } 
                        8 { $gr5c8 configure -state disabled } 
                    }
                } else {
                    switch $col {
                        0 { set r5c0 "" }
                        1 { set r5c1 "" }
                        2 { set r5c2 "" }
                        3 { set r5c3 "" }
                        4 { set r5c4 "" }
                        5 { set r5c5 "" }
                        6 { set r5c6 "" }
                        7 { set r5c7 "" }
                        8 { set r5c8 "" }
                    }
                } 
            } elseif { $row == 6 } {
                if {[lindex $row_6 $col] != 0} {
                    switch $col {
                        0 { $gr6c0 configure -state disabled } 
                        1 { $gr6c1 configure -state disabled } 
                        2 { $gr6c2 configure -state disabled } 
                        3 { $gr6c3 configure -state disabled } 
                        4 { $gr6c4 configure -state disabled } 
                        5 { $gr6c5 configure -state disabled } 
                        6 { $gr6c6 configure -state disabled } 
                        7 { $gr6c7 configure -state disabled } 
                        8 { $gr6c8 configure -state disabled } 
                    }
                } else {
                    switch $col {
                        0 { set r6c0 "" }
                        1 { set r6c1 "" }
                        2 { set r6c2 "" }
                        3 { set r6c3 "" }
                        4 { set r6c4 "" }
                        5 { set r6c5 "" }
                        6 { set r6c6 "" }
                        7 { set r6c7 "" }
                        8 { set r6c8 "" }
                    }
                } 
            } elseif { $row == 7 } {
                if {[lindex $row_7 $col] != 0} {
                    switch $col {
                        0 { $gr7c0 configure -state disabled } 
                        1 { $gr7c1 configure -state disabled } 
                        2 { $gr7c2 configure -state disabled } 
                        3 { $gr7c3 configure -state disabled } 
                        4 { $gr7c4 configure -state disabled } 
                        5 { $gr7c5 configure -state disabled } 
                        6 { $gr7c6 configure -state disabled } 
                        7 { $gr7c7 configure -state disabled } 
                        8 { $gr7c8 configure -state disabled } 
                    }
                } else {
                    switch $col {
                        0 { set r7c0 "" }
                        1 { set r7c1 "" }
                        2 { set r7c2 "" }
                        3 { set r7c3 "" }
                        4 { set r7c4 "" }
                        5 { set r7c5 "" }
                        6 { set r7c6 "" }
                        7 { set r7c7 "" }
                        8 { set r7c8 "" }
                    }
                } 
            } elseif { $row == 8 } {
                if {[lindex $row_8 $col] != 0} {
                    switch $col {
                        0 { $gr8c0 configure -state disabled } 
                        1 { $gr8c1 configure -state disabled } 
                        2 { $gr8c2 configure -state disabled } 
                        3 { $gr8c3 configure -state disabled } 
                        4 { $gr8c4 configure -state disabled } 
                        5 { $gr8c5 configure -state disabled } 
                        6 { $gr8c6 configure -state disabled } 
                        7 { $gr8c7 configure -state disabled } 
                        8 { $gr8c8 configure -state disabled } 
                    }
                } else {
                    switch $col {
                        0 { set r8c0 "" }
                        1 { set r8c1 "" }
                        2 { set r8c2 "" }
                        3 { set r8c3 "" }
                        4 { set r8c4 "" }
                        5 { set r8c5 "" }
                        6 { set r8c6 "" }
                        7 { set r8c7 "" }
                        8 { set r8c8 "" }
                    }
                } 
            } else {
                if {[lindex $row_9 $col] != 0} {
                    switch $col {
                        0 { $gr9c0 configure -state disabled }
                        1 { $gr9c1 configure -state disabled }
                        2 { $gr9c2 configure -state disabled }
                        3 { $gr9c3 configure -state disabled }
                        4 { $gr9c4 configure -state disabled }
                        5 { $gr9c5 configure -state disabled }
                        6 { $gr9c6 configure -state disabled }
                        7 { $gr9c7 configure -state disabled }
                        8 { $gr9c8 configure -state disabled }
                    }
                } else {
                    switch $col {
                        0 { set r9c0 "" }
                        1 { set r9c1 "" }
                        2 { set r9c2 "" }
                        3 { set r9c3 "" }
                        4 { set r9c4 "" }
                        5 { set r9c5 "" }
                        6 { set r9c6 "" }
                        7 { set r9c7 "" }
                        8 { set r9c8 "" }
                    }
                } 
            }
        }
    } 
}