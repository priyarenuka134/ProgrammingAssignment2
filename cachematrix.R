## Put comments here that give an overall description of what your
## functions do

## Write a short comment describing this function

makeCacheMatrix <- function(x = matrix()) {
  inv <- NULL
  set <- function(y) {
    x <<- y
    inv <<- NULL
  }
  get <- function() x
  setInverse <- function() inv <<- solve(x)
  getInverse <- function() inv
  list(set = set,
       get = get,
       setInverse = setInverse,
       getInverse = getInverse)
}

cacheSolve <- function(x) {
  inv <- x$getInverse()
  mat <- x$get()
  inv <- solve(mat, inv)
  x$setInverse(inv)
  inv
}
funs <- makeCacheMatrix()
funs$set(matrix(5:8, 2))
funs$get()
funs$setInverse()
funs$getInverse()

