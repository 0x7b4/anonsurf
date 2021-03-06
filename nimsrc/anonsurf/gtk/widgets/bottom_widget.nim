import gintro / [gtk, gobject]
import .. / ansurf_icons
import about_widget


proc makeBottomBar*(bSwitchWidget: Button): Box =
  let
    btnAbout = newButton("")
    imgAbout = newImageFromPixbuf(aboutIcon)
    bxBottomBar = newBox(Orientation.horizontal, 3)
  
  btnAbout.setImage(imgAbout)
  btnAbout.connect("clicked", onClickAbout)

  bxBottomBar.packStart(bSwitchWidget, false, true, 3)
  bxBottomBar.packEnd(btnAbout, false, true, 3)

  return bxBottomBar
