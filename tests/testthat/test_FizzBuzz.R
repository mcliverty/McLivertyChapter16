#Check that the length of the output is the same as the input n.
test_that('length of output is same as input n', {
  expect_equal(length(FizzBuzz(1:10)), 10 )
  expect_equal(length(FizzBuzz(5:10)), 6 )
  expect_equal(length(FizzBuzz(5:30)), 26 )
})
