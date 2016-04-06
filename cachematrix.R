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

## cacheSolve: This function finds the Inverse of a Matrix
## using the conventional solve function on the first run
## and using a the cached value in subsequent run(s)

cacheSolve <- function(x, ...) {
    m = x$getsolv()  #returns the stored value of the matrix inverse - or NULL
    if(!is.null(m)) { #if Cached available, retrieved cached matrix
        message("getting cached data")
        return(m)
    }
    # if there's no cached matrix inverse 
    data <- x$get()  #get the matrix on which to calculate the inverse
    m <- solve(data, ...) #solve the conventional way
    x$setsolv(m)  #store the calulated matrix inverse to the "special" matrix object
    m
}           

