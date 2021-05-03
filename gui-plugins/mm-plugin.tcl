# MM-plugin
# Sets menu color based on the host on which the pd core is running
# FGH 2021-05-01

::pdwindow::post "Running on host "
::pdwindow::error $::host
::pdwindow::post "\n"


proc mm_set_menu_color {bg abg} {
    $::pdwindow_menubar configure -background $bg -activebackground $abg
    $::pdwindow_menubar.file configure -background $bg -activebackground $abg
    $::pdwindow_menubar.edit configure -background $bg -activebackground $abg
    $::pdwindow_menubar.put configure -background $bg -activebackground $abg
    $::pdwindow_menubar.find configure -background $bg -activebackground $abg
    $::pdwindow_menubar.media configure -background $bg -activebackground $abg
    $::pdwindow_menubar.window configure -background $bg -activebackground $abg
    $::pdwindow_menubar.help configure -background $bg -activebackground $abg
}

switch $::host {
    gui.local { mm_set_menu_color DarkSeaGreen3  DarkSeaGreen1 }
    core.local { mm_set_menu_color SkyBlue3 SkyBlue1 }
    dac.local  { mm_set_menu_color burlywood3  burlywood1 }
    localhost  { mm_set_menu_color thistle3 thistle1 }
}


