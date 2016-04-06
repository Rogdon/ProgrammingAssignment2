## R Programming Assignment 2 - Rogdon
## Calculate Inverse matrix using caching 



## makeCacheMatrix: This function creates a special "matrix" object 
## that can cache its inverse
## Make Cache Matrix - return a List

#    set the value of the matrix
#    get the value of the matrix
#    set the value of the matrix inverse
#    get the value of the matrix inverse
makeCacheMatrix <- function(x = matrix()) {
    m <- NULL
#    <<- operator which can be used to assign a value to an object in an 
#    environment that is different from the current environment    
    set <- function(y) {
        x <<- y
        m <<- NULL
    } 
    get <- function() x    #Return the matrix
    setsolv <- function(solvec) m <<- solvec  #function stores cached matrix inverse
    getsolv <- function() m  #function returns the stored value of the matrix inverse
    list(set = set, get = get,
         setsolv = setsolv,
         getsolv = getsolv)
}

## Write a short comment describing this function

cacheSolve <- function(x, ...) {
        ## Return a matrix that is the inverse of 'x'
}
