NSUInteger ICKFib(NSUInteger n) {
  
  // edge cases:
  if (n == 0 || n == 1) {
    return n;
  }
  
  // we'll be building the fibonacci series from the bottom up
  // so we'll need to track the previous 2 numbers at each step
  NSUInteger prevPrev = 0;  // 0th fibonacci
  NSUInteger prev = 1;      // 1st fibonacci
  NSUInteger current = 0;   // declare and initialize current
  
  for (NSUInteger i = 1; i < n; i++) {
    
    // Iteration 1: current = 2nd fibonacci
    // Iteration 2: current = 3rd fibonacci
    // Iteration 3: current = 4th fibonacci
    // To get nth fibonacci ... do n-1 iterations.
    current = prev + prevPrev;
    prevPrev = prev;
    prev = current;
  }
  
  return current;
}
