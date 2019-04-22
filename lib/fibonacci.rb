# Computes the nth fibonacci number in the series starting with 0.
# fibonacci series: 0 1 1 2 3 5 8 13 21 ...
# e.g. 0th fibonacci number is 0
# e.g. 1st fibonacci number is 1
# ....
# e.g. 6th fibonacci number is 8

# Time complexity: 0(n), where the program only loops through it n times (well, n - 2 times because the first few things are hardcoded cases), was wondering if it was better to do it with recursion? but that would run it with recursion instead of saving everything in an array and indexing it, but I think that would run more times?
# Space complexity: constant, although you have to initialize space for an array

def fibonacci(n)
  raise ArgumentError if n == nil || n < 0
  return 0 if n == 0
  return 1 if n == 1
  arr = [0, 1]
  i = 1
  until i == n
    arr[i + 1] = arr[i] + arr[i - 1]
    i += 1
  end
  return arr[i]
end
