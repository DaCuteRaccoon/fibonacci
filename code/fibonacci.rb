def fib(n)
  
  
  # Edge cases:
  if n < 0
    raise ArgumentError, "Index was negative. No such thing as a negative index in a series."
  elsif n == 0 || n == 1
    n
  else
    
    # We'll be building the fibonacci series from the bottom up,
    # so we'll need to track the previous 2 numbers at each step.
    prev_prev = 0  # 0th fibonacci
    prev = 1       # 1st fibonacci
    
    (n - 1).times do
      
      # Iteration 1: prev = 2nd fibonacci.
      # Iteration 2: prev = 3rd fibonacci.
      # Iteration 3: prev = 4th fibonacci.
      # To get nth fibonacci ... do n - 1 iterations.
      
      prev_prev, prev = prev, prev + prev_prev
    end
    
    prev
  end
end
