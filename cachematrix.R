## This function looks for the cache and creates if it does not already exist. Also creates a list of needed functions for later.

makeCacheMatrix <- function(x = matrix()) {
        s <- NULL
        set <- function (y) {
                x<<- Y       
                s<<- NULL      ## restores Null
        }
        get <- function()x
        solveMatrix <- function(mean) s <<- solve  ##function for inverting the matrix
        getInvertMatrix <- function() s   ## creates spot for new Inverted matrix to go
        list(set = set, get = get,  solveMatrix = solveMatrix, getInvertMatrix = getInvertMatrix)  ## Puts it all together
                    
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
