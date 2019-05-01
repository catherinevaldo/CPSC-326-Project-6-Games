package require Tk
#Sudoku board Rows
#Eazy-----------------------------------------------
#Board
proc eazyV1 {} {
    global row_9 row_1 row_2 row_3 row_4 row_5 row_6 row_7 row_8
    set row_1 {1 0 6 0 0 2 3 0 0}
    set row_2 {0 5 0 0 0 6 0 9 1}
    set row_3 {0 0 9 5 0 1 4 6 2}
    set row_4 {0 3 7 9 0 5 0 0 0}
    set row_5 {5 8 1 0 2 7 9 0 0}
    set row_6 {0 0 0 4 0 8 1 5 7}
    set row_7 {0 0 0 2 6 0 5 4 0}
    set row_8 {0 0 4 1 5 0 6 0 9}
    set row_9 {9 0 0 8 7 4 2 1 0}
}
#Solution
proc eazyV1Sol {} {
    set crow_1 {1 4 6 7 9 2 3 8 5}
    set crow_2 {2 5 8 3 4 6 7 9 1}
    set crow_3 {3 7 9 5 8 1 4 6 2}
    set crow_4 {4 3 7 9 1 5 8 2 6}
    set crow_5 {5 8 1 6 2 7 9 3 4}
    set crow_6 {6 9 2 4 3 8 1 5 7}
    set crow_7 {7 1 3 2 6 9 5 4 8}
    set crow_8 {8 2 4 1 5 3 6 7 9}
    set crow_9 {9 6 5 8 7 4 2 1 3}
    set correctAns [list $crow_1 $crow_2 $crow_3 $crow_4 $crow_5 $crow_6 $crow_7 $crow_8 $crow_9]
    compareValuesTo $correctAns
}
#Board
proc eazyV2 {} {
    global row_9 row_1 row_2 row_3 row_4 row_5 row_6 row_7 row_8
    set row_1 {0 0 0 2 6 0 7 0 1}
    set row_2 {6 8 0 0 7 0 0 9 0}
    set row_3 {1 9 0 0 0 4 5 0 0}
    set row_4 {8 2 0 1 0 0 0 4 0}
    set row_5 {0 0 4 6 0 2 9 0 0}
    set row_6 {0 4 0 0 0 3 0 2 8}
    set row_7 {0 0 9 3 0 0 0 7 4}
    set row_8 {0 4 0 0 5 0 0 3 6}
    set row_9 {7 0 3 0 1 8 0 0 0}
}
#Solution
proc eazyV2Sol {} {
    set crow_1 {4 3 5 2 6 9 7 8 1}
    set crow_2 {6 8 2 5 7 1 4 9 3}
    set crow_3 {1 9 7 8 3 4 5 6 2}
    set crow_4 {8 2 6 1 9 5 3 4 7}
    set crow_5 {2 7 4 6 8 2 9 1 5}
    set crow_6 {9 5 1 7 4 3 6 2 8}
    set crow_7 {5 1 9 3 2 6 8 7 4}
    set crow_8 {2 4 8 9 5 7 1 3 6}
    set crow_9 {7 6 3 4 1 8 2 5 9}
    set correctAns [list $crow_1 $crow_2 $crow_3 $crow_4 $crow_5 $crow_6 $crow_7 $crow_8 $crow_9]
    compareValuesTo $correctAns
}

#Intermediate-----------------------------------------
#Board
proc intermediateV1 {} {
    global row_9 row_1 row_2 row_3 row_4 row_5 row_6 row_7 row_8
    set row_1 {0 0 0 6 0 0 8 0 0}
    set row_2 {6 1 0 0 3 2 4 0 0}
    set row_3 {2 0 0 1 9 4 7 0 0}
    set row_4 {1 0 0 2 0 0 0 8 7}
    set row_5 {0 7 5 9 0 1 2 4 0}
    set row_6 {8 4 0 0 0 5 0 0 9}
    set row_7 {0 0 6 4 7 8 0 0 1}
    set row_8 {0 0 1 3 2 0 0 5 4}
    set row_9 {0 0 3 0 0 6 0 0 0}
}
#Solution
proc intermediateV1Sol {} {
    set crow_1 {9 3 4 6 5 7 8 1 2} 
    set crow_2 {6 1 7 8 3 2 4 9 5}
    set crow_3 {2 5 8 1 9 4 7 6 3}
    set crow_4 {1 6 9 2 4 3 5 8 7}
    set crow_5 {3 7 5 9 8 1 2 4 6}
    set crow_6 {8 4 2 7 6 5 1 3 9}
    set crow_7 {5 9 6 4 7 8 3 2 1}
    set crow_8 {7 8 1 3 2 9 6 5 4}
    set crow_9 {4 2 3 5 1 6 9 7 8}
    set correctAns [list $crow_1 $crow_2 $crow_3 $crow_4 $crow_5 $crow_6 $crow_7 $crow_8 $crow_9]
    compareValuesTo $correctAns
}
#Board 
proc intermediateV2 {} {
    global row_9 row_1 row_2 row_3 row_4 row_5 row_6 row_7 row_8
    set row_1 {0 9 0 0 8 0 0 0 5}
    set row_2 {0 1 0 0 5 6 8 0 0}
    set row_3 {5 0 0 0 0 0 1 9 0}
    set row_4 {1 0 0 0 7 9 2 8 0}
    set row_5 {0 2 8 6 0 5 0 3 0}
    set row_6 {0 3 0 8 2 0 0 0 1}
    set row_7 {0 4 3 0 0 0 0 0 7}
    set row_8 {0 0 9 2 3 0 0 4 0}
    set row_9 {8 0 0 0 9 0 0 2 0}
}
#Solution
proc intermediateV2Sol {} {
    set crow_1 {7 9 2 1 8 3 4 6 5}
    set crow_2 {3 1 4 9 5 6 8 7 2}
    set crow_3 {5 8 6 7 4 2 1 9 3}
    set crow_4 {1 6 5 3 7 9 2 8 4}
    set crow_5 {4 2 8 6 1 5 7 3 9}
    set crow_6 {9 3 7 8 2 4 6 5 1}
    set crow_7 {2 4 3 5 6 8 9 1 7}
    set crow_8 {6 7 9 2 3 1 5 4 8}
    set crow_9 {8 5 1 4 9 7 3 2 6}
    set correctAns [list $crow_1 $crow_2 $crow_3 $crow_4 $crow_5 $crow_6 $crow_7 $crow_8 $crow_9]
    compareValuesTo $correctAns
}

#Hard------------------------------------------------
#Board
proc hardV1 {} {
    global row_9 row_1 row_2 row_3 row_4 row_5 row_6 row_7 row_8
    set row_1 {0 0 9 0 3 5 0 0 0}
    set row_2 {0 1 0 0 0 4 0 6 7}
    set row_3 {5 0 0 0 0 0 0 9 0}
    set row_4 {7 3 0 9 0 8 2 0 5}
    set row_5 {8 0 0 3 0 6 0 0 9}
    set row_6 {9 0 1 5 0 2 0 8 6}
    set row_7 {0 6 0 0 0 0 0 0 2}
    set row_8 {3 5 0 2 0 0 0 4 0}
    set row_9 {0 0 0 1 6 0 7 0 0}
}
#Solution
proc hardV1Sol {} {
    set crow_1 {6 8 9 7 3 5 1 2 4}
    set crow_2 {2 1 3 8 9 4 5 6 7}
    set crow_3 {5 7 4 6 2 1 8 9 3}
    set crow_4 {7 3 6 9 4 8 2 1 5}
    set crow_5 {8 2 5 3 1 6 4 7 9}
    set crow_6 {9 4 1 5 7 2 3 8 6}
    set crow_7 {1 6 8 4 5 7 9 3 2}
    set crow_8 {3 5 7 2 8 9 6 4 1}
    set crow_9 {4 9 2 1 6 3 7 5 8}
    set correctAns [list $crow_1 $crow_2 $crow_3 $crow_4 $crow_5 $crow_6 $crow_7 $crow_8 $crow_9]
    compareValuesTo $correctAns
}
#Board
proc hardV2 {} {
    global row_9 row_1 row_2 row_3 row_4 row_5 row_6 row_7 row_8
    set row_1 {0 7 5 0 9 0 0 0 6}
    set row_2 {0 2 3 0 8 0 0 4 0}
    set row_3 {8 0 0 0 0 3 0 0 1}
    set row_4 {5 0 0 7 0 2 0 0 0}
    set row_5 {0 4 0 8 0 6 0 2 0}
    set row_6 {0 0 0 9 0 1 0 0 3}
    set row_7 {9 0 0 4 0 0 0 0 7}
    set row_8 {0 6 0 0 7 0 5 8 0}
    set row_9 {7 0 0 0 1 0 3 9 0}
}
#Solution
proc hardV2Sol {} {
    set crow_1 {1 7 5 2 9 4 8 3 6}
    set crow_2 {6 2 3 1 8 7 9 4 5}
    set crow_3 {8 9 4 5 6 3 2 7 1}
    set crow_4 {5 1 9 7 3 2 4 6 8}
    set crow_5 {3 4 7 8 5 6 1 2 9}
    set crow_6 {2 8 6 9 4 1 7 5 3}
    set crow_7 {9 3 8 4 2 5 6 1 7}
    set crow_8 {4 6 1 3 7 9 5 8 2}
    set crow_9 {7 5 2 6 1 8 3 9 4}
    set correctAns [list $crow_1 $crow_2 $crow_3 $crow_4 $crow_5 $crow_6 $crow_7 $crow_8 $crow_9]
    compareValuesTo $correctAns
}

# compareValuesTo : compares the current value to the correct value and if wrong shades the background of 
#                   that box red otherwise shades the background of that box green and moves on; 
#                   Notifies the user if they're right or wrong
proc compareValuesTo {answers} {
    global g1 g2  g3 g4 g5 g6 g7 g8 g9 
    global row_1 row_2 row_3 row_4 row_5 row_6 row_7 row_8 row_9 
    
    set correct true
    set r -1
    
    foreach row { 0 1 2 3 4 5 6 7 8 } {
        foreach col { 0 1 2 3 4 5 6 7 8 } {
            switch $row {
                0 { set r $row_1; set group $g1; }
                1 { set r $row_2; set group $g2; }
                2 { set r $row_3; set group $g3; }
                3 { set r $row_4; set group $g4; }
                4 { set r $row_5; set group $g5; }
                5 { set r $row_6; set group $g6; }
                6 { set r $row_7; set group $g7; }
                7 { set r $row_8; set group $g8; }
                8 { set r $row_9; set group $g9; }
            }
            set rightAns [lindex [lindex $answers $row] $col]
            set currAns [lindex $r $col]
            if {$rightAns != $currAns} {
                [lindex $group $col] configure -background MistyRose
                set correct no
            } else {
                [lindex $group $col] configure -background honeydew
            }
        }
    }
    
    if {$correct} {
        tk_messageBox -message "CORRECT :)"
    } else {
        tk_messageBox -message "INCORRECT :( Sorry"
    }
}

# stateNormalAll : sets every entry box to the normal state
proc stateNormalAll { } {
    global g1 g2 g3 g4 g5 g6 g7 g8 g9 
    
    foreach grids { 1 2 3 4 5 6 7 8 9 } {
        switch $grids {
            1 { set group $g1 }
            2 { set group $g2 }
            3 { set group $g3 }
            4 { set group $g4 }
            5 { set group $g5 }
            6 { set group $g6 }
            7 { set group $g7 }
            8 { set group $g8 }
            9 { set group $g9 }
        }
        foreach elm { 0 1 2 3 4 5 6 7 8 } {
            [lindex $group $elm] configure -state normal -background white
        }
    }
}

# stateDisableZeros : finds the entry boxes without zero and takes away the users ability to edit those boxes
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

# updateRows : updates the values of the global list to hold the current box values
proc updateRows {} {
    global r1c0 r1c1 r1c2 r1c3 r1c4 r1c5 r1c6 r1c7 r1c8
    global r2c0 r2c1 r2c2 r2c3 r2c4 r2c5 r2c6 r2c7 r2c8
    global r3c0 r3c1 r3c2 r3c3 r3c4 r3c5 r3c6 r3c7 r3c8
    global r4c0 r4c1 r4c2 r4c3 r4c4 r4c5 r4c6 r4c7 r4c8
    global r5c0 r5c1 r5c2 r5c3 r5c4 r5c5 r5c6 r5c7 r5c8 
    global r6c0 r6c1 r6c2 r6c3 r6c4 r6c5 r6c6 r6c7 r6c8
    global r7c0 r7c1 r7c2 r7c3 r7c4 r7c5 r7c6 r7c7 r7c8
    global r8c0 r8c1 r8c2 r8c3 r8c4 r8c5 r8c6 r8c7 r8c8
    global r9c0 r9c1 r9c2 r9c3 r9c4 r9c5 r9c6 r9c7 r9c8
    global row_1 row_2 row_3 row_4 row_5 row_6 row_7 row_8 row_9
    
    set row_1 [list $r1c0 $r1c1 $r1c2 $r1c3 $r1c4 $r1c5 $r1c6 $r1c7 $r1c8]
    set row_2 [list $r2c0 $r2c1 $r2c2 $r2c3 $r2c4 $r2c5 $r2c6 $r2c7 $r2c8]
    set row_3 [list $r3c0 $r3c1 $r3c2 $r3c3 $r3c4 $r3c5 $r3c6 $r3c7 $r3c8]
    set row_4 [list $r4c0 $r4c1 $r4c2 $r4c3 $r4c4 $r4c5 $r4c6 $r4c7 $r4c8]
    set row_5 [list $r5c0 $r5c1 $r5c2 $r5c3 $r5c4 $r5c5 $r5c6 $r5c7 $r5c8]
    set row_6 [list $r6c0 $r6c1 $r6c2 $r6c3 $r6c4 $r6c5 $r6c6 $r6c7 $r6c8]
    set row_7 [list $r7c0 $r7c1 $r7c2 $r7c3 $r7c4 $r7c5 $r7c6 $r7c7 $r7c8]
    set row_8 [list $r8c0 $r8c1 $r8c2 $r8c3 $r8c4 $r8c5 $r8c6 $r8c7 $r8c8]
    set row_9 [list $r9c0 $r9c1 $r9c2 $r9c3 $r9c4 $r9c5 $r9c6 $r9c7 $r9c8]
    
    global gr1c0 gr1c1 gr1c2 gr1c3 gr1c4 gr1c5 gr1c6 gr1c7 gr1c8
    global gr2c0 gr2c1 gr2c2 gr2c3 gr2c4 gr2c5 gr2c6 gr2c7 gr2c8
    global gr3c0 gr3c1 gr3c2 gr3c3 gr3c4 gr3c5 gr3c6 gr3c7 gr3c8
    global gr4c0 gr4c1 gr4c2 gr4c3 gr4c4 gr4c5 gr4c6 gr4c7 gr4c8
    global gr5c0 gr5c1 gr5c2 gr5c3 gr5c4 gr5c5 gr5c6 gr5c7 gr5c8 
    global gr6c0 gr6c1 gr6c2 gr6c3 gr6c4 gr6c5 gr6c6 gr6c7 gr6c8
    global gr7c0 gr7c1 gr7c2 gr7c3 gr7c4 gr7c5 gr7c6 gr7c7 gr7c8
    global gr8c0 gr8c1 gr8c2 gr8c3 gr8c4 gr8c5 gr8c6 gr8c7 gr8c8
    global gr9c0 gr9c1 gr9c2 gr9c3 gr9c4 gr9c5 gr9c6 gr9c7 gr9c8
    global g1 g2 g3 g4 g5 g6 g7 g8 g9
    
    set g1 [list $gr1c0 $gr1c1 $gr1c2 $gr1c3 $gr1c4 $gr1c5 $gr1c6 $gr1c7 $gr1c8]
    set g2 [list $gr2c0 $gr2c1 $gr2c2 $gr2c3 $gr2c4 $gr2c5 $gr2c6 $gr2c7 $gr2c8]
    set g3 [list $gr3c0 $gr3c1 $gr3c2 $gr3c3 $gr3c4 $gr3c5 $gr3c6 $gr3c7 $gr3c8]
    set g4 [list $gr4c0 $gr4c1 $gr4c2 $gr4c3 $gr4c4 $gr4c5 $gr4c6 $gr4c7 $gr4c8]
    set g5 [list $gr5c0 $gr5c1 $gr5c2 $gr5c3 $gr5c4 $gr5c5 $gr5c6 $gr5c7 $gr5c8] 
    set g6 [list $gr6c0 $gr6c1 $gr6c2 $gr6c3 $gr6c4 $gr6c5 $gr6c6 $gr6c7 $gr6c8]
    set g7 [list $gr7c0 $gr7c1 $gr7c2 $gr7c3 $gr7c4 $gr7c5 $gr7c6 $gr7c7 $gr7c8]
    set g8 [list $gr8c0 $gr8c1 $gr8c2 $gr8c3 $gr8c4 $gr8c5 $gr8c6 $gr8c7 $gr8c8]
    set g9 [list $gr9c0 $gr9c1 $gr9c2 $gr9c3 $gr9c4 $gr9c5 $gr9c6 $gr9c7 $gr9c8]
}