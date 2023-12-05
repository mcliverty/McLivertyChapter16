#Check that an error message shows for a negative, zero, or infinite value for n.
test_that('length of output is same as input n', {
  expect_error(FizzBuzz(-1) )
  expect_error(FizzBuzz(Inf))
  expect_error(FizzBuzz(-Inf))
})
