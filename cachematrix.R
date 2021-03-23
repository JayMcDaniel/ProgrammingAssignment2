#jay mcdaniel - programming assignment 2

## creates a special matrix list object that can cache its inverse
makeCacheMatrix <- function(x = matrix()) {
  list(matrix = x, inverse = NULL)
}


## This function computes the inverse of the special "matrix" returned by makeCacheMatrix above. If the inverse has already been calculated (and the matrix has not changed), then the cachesolve should retrieve the inverse from the cache.
cacheSolve <- function(matrix_obj) {
  
  if (!is.null(matrix_obj$inverse)) {
    message("retrieving inverse from cache")
    
    matrix_obj
  } else{
    message("creating new inverse and caching")
    
    matrix_obj$inverse<- solve(matrix_obj$matrix)
    matrix_obj
  }
  
}


my_matrix <- matrix(c(3, 4, 1, 4, 8, 2, 7, 2, 0), nrow = 3, ncol = 3)

#turn matrix into a list with matrix and inverse properties
my_matrix_obj <- makeCacheMatrix(my_matrix)
my_matrix_obj


#first time, creates a new inverse
my_matrix_obj <- cacheSolve(my_matrix_obj)
my_matrix_obj
my_matrix_obj$inverse


#second time, getting inverse from cache
my_matrix_obj_2 <- cacheSolve(my_matrix_obj)
my_matrix_obj_2
