## Put comments here that give an overall description of what your
## functions do

## Write a short comment describing this function

makeCacheMatrix <- function(x = matrix()) {
    
    x_inv = NULL
    
    setMatrix = function (y){
        x <<- y
        x_inv <<- NULL
    }
    
    getMatrix = function () x
    
    setInv = function(inv) x_inv <<- inv
    
    getInv = function() x_inv

    list (setMatrix = setMatrix, getMatrix = getMatrix, setInv = setInv, getInv = getInv)

}


## Write a short comment describing this function

cacheSolve <- function(x, ...) {
        ## Return a matrix that is the inverse of 'x'
    
    x_inv = x$getInv()
    
    if(!is.null(x_inv)){
        message("getting cached data")
        return(x_inv)
    }
    m = x$getMatrix()
    x$setInv(solve(m))
    x$getInv()
    
}

