## Put comments here that give an overall description of what your
## functions do

## Write a short comment describing this function

makeCacheMatrix <- function(x = matrix()) {
  inv<- NULL
set <-function(y){
  x<<-y
  inv <<- NULL
}

get <- function() x
setInverse <- function() inv <<- solve(x) #calculate the inverse
getInverse <- function() inv

list(set = set,
     get = get,
     setInverse = setInverse,
     getInverse = getInverse)
}



## Write a short comment describing this function

cacheSolve <- function(x, ...) {
        inv <- x$getInverve()
        if(!is.null(inv)){
        message("getting cached data")
        return(inv)
        }
        data <- x$get()
        inv <- solve(data, ...)
        x$setInverse(inv)
       inv
}

