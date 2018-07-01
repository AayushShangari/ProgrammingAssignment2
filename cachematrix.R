## Put comments here that give an overall description of what your
## functions do

## Write a short comment describing this function

makeCacheMatrix <- function(x = matrix()) {
  xInverse <- NULL
  set <- function(y) { 
    x <- y                    ## setting the value of x
    xInverse <<- NULL         ## refreshing the inverse value
  }
  get <- function() x         ## returning the value of x
  setInverse <- function() xInverse <<- solve(x)   ## calculates and sets the inverse value
  getInverse <- function() xInverse                ## returns the inverse value
  list(get = get, set = set, getInverse = getInverse, setInverse = setInverse)  ## returns the list of required functions
}


## Write a short comment describing this function

cacheSolve <- function(x, ...) {
                                     ## Return a matrix that is the inverse of 'x'
  myMatrix <- makeCacheMatrix(x)     ##creates the special matrix
  myMatrix$set(x)                    ## sets the value of the matrix
  myMatrix$setInverse()              ## calculates and sets the value of the inverse
  myMatrix$getInverse()              ## gets and returns the value of the inverse
}
