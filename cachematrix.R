<<<<<<< HEAD
## Assignment: Caching the Inverse of a Matrix
## Matrix inversion is usually a costly computation and there may be some benefit to 
## caching the inverse of a matrix rather than compute it repeatedly 
## functions for storing and caching the inverse matrix

## makeCacheMatrix: This function creates a special "matrix" object that can cache its inverse.

makeCacheMatrix <- function(x = matrix()) {
  invertedmatrix <- NULL
  set <- function(y) {
    x <<- y
    inv <<- NULL
  }
  get <- function() x
  setInvMatrix <- function(inverse) invertedmatrix <<- inverse
  getInvMatrix <- function() invertedmatrix
  list(set = set, get = get, setInvMatrix = setInvMatrix, getInvMatrix = getInvMatrix)
}


##cacheSolve: This function computes the inverse of the special "matrix" returned by makeCacheMatrix above. 
##If the inverse has already been calculated (and the matrix has not changed), 
##then the cachesolve should retrieve the inverse from the cache.

cacheSolve <- function(x, ...) {
        ## Return a matrix that is the inverse of 'x'
  invertedmatrix <- x$getInvMatrix()
  if (!is.null(invertedmatrix)) {
    return(inv)
  }
  solvedMatrix <- x$get()
  invertedmatrix <- solve(solvedMatrix, ...)
  x$setInvMatrix(invertedmatrix)
  invertedmatrix
}
##usage example for reviewing students
## source("ProgrammingAssignment2/cachematrix.R") if from your working folder.
## stored_matrix <- makeCacheMatrix(matrix(size , row , col)) ,
## stored_matrix$get()

##sample output
##> stored_matrix <- makeCacheMatrix(matrix(c(1,0,-2,3,1,-2,-5,-1,9),3,3))
##> stored_matrix$get()
##[,1] [,2] [,3]
##[1,]    1    3   -5
##[2,]    0    1   -1
##[3,]   -2   -2    9
##> stored_matrix$getInvMatrix()
##NULL
##> cacheSolve(stored_matrix)
##[,1]       [,2]      [,3]
##[1,] 2.3333333 -5.6666667 0.6666667
##[2,] 0.6666667 -0.3333333 0.3333333
##[3,] 0.6666667 -1.3333333 0.3333333
##> stored_matrix$getInvMatrix()
##[,1]       [,2]      [,3]
##[1,] 2.3333333 -5.6666667 0.6666667
##[2,] 0.6666667 -0.3333333 0.3333333
=======
## Assignment: Caching the Inverse of a Matrix
## Matrix inversion is usually a costly computation and there may be some benefit to 
## caching the inverse of a matrix rather than compute it repeatedly 
## functions for storing and caching the inverse matrix

## makeCacheMatrix: This function creates a special "matrix" object that can cache its inverse.

makeCacheMatrix <- function(x = matrix()) {
  invertedmatrix <- NULL
  set <- function(y) {
    x <<- y
    inv <<- NULL
  }
  get <- function() x
  setInvMatrix <- function(inverse) invertedmatrix <<- inverse
  getInvMatrix <- function() invertedmatrix
  list(set = set, get = get, setInvMatrix = setInvMatrix, getInvMatrix = getInvMatrix)
}


##cacheSolve: This function computes the inverse of the special "matrix" returned by makeCacheMatrix above. 
##If the inverse has already been calculated (and the matrix has not changed), 
##then the cachesolve should retrieve the inverse from the cache.

cacheSolve <- function(x, ...) {
        ## Return a matrix that is the inverse of 'x'
  invertedmatrix <- x$getInvMatrix()
  if (!is.null(invertedmatrix)) {
    return(inv)
  }
  solvedMatrix <- x$get()
  invertedmatrix <- solve(solvedMatrix, ...)
  x$setInvMatrix(invertedmatrix)
  invertedmatrix
}
##usage example for reviewing students
## source("ProgrammingAssignment2/cachematrix.R") if from your working folder.
## stored_matrix <- makeCacheMatrix(matrix(size , row , col)) ,
## stored_matrix$get()

##sample output
##> stored_matrix <- makeCacheMatrix(matrix(c(1,0,-2,3,1,-2,-5,-1,9),3,3))
##> stored_matrix$get()
##[,1] [,2] [,3]
##[1,]    1    3   -5
##[2,]    0    1   -1
##[3,]   -2   -2    9
##> stored_matrix$getInvMatrix()
##NULL
##> cacheSolve(stored_matrix)
##[,1]       [,2]      [,3]
##[1,] 2.3333333 -5.6666667 0.6666667
##[2,] 0.6666667 -0.3333333 0.3333333
##[3,] 0.6666667 -1.3333333 0.3333333
##> stored_matrix$getInvMatrix()
##[,1]       [,2]      [,3]
##[1,] 2.3333333 -5.6666667 0.6666667
##[2,] 0.6666667 -0.3333333 0.3333333
>>>>>>> origin/master
##[3,] 0.6666667 -1.3333333 0.3333333