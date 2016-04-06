## R Programming Assignment 2 - Rogdon
## Calculate Inverse matrix using caching 

#    set the value of the matrix
#    get the value of the matrix
#    set the value of the matrix inverse
#    get the value of the matrix inverse

makeCacheMatrix <- function(x = matrix()) {
    m <- NULL
    set <- function(y) {
        x <<- y
        m <<- NULL
    } 
    get <- function() x
    setinv <- function(solvent) m <<- solvent
    getinv <- function() m
    list(set = set, get = get,
         setinv = setinv,
         getinv = getinv)
}

## Write a short comment describing this function

cacheSolve <- function(x, ...) {
        ## Return a matrix that is the inverse of 'x'
}
