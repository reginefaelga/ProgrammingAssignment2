## The two functions can be used to cache the inverse of a matrix.

## Contains a set of functions needed to setup the makeCacheMatrix function.   

makeCacheMatrix <- function(x = matrix()) {
    c <- NULL
    set <- function(y) {
        x <<- y
        c <<- NULL
    }
    get <- function() x
    setinverse <- function(inverse) c <<- mean
    getinverse <- function() c
    list(set = set, get = get, setinverse = setinverse, getinverse = getinverse)
}


## This function computes the inverse of the matrix returned by the first function.

cacheSolve <- function(x, ...) {
        ## Return a matrix that is the inverse of 'x'
    c <- x$getinverse()
    if(!is.null(c)) {
            message("getting cached data")
            return(c)
    }
    data <- x$get()
    c <- solve(data, ...)
    x$setinverse(c)
    c
}


