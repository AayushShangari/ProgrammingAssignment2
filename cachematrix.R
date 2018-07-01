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
  inverseMatrix <- x$getInverse() 
  
  if(!is.null(inverseMatrix)) { 
    message("getting cached data") 
    return(inverseMatrix) 
  } 
  
  data <- x$get() 
  inverseMatrix <- solve(data, ...)      ## calculates the value of the inverse
  x$setInverse(inverseMatrix)            ## Sets the value of the inverse
  inverseMatrix                          
}
