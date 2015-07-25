## This function looks for the cache and creates if it does not already exist. Also creates a list of needed functions for later.

makeCacheMatrix <- function(x = matrix()) {
        s <- NULL
        set <- function (y) {
                x<<- Y       
                s<<- NULL      ## restores Null
        }
        get <- function()x
        solveMatrix <- function(solve) s <<- solve  ##function for inverting the matrix
        getInvertMatrix <- function() s   ## creates spot for new Inverted matrix to go
        list(set = set, get = get,  solveMatrix = solveMatrix, getInvertMatrix = getInvertMatrix)  ## Puts it all together
}

##  This function creates the inverse if it does not already exist. Checks for Null (already exist),

cacheSolve <- function(x, ...) {
        s <- x$getInvertMatrix()
        if(!is.null(s)){  ### Lets Person know result already created. 
                message("getting cached data")
                return(s)
        }
        stuff <- x$get()
        s <- solve(stuff, ...)
        x$solveMatrix(s) 
        return(s)  ## Return a matrix that is the inverse of 'x'
        
}
