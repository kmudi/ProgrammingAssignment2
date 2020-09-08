## Put comments here that give an overall description of what your
## functions do

## Write a short comment describing this function
## Setting the input x as a matrix
## Setting the solved value "inv" as a null
## using the setInverse function to set the inverse of the matrix 
## and getInverse to get the inverse. 
makeCacheMatrix <- function(x = matrix()) {
  inv <- NULL
  set <- function(y){
    x <<- y
    inv <<- NULL
  }
  get <- function()x
  setInverse <- function(inverse) inv <<- inverse
  getInverse <- function() inv 
  list(set = set, get = get, 
       setInverse = setInverse, 
       getInverse = getInverse)

}


## Write a short comment describing this function
##returning the inverse of x through inv 
cacheSolve <- function(x, ...) {
       
  inv <- x$getInverse()
  if(!is.null(inv)){
    message("getting cached data")
    return(inv)
  }
  mat <- x$get()
  inv <- solve(mat,...)
  x$setInverse(inv)
  inv
}
