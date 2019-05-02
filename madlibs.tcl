# madlibs.tcl
# Katie Wraith, Caterina Valdovinos, and Elizabeth Larson
# Simple MadLibs game
# Chooses random story and prompts user to input words to complete the story

wm title . "MadLibs"
frame .madLibs -padx 5 -pady 5
pack .madLibs -fill both -expand 1

# main driver of game
proc main {} {
  set randNum [expr {int(rand()*3)}]
  grid [ label .madLibs.instructions -text "Enter appropriate values of your choice into \
    the corresponding boxes" ] -columnspan 2

  global a1;
  global a2;
  global a3;
  global a4;
  global a5;
  global a6;
  global a7;
  global a8;
  global a9;
  global a10;


  # set all entries
  set ans1 [ entry .madLibs.an1 -textvariable a1 -width 20 -state normal ] 
  set ans2 [ entry .madLibs.an2 -textvariable a2 -width 20 -state normal ] 
  set ans3 [ entry .madLibs.an3 -textvariable a3 -width 20 -state normal ] 
  set ans4 [ entry .madLibs.an4 -textvariable a4 -width 20 -state normal ] 
  set ans5 [ entry .madLibs.an5 -textvariable a5 -width 20 -state normal ] 
  set ans6 [ entry .madLibs.an6 -textvariable a6 -width 20 -state normal ] 
  set ans7 [ entry .madLibs.an7 -textvariable a7 -width 20 -state normal ] 
  set ans8 [ entry .madLibs.an8 -textvariable a8 -width 20 -state normal ] 
  set ans9 [ entry .madLibs.an9 -textvariable a9 -width 20 -state normal ] 
  set ans10 [ entry .madLibs.an10 -textvariable a10 -width 20 -state normal ] 
  
  # set placement for entries
  grid $ans1 -column 1 -row 1 
  grid $ans2 -column 1 -row 2
  grid $ans3 -column 1 -row 3
  grid $ans4 -column 1 -row 4
  grid $ans5 -column 1 -row 5
  grid $ans6 -column 1 -row 6
  grid $ans7 -column 1 -row 7
  grid $ans8 -column 1 -row 8
  grid $ans9 -column 1 -row 9
  grid $ans10 -column 1 -row 10

  # set up the button and event handler
  grid [ button .madLibs.enter -text $ -command "showStory $randNum $a1 \
    $a2 $a3 $a4 $a5 $a6 $a7 $a8 $a9 $a10"] \
    -column 0 -row 12 -sticky w
 
  # each story has different prompts
  if {$randNum == 0} {
    grid [ label .madLibs.p1 -text "Occupation (a job): " ] -column 0 -row 1
    grid [ label .madLibs.p2 -text "Noun: " ] -column 0 -row 2
    grid [ label .madLibs.p3 -text "Adjective: " ] -column 0 -row 3
    grid [ label .madLibs.p4 -text "Noun: " ] -column 0 -row 4
    grid [ label .madLibs.p5 -text "Verb: " ] -column 0 -row 5
    grid [ label .madLibs.p6 -text "Adjective: " ] -column 0 -row 6
    grid [ label .madLibs.p7 -text "Noun: " ] -column 0 -row 7
    grid [ label .madLibs.p8 -text "Verb: " ] -column 0 -row 8
    grid [ label .madLibs.p9 -text "Noun: " ] -column 0 -row 9
    grid [ label .madLibs.p10 -text "Verb: " ] -column 0 -row 10
  }
  if {$randNum == 1} {
    grid [ label .madLibs.p1 -text "Animals (pl.): " ] -column 0 -row 1
    grid [ label .madLibs.p2 -text "Feeling: " ] -column 0 -row 2
    grid [ label .madLibs.p3 -text "Things (pl.): " ] -column 0 -row 3
    grid [ label .madLibs.p4 -text "A Professional (like 'Baker': " ] -column 0 -row 4
    grid [ label .madLibs.p5 -text "Clothing Item: " ] -column 0 -row 5
    grid [ label .madLibs.p6 -text "Things (pl.): " ] -column 0 -row 6
    grid [ label .madLibs.p7 -text "Name: " ] -column 0 -row 7
    grid [ label .madLibs.p8 -text "Place: " ] -column 0 -row 8
    grid [ label .madLibs.p9 -text "Verb ending in -ing: " ] -column 0 -row 9
    grid [ label .madLibs.p10 -text "Food: " ] -column 0 -row 10
  }
  if {$randNum == 2} {
    grid [ label .madLibs.p1 -text "Things (pl.): " ] -column 0 -row 1
    grid [ label .madLibs.p2 -text "Adjective: " ] -column 0 -row 2
    grid [ label .madLibs.p3 -text "Song Title: " ] -column 0 -row 3
    grid [ label .madLibs.p4 -text "A Celebrity: " ] -column 0 -row 4
    grid [ label .madLibs.p5 -text "Feeling: " ] -column 0 -row 5
    grid [ label .madLibs.p6 -text "Verb: " ] -column 0 -row 6
    grid [ label .madLibs.p7 -text "Place: " ] -column 0 -row 7
    grid [ label .madLibs.p8 -text "Food: " ] -column 0 -row 8
    grid [ label .madLibs.p9 -text "Things (pl.): " ] -column 0 -row 9
    grid [ label .madLibs.p10 -text "Name: " ] -column 0 -row 10
  }
}

proc showStory {num a1 a2 a3 a4 a5 a6 a7 a8 a9 a10} {
  #grid [ label .madLibs.story -text $num ] 
  if {$num == 0} {
    set s1 "Today a "
    set s2 " named "
    set s3 " came to our school to talk to us about her job. She said the most important \
      skill you need to know to do her job is to be able to "
    set s4 " around a "
    set s5 " "
    set s6 ". She said it was easy for her to learn her job because she loved to "
    set s7 " when she was my age - and that helps a lot! If you're considering her \
      profession, I hope you can be near a "
    set s8 " "
    set s9 ". That's very important! If you get too distracted in that situation you \
      won't be able to "
    set s10 " next to a "
    set s11 "!"
    grid [ label .madLibs.story -text "$s1 $a1 $s2 $a2 $s3 $a3 $s4 $a4 $s5 $a5 $s6 $a6 \
      $s7 $a7 $s8 $a8 $s9 $a9 $s10 $a10" ] -columnspan 2
  }
}

main
