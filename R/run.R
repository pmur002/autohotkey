
## Run a program that opens a window and return the windowID of that window
openWindow <- function(command, timeout=5) {
    w1 <- windowList()

    shell(command, wait=FALSE)

    ## Loop (waiting for program window to open)
    time <- proc.time()
    found <- FALSE
    while (!found && (proc.time() - time)[3] < timeout) {
        ## Check the window list again
        w2 <- windowList()
        if (length(w2) > length(w1)) {
            wnew <- ! w2 %in% w1
            windowID <- w2[wnew]
            if (length(windowID) > 0) {
                if (length(windowID) > 1) {
                    warning("More than one window matched")
                    windowID <- windowID[1]
                }
                found <- TRUE
            }
        }
        Sys.sleep(.1)
    }

    if (!found) stop(paste("Failed to detect", command, "window"))

    windowID
}
