#' Find number of centroids
#'
#' findK will loop through a range of Ks and will plot the cost
#' 
#' @param X A matrix where each column is a vectorized image
#' @param nstart passed to `stats::kmeans()`
#' @param iter.max passed to `stats::kmeans()`
#' @param n_K max number of clusters
#' 
#' @return Plots K versus cost.
#' 
#' @export
findK <- function(X, nstart=25, iter.max=10, n_K=15){
# Initlizize costs
cost <- rep(0, n_K)

for(k in  1:n_K) cost[k] <- stats::kmeans(X, k, iter.max=iter.max, nstart=nstart)$tot.withinss
plot(1:n_K, cost, xlab="K", ylab="total within ss", type="b")
}
