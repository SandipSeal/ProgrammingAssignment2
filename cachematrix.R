## Put comments here that give an overall description of what your
## functions do

## Write a short comment describing this function

## Below function takes a matrix as input and set the inverse of the matrix as NULL
## setMatrix function assigns value to the matix from an environment different from the one in which the function is defined.
## getMatrix returns the value of the matrix
## setInv assigns value to the x_inv variable and getInv retrieves the value assigned to the variable.
## The function returns a list with 4 functions

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
## This function returns the inverse of a matrix. The value is returned from environment variable ## if the inverse is already computed; otherwise it computes the inverse and returns the result
## and sets the value to the environment variable.


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

