## Put comments here that give an overall description of what your
## functions do

## Write a short comment describing this function

makeCacheMatrix <- function(x = matrix()) {  ##define the argument with default mode of "matrix"

         i <- NULL  ## initialize i as null
            set <- function(y) { ##define set of function to assign new
                    x <<- y ##value of matrix in parent enviroment
                    i <<- NULL ##reset i to null when there is new matrix
            }
            get <- function() x  ##define get function
            setmean <- function(inverse) i <<- inverse ## asiings values in parent enviroment
            getmean <- function() i ## get the value of i where called
            list(set = set, get = get, ##to refer
                 setinverse = setinverse,
                 getinverse = getinverse)

}


## Write a short comment describing this function

cacheSolve <- function(x, ...) {
        ## Return a matrix that is the inverse of 'x'
        i <- x$getinverse()
        if(!is.null(i)) {
                message("getting cached data")
                return(i)
        }
        data <- x$get()
        i <- solve(data, ...)
        x$setmean(i)
        i
}
