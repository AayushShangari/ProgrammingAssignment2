## Put comments here that give an overall description of what your
## functions do

## Write a short comment describing this function

makeCacheMatrix <- function(x = matrix()) {
  xInverse <- NULL
  set <- function(y) {
    x <- y
    xInverse <<- NULL
  }
  get <- function() x
  setInverse <- function() xInverse <<- solve(x)
  getInverse <- function() xInverse
  list(get = get, set = set, getInverse = getInverse, setInverse = setInverse)
}


## Write a short comment describing this function

cacheSolve <- function(x, ...) {
        ## Return a matrix that is the inverse of 'x'
  myMatrix <- makeCacheMatrix(x)
  myMatrix$set(x)
  myMatrix$setInverse()
  myMatrix$getInverse()
}
