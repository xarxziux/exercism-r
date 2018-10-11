source("./atbash-cipher.R")
library(testthat)

context("atbash-cipher")

test_that("Encode", {
  input <- "yes"
  expect_equal(atbash-cipher(input), "bvh")
})

test_that("Encode no", {
  input <- "no"
  expect_equal(atbash-cipher(input), "ml")
})

test_that("Encode OMG", {
  input <- "OMG"
  expect_equal(atbash-cipher(input), "lnt")
})

test_that("Encode spaces", {
  input <- "O M G"
  expect_equal(atbash-cipher(input), "lnt")
})

test_that("Encode mindblowingly", {
  input <- "mindblowingly"
  expect_equal(atbash-cipher(input), "nrmwy oldrm tob")
})

test_that("Encode numbers", {
  input <- "Testing,1 2 3, testing."
  expect_equal(atbash-cipher(input), "gvhgr mt123 gvhgr mt")
})

test_that("Encode deep thought", {
  input <- "Truth is fiction."
  expect_equal(atbash-cipher(input), "gifgs rhurx grlm")
})

test_that("Encode all the letters", {
  input <- "The quick brown fox jumps over the lazy dog."
  expect_equal(atbash-cipher(input), "gsvjf rxpyi ldmul cqfnk hlevi gsvoz abwlt")
})

message("All tests passed for exercise: atbash-cipher")

