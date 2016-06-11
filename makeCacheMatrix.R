## The makeCacheMatrix function creates a special "matrix",
## which is really a list containing a function to
## 1. set the value of the matrix
## 2. get the value of the matrix
## 3. set the value of the inverse matrix
## 4. get the value of the inverse matrix


makeCacheMatrix <- function(x = matrix()) {
  inv_matrix <- NULL
  set <- function(y) {
    x <<- y
    inv_matrix <<- NULL
  }
  get <- function() x
  setinverse <- function(solve) inv_matrix <<- solve
  getinverse <- function() inv_matrix
  list(
    set = set,
    get = get,
    setinverse = setinverse,
    getinverse = getinverse)
}
