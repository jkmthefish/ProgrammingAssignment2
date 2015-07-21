## This function looks for the cache and creates if it does not already exist. 

makeCacheMatrix <- function(x = matrix()) {

}


## IF it doesn't already exist, This function creates the inverse if it does not already exist. 
if(!is.null(m)){
        message("getting cached data")
        return(m)
}


cacheSolve <- function(x, ...) {
        newMatrix <- solve((makeCacheMatrix))## Return a matrix that is the inverse of 'x'
        return(newMatrix)
}
