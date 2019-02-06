// [[Rcpp::depends(RcppEigen)]]
#include <Rcpp.h>
#include <RcppEigen.h>
#include "meta_header.hpp"

// [[Rcpp::export]]
Rcpp::List hello_world() {
    Rcpp::Rcout << "Hello World" << std::endl;

    return(Rcpp::List(Rcpp::Named("something") = 0));
}
