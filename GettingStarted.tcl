#!/usr/local/bin/tclsh


#######################################
####                               ####
#### Leave these lines unchanged   ####
####                               ####
#######################################
destroy  .buttons
toplevel .buttons
wm title .buttons "Games Menu"
set count 0
proc add_frame title {
  global frame count
  set frame .buttons.frame$count
  frame $frame -border 2 -relief groove
  label $frame.label -text $title
  pack  $frame       -side left -padx 2 -pady 2 -anchor n -fill both
  pack  $frame.label -side top  -padx 2 -pady 2
  incr count
}
proc add_button {title command} {
  global frame count
  button $frame.$count -text $title -command $command
  pack   $frame.$count -side top -pady 1 -padx 1 -fill x
  incr count
}

#######################################
####                               ####
####  Change these lines to add    ####
####  your own frames and buttons  ####
####                               ####
#######################################
add_frame  "Welcome!"
add_button "Tic-Tac-Toe"     {}
add_button "Sudoku"         {source [file join MainSudoku.tcl]}
add_button "Checkers" {source [file join checkers.tcl]}
add_button "Quit"            {exit}

add_frame  ""
add_button "MadLibs"   {source [file join MadLibs.tcl]}
add_button "Calculator"  {source [file join calculator.tcl]}
add_button "8-ball" {source [file join eightball.tcl]}
add_button "Info"  {source [file join info.tcl]}


