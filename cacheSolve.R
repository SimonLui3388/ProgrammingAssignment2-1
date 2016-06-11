# cacheSolve: This function computes the inverse of the special "matrix" 
# returned by makeCacheMatrix function. 
# If the inverse has already been calculated (and the matrix has not changed), 
# then the cachesolve should retrieve the inverse from the cache.


cacheSolve <- function(x, ...) {
  inv_matrix <- x$getinverse()
  if(!is.null(inv_matrix)) {
    message("getting cached data")
    return(inv_matrix)
  }
  data <- x$get()
  inv_matrix <- solve(data, ...)
  x$setinverse(inv_matrix)
  inv_matrix
}