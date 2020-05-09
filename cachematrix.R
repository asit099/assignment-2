## my first function converts the provided matrix to cached and the other inverses it


## makeCacheMatrix uses a function uses set function to convert the matrix into cached matrix

makeCacheMatrix <- function(x = matrix()) {
  j <- NULL
  set <- function(y){
  x <<- y
  j <<- NULL
  }
  get <- function()x
  setInverse <- function(inverse) j <<- inverse
  getInverse <- function() j 
  list(set = set, get = get, 
  setInverse = setInverse, 
  getInverse = getInverse)
}


## this function is used in the inversion of the matrix

cacheSolve <- function(x, ...) {
## inverse matrix of x
  j <- x$getInverse()
  if(!is.null(j)){
  message("getting cached data")
  return(j)
  }
  mat <- x$get()
  j <- solve(mat,...)
  x$setInverse(j)
  j
}
        ## Return a matrix that is the inverse of 'x'

