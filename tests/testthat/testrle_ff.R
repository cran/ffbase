
library(testthat)
library(ff)

context("rle_ff")

test_that("rle_ff works", {
    n1 <- 3
    n2 <- 1E6
    a  <- ffrep.int(rep(1:4, each=n1), n2)
    c1 <- rle_ff(a)
    expect_true(all(c1$lengths == n1))
    expect_true(all(table(c1$values) == n2))
    
    n1 <- 4
    n2 <- 1E6
    a  <- ffrep.int(rep(1:4, each=n1), n2)
    c1 <- rle_ff(a)
    expect_true(all(c1$lengths == n1))
    expect_true(all(table(c1$values) == n2))
    
})

