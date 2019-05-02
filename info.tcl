# info.tcl
# Katie Wraith, Caterina Valdovinos, and Elizabeth Larson
# Provides simple information about application and how to use it

wm title . "Info"
frame .info -padx 5 -pady 5
pack .info -fill both -expand 1

grid [ label .info.authors -text "Created by Katie Wraith, Caterina Valdovinos, and Elizabeth Larson" ]
grid [ label .info.code -text "Coded in tcl/tk for OPL final project" ] 
grid [ label .info.instructions -text "Select the corresponding button of the game 
  you would like to play" ]
grid [ label .info.exit -text "Click QUIT or the red button to exit" ]