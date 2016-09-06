## Put comments here that give an overall description of what your
## functions do

## Equivalent to POJO with setter and getter in JAVA.

makeCacheMatrix <- function(x = matrix()) {
        m <- NULL
        set <- function(y) {
                x <<- y
                m <<- NULL
        }
        get <- function() x
        setInverse <- function(inv) m <<- inv
        getInverse <- function() m
        list(set = set, get = get, setInverse = setInverse, getInverse = getInverse)
}

## This function checks whether the inverse of the matrix already exists, if so, 
## it just prints the cached result otherwise it delegates the flow to makeCachedMatrix 
## function and calculates it's inverse using solve(X).

cacheSolve <- function(x, ...) {
        m <- x$getInverse()
        if(!is.null(m)) {
                message("Printing cached data")
                return(m)
        }
        data <- x$get()
        m <- solve(data,...)
        x$setInverse(m)
        m
        ## Return a matrix that is the inverse of 'x'
}
