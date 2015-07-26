makeCacheMatrix <- function(x = matrix()) {
  m<-NULL
  set<-function(y){
  x<<-y
  m<<-NULL
}
get<-function() x
setMatrix<-function(solve)
m<<- solve
getMatrix<-function() m
list(set=set, get=get,
   setMatrix=setMatrix,
   getMatrix=getMatrix)
}

cacheSolve <- function(x=matrix(), ...) {
    m<-x$getMatrix()
    if(!is.null(m)){
      message("Your matrix is being processed")
      return(m)
    }
    matrix<-x$get
    m<-solve(matrix, ...)
    x$setMatrix(m)
    m
}
