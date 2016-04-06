## cacheSolve: This function finds the Inverse of a Matrix
## using the conventional solve function on the first run
## and using a the cached value in subsequent run(s)

cacheSolve <- function(x, ...) {
    m = x$getsolv()  #
    if(!is.null(m)) {
        message("getting cached data")
        return(m)
    }
    data <- x$get()  #get the matrix on which to calculate the inverse
    m <- solve(data, ...)
    x$setsolv(m)  
    return(m)
}           

