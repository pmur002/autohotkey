
## Create a window (by running a program) and return the window ID

ahkfile <- function(filename) {
    system.file("scripts", filename, package="autohotkey")
}

showDesktop <- function() {
    shell(ahkfile("minimizeAll.ahk"))
}

windowList <- function() {
    shell(ahkfile("listWindows.ahk"))
    readLines("clipboard", warn=FALSE)
}

focusWindow <- function(wid) {
    shell(paste(ahkfile("focusWindow.ahk"), wid))    
}

positionWindow <- function(wid, x, y, width, height) {
    shell(paste(ahkfile("positionWindow.ahk"), wid, x, y, width, height))
}

closeWindow <- function(wid) {
    shell(paste(ahkfile("closeWindow.ahk"), wid))
}

typeString <- function(string, delay=NULL, sep="\n") {
    shell(paste0(ahkfile("sendKeys.ahk"), " ", string))
}
