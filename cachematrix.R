## Put comments here that give an overall description of what your
## functions do

## Write a short comment describing this function

makeCacheMatrix <- function(x = matrix()) {
  Cache=NULL
  set<-function(y){
    x<<-y
    Cache<<-NULL
  }
  get<-function(){
    x
  }
  setInverse<-function(Inverse){
    x<<-Inverse
  }
  getInverse<-function() Cache
  list(set=set,get=get,
       setInverse=setInverse,
       getInverse=getInverse)
}


## Write a short comment describing this function

cacheSolve <- function(x, ...) {
        ## Return a matrix that is the inverse of 'x'
    Cache=x$getInverse()
    if (!is.null(Cache)){
        message("getting cached data")
        return(Cache)
    }
    data=x$get()
    Cache=solve(data)
    x$setInverse(Cache)
    Cache
}
