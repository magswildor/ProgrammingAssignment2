# create a constructor fn which gets the inverse of a matrix.  the inverse is 
# the objective functon


# creates special 'vector' - a list containing a fn to set & get value of vec
# set the value of inverse, get value of inverse

makeCacheMatrix <- function(x = matrix()) {
  s <- NULL
  set <- function(y) {
    x <<- y
    s <<- NULL
  }
  get <- function() x
  setinverse <- function(solve) s <<- solve
  getinverse <- function() s
  list(set = set, get = get,
       setinverse = setinverse,
       getinverse = getinverse)
}

makeCacheMatrix <- function(x = matrix()) {
  
}


# This function calculates the inverse of the matrix if it has not already been
# calculated and stored in the cache

cacheSolve <- function(x, ...) {
  s <- x$getinverse()
  if(!is.null(s)) {
    message("getting cached data")
    return(s)
  }
  data <- x$get()
  s <- solve(data, ...)
  x$setinverse(s)
  s
}




